<?php
	
	include_once 'session.php';
    require_once __DIR__.'/BUS/Lop_Bus.php';
    require_once __DIR__.'/function.php';

    $bus = new Lop_Bus();
	// if(id=="ThiThu1")
		// $dethi = $bus->getTheoMaDeToJson(1);
	// if(id=="ThiThu2")
		$dethi = $bus->getTheoMaDeToJson(4);
    
?> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Hướng đẫn thi bằng lái xe A1</title>
    <link rel="stylesheet" href="Css/bootstrap.min.css">
    <link rel="stylesheet" href="Css/thi.css">
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="icon" type="image/png" href="icon/icon.png"/>
    <script>
        var dethi = JSON.parse('<?php echo $dethi ?>');
    </script>
    
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-12">
            <h2 class="text-center">THI SÁT HẠCH LÁI XE HẠNG A1 ONLINE</h2>
            </div>
        </div>    
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div id="xemcaccauhoi">
                    <b>Câu hỏi</b>
                    <div id="xemcaccauhoi_in">
                        
                    </div>
                </div>

                <div id="thoigian"></div>

                <div id="ketthuc" style="display:none">
                    <p  style="font-size: 30px; color:blue;">Kết quả:</p>
                    <p id="soCauDung"></p>
                    <p id="soCauSai"></p>
                    <p id="ketQua"></p>
                    <p id="ChuThich"></p>
                </div>

                <div id="nutketthucbaithi">
                    <button class="btn btn-lg btn-primary" onclick="finish();">Kết thúc bài thi</button>
                </div>

            </div>
            
            <div class="col-md-8">
                <div id="noiDung">
                    <div id="cauHoi">
                    
                    </div>
                    <button onclick="prevCauHoi()">Câu trước</button>
                    <button onclick="nextCauHoi()" style="">Câu tiếp</button>  
                </div>
            </div>
        </div>
    </div>

    <script src="Js/jquery-3.2.1.min.js"></script>
    <script src="Js/popper.min.js"></script>
    <script src="Js/bootstrap.min.js"></script>
    <script src="Js/Thi.js"></script>
	<script src="Js/index.js"></script>
</body>
</html>