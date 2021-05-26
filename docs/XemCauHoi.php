<?php


    require_once __DIR__.'/BUS/Lop_Bus.php';
    require_once __DIR__.'/function.php';

    if(isset($_GET['loai']))
    {
        $mch = $_GET['loai'];
        if($mch < 0 || $mch > 6)
        {
            echo "Không tìm thấy câu hỏi";
        }
        else
        {	echo ' <div class="tile-body">';
			echo '  <table class="table table-hover table-bordered" id="sampleTable">';
			echo ' <thead>
                  <tr>
                    <th>Các câu hỏi và đáp án</th>          
                  </tr>
                </thead>';
			echo ' <tbody>';
            $bus = new Lop_Bus();
            if($mch != 0)   $obj = $bus->getTheoMaLoai($mch);
            else $obj = $bus->getAllCauHoi();
            foreach($obj as $val)
            {
				echo '<tr><td>';
                echo inCauHoi($val);
				echo '</td></tr>';
            }
			echo ' </tbody>';
			echo '</table>';
			echo ' </div>';
        }
    }
	?>
	 <script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript">$('#sampleTable').DataTable(
	{
		"ordering":false
	});</script>