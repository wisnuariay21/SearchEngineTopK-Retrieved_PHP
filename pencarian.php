<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Pencarian Jamtangan.com</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/sl-slide.css">
    <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body>
    <!--Header-->
    <header class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a id="logo" class="pull-left" href="index.php"></a>
                <div class="nav-collapse collapse pull-right">
                    <ul class="nav">
                        <li ><a href="crawling_jamtangan.php">Crawling Data</a></li>
                        <li class="active"><a href="pencarian.php">Pencarian</a></li>
                    </ul>        
                </div>
            </div>
        </div>
    </header>
    <!-- /header -->

    <!--Services-->
    <section id="services">
        <div class="container">
            <div class="center gap">
                <h3>Pencarian Nilai Similaritas Jam Tangan</h3>
                <form method="POST" action="">
				<p class="lead">Input Keyword <input type="text" name="keyword">
                <p class="lead">Masukan Nilai K <input type="number" name="quantity">
				<input type="submit" name="search" value="Search"><br>
				<b><font size="4">Pilih Metode Similaritas : </b></font> 
					<input type="radio" name="metode" value="Manhattan" checked> Manhattan
					<input type="radio" name="metode" value="Cosine"> Cosine <br>
				</p>
                

				</form>

                    <?php
                    

                    require_once __DIR__ . '/vendor/autoload.php';
                    use Phpml\FeatureExtraction\TokenCountVectorizer;
                    use Phpml\Tokenization\WhitespaceTokenizer;
                    use Phpml\FeatureExtraction\TfIdfTransformer;
                    use Phpml\Math\Distance\Manhattan;
                    include_once('simple_html_dom.php');
                    $stemmerFactory= new \Sastrawi\Stemmer\StemmerFactory();
                    $stemmer=$stemmerFactory->createStemmer();
            
                    $stopwordFactory= new \Sastrawi\StopWordRemover\StopWordRemoverFactory();
                    $stopword=$stopwordFactory->createStopWordRemover();
                    if(isset($_POST["search"]))
                    {
                        echo 'Rekomendasi pencarian: <br>
                        <table border="2px">
                            <tr>
                                <th>Nilai Jam Tangan</th>
                                <th>Gambar</th>
                                <th>Harga</th>
                                <th>Nilai Similiaritas</th>
                            </tr>';
            
                        $radioVal = $_POST["metode"];
            
                        $sample_data = [];
                        $nama = [];
                        $gambar = [];
                        $harga = [];
                        $ekspansi = [];
                        $data_bersih = [];
            
                        $servername = "localhost";
                        $username = "root";
                        $password = "";
                        $dbname = "jamtangan";
            
                        $conn = new mysqli($servername, $username, $password, $dbname);
            
                        if ($conn->connect_error) {
                            die("Connection failed: " . $conn->connect_error);
                        }
            
                        $sql = "SELECT nama,gambar,harga,databersih FROM jamtangan";
                        $result = $conn->query($sql);
            
                        if ($result->num_rows > 0) {
                        while($row = $result->fetch_assoc()) {
                            array_push($nama,$row["nama"]);
                            array_push($gambar,$row["gambar"]);
                            array_push($harga,$row["harga"]);
                            array_push($sample_data,$row["databersih"]);
                        }
                        } 
                        else 
                        {
                            echo "0 results";
                        }
            
                        $outputStemming=$stemmer->stem($_POST["keyword"]);
                        $_POST["keyword"]=$stopword->remove($outputStemming);   
            
                        array_push($sample_data,$_POST["keyword"]);
            
                        $tf = new TokenCountVectorizer(new WhitespaceTokenizer());
                        $tf->fit($sample_data);
                        $tf->transform($sample_data);
                        $vocabulary = $tf->getVocabulary();
                        $tfidf = new TfIdfTransformer($sample_data);
                        $tfidf->transform($sample_data);
            
                        if ($radioVal == "Manhattan")
                        {
                            $query_idx = count($sample_data);
                            $manhattan = new Manhattan();
                            for($i=0;$i<$query_idx-1;$i++)
                            {
                                $hasil = $manhattan->distance($sample_data[$i], $sample_data[$query_idx-1]) ;
                                $sql = "UPDATE jamtangan SET similaritas = ".$hasil." WHERE nama = '".$nama[$i]."'";    
                                if ($conn->query($sql) === TRUE) {
                                  
                                } 
                                else 
                                {
                                  echo "Error updating record: " . $conn->error;
                                }
                            }
                            $sql = "SELECT * FROM jamtangan ORDER BY similaritas";
                        }
                        else if($radioVal == "Cosine")
                        {
                            $query_idx = count($sample_data);
                            for ($i=0;$i<$query_idx-1;$i++)
                            {
                                $hasil_atas = 0.0;
                                $hasil_wkq = 0.0;
                                $hasil_wkj = 0.0;
                                for ($x=0; $x<count($sample_data[$i]); $x++)
                                {
                                    $hasil_atas += $sample_data[$query_idx-1][$x] * $sample_data[$i][$x];
                                    $hasil_wkq += pow($sample_data[$query_idx-1][$x],2);
                                    $hasil_wkj += pow($sample_data[$i][$x],2);
                                }
                                $hasil = $hasil_atas / sqrt($hasil_wkq * $hasil_wkj);
            
                                $sql = "UPDATE jamtangan SET similaritas = ".$hasil." WHERE nama = '".$nama[$i]."'";    
                                if ($conn->query($sql) === TRUE) {
                                  
                                } else {
                                  echo "Error updating record: " . $conn->error;
                                }
                            }
                            $sql = "SELECT * FROM jamtangan ORDER BY similaritas DESC";
                        }
            
                        if($_POST["quantity"] == null)
                        {
                            $_POST["quantity"] = 5;
                        }
                        $k = $_POST["quantity"];      
            
                        
                        $result = $conn->query($sql);
                        if ($result->num_rows > 0) {
            
                            while($row = $result->fetch_assoc()) {
            
                                echo "<tr><td>".$row["nama"]."</td><td><img src='".$row["gambar"]."'></td><td>".$row["harga"]."</td><td>".$row["similaritas"]."</td></tr>";
            
                                array_push($data_bersih,$row["databersih"]);
                            }
            
                            for ($i=0; $i <$k ; $i++) 
                            {                         
                                array_push($ekspansi,$data_bersih[$i]);
                            }
            
            
                            $tf = new TokenCountVectorizer(new WhitespaceTokenizer());
                            $tf->fit($ekspansi);
                            $tf->transform($ekspansi);
                            $vocabulary = $tf->getVocabulary();
                            $tfidf = new TfIdfTransformer($ekspansi);
                            $tfidf->transform($ekspansi);
            
                            
                            $cek_tf = [];
                            for ($i=0; $i <count($ekspansi[0]) ; $i++) { 
                                $tinggi = 0;
                                for ($j=0; $j <$k ; $j++) { 
                                    $tinggi += $ekspansi[$j][$i];
                                }
                                array_push($cek_tf,$tinggi);
                            }
                            $count = 0;                
                            while ($count != $k)
                            {
                                for ($i=0; $i < count($cek_tf) ; $i++) { 
                                    if($cek_tf[$i] == max($cek_tf))
                                    {
                                        echo '<form method="POST" action="">
                                                <p class="lead"><input type="hidden" name="keyword" value="'.$_POST["keyword"] . " " . $vocabulary[$i] .'">
                                                    <input type="hidden" name="quantity" value="'.$_POST["quantity"].'">
                                                    <input type="submit" name="search" value="'.$_POST["keyword"] . " " . $vocabulary[$i] .'"><br>     
                                                    <input type="hidden" name="metode" value="'.$radioVal.'">                 
                                                </p>
                                            </form>';
            
            
                                        $cek_tf[$i] = 0;
                                        $count++;
                                        break;
                                    }                   
                                }
                            }               
            
                           
                            
                        } 
                        else 
                        {
                            echo "0 results";
                        }
                                    
                    }
                ?>
                    
                </table>
    </body>
</html>