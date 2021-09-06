<!DOCTYPE html>
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
</body>
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
                        <li class="active"><a href="crawling_jamtangan.php">Crawling Data</a></li>
                        <li><a href="pencarian.php">Pencarian</a></li>
                    </ul>        
                </div>
            </div>
        </div>
    </header>
    <!-- /header -->

    <section id="services">
        <div class="container">
            <div class="center gap">
                <h3>Crawling Data Jam Tangan</h3>
                <form method="POST" action="">
				<p class="lead">Input Keyword <input type="text" name="keyword"> <input type="submit" name="crawls" value="CRAWLS">
				</p>
				</form>
                
                    <?php
                    if(isset($_POST["crawls"]))
                    {
                      echo "<table border='2px'>
                              <tr>
                                <th>Gambar</th>
                                <th>Nama Jam</th>
                                <th>Harga</th>
                                <th>Data Bersih</th>
                              </tr>
                            ";
                      require_once __DIR__ . '/vendor/autoload.php';
                      include_once('simple_html_dom.php');
                      $stemmerFactory= new \Sastrawi\Stemmer\StemmerFactory();
                      $stemmer=$stemmerFactory->createStemmer();
                    
                        $stopwordFactory= new \Sastrawi\StopWordRemover\StopWordRemoverFactory();
                        $stopword=$stopwordFactory->createStopWordRemover();
                    
                        $servername = "localhost";
                        $username = "root";
                        $password = "";
                        $dbname = "jamtangan";
                    
                        $conn = new mysqli($servername, $username, $password, $dbname);
                    
                        $nama =[];
                        $cek = false;
                        $cekDataKosong = true;
                        if ($conn->connect_error) {
                          die("Connection failed: " . $conn->connect_error);
                        }
                    
                        $sql = "SELECT nama FROM jamtangan";
                        $result = $conn->query($sql);
                    
                        if ($result->num_rows > 0) 
                        {
                        while($row = $result->fetch_assoc()) {
                            array_push($nama,$row["nama"]);
                        }
                        } else {
                            echo "0 results";
                        }
                    
                    
                    
                      $teks=str_replace(" ","+",$_POST["keyword"]);
                    
                    
                      $html = file_get_html("https://www.google.com/search?q=%22jamtangan.com%22+".$teks."&safe=strict&rlz=1C1MSIM_enID890ID891&tbm=shop&sxsrf=ALeKk03dxOWLGo4MslRiA6Ym5RDAewBX6g:1605592153412&source=lnms&sa=X&ved=0ahUKEwii9NTv8IjtAhXDSH0KHV_6B7UQ_AUIECgC&biw=1920&bih=969&dpr=1");
                     
                      foreach ($html->find('div[class="KZmu8e"]') as $berita) {
                          $cekDataKosong = false;
                    
                          $gambarJam = $berita->find('img',0)->src;
                    
                    
                          $namaJam = $berita->find('div[class="sh-np__product-title"]',0)->innertext;
                          $namaJam = str_replace("<b>", "", $namaJam);
                          $namaJam = str_replace("</b>", "", $namaJam);
                    
                          $hargaJam = $berita->find('span[class="T14wmb"]',0)->innertext;
                          $hargaJam = substr($hargaJam,6);
                          $hargaJam = str_replace(".", "", $hargaJam);
                          $hargaJam = str_replace("</b>", "", $hargaJam);
                          $hargaJam = str_replace(",00", "", $hargaJam);  
                    
                          $outputStemming=$stemmer->stem($namaJam."".$hargaJam);
                          $outputStopword=$stopword->remove($outputStemming);   
                          
                        echo "<tr><td><img src='".$gambarJam."'></td><td>".$namaJam."</td><td>".$hargaJam."</td><td>".$outputStopword."</td></tr>";
                    
                    
                    
                        for ($i=0; $i < count($nama) ; $i++) { 
                          if($nama[$i] == $namaJam)
                          {
                            $cek = true;
                            break;
                          }
                        }
                    
                        if($cek==false || count($nama)==0)
                        {
                          $sql = "INSERT INTO jamtangan (nama, gambar, harga, similaritas, databersih) VALUES ('".$namaJam."', '".$gambarJam."', '".$hargaJam."',0,'".$outputStopword."')";
                          if ($conn->query($sql) === TRUE) {              
                            } else {
                              echo "Error: " . $sql . "<br>" . $conn->error;
                            }
                          
                        }
                        $cek = false;
                    
                        
                        
                      }
                      if($cekDataKosong == true)
                      {
                        echo "<tr><td>Data tidak ditemukan, silahkan coba keyword lain</td><td>Data tidak ditemukan, silahkan coba keyword lain</td><td>Data tidak ditemukan, silahkan coba keyword lain</td></tr>";
                      }
                      echo "</table>";
                      $conn->close();
                    }
                    ?>
<html>
