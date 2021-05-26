<?php
function inCauHoi($obj = array(
        "MaCauHoi" => "",
        "NoiDungCauHoi" => "",
        "CauHoi1" => "",
        "CauHoi2" => "",
        "Cauhoi3" => "",
        "Cauhoi4" => "",
        "DapAn1" => "",
        "DapAn2" => ""
    ))
    {
        $str = '';
        $str .= "<p><b>Câu hỏi ".$obj["MaCauHoi"].": ";
        $rep = str_replace('[IMG=ch','<br/><img src="img/',$obj["NoiDungCauHoi"]);
        $rep = str_replace('.jpg][/IMG]','.jpg" width="400px" height="175px">',$rep);
        $str .= $rep."</b></p>";
        $str .= '<ol>';
        $str .= '<li>'.$obj['CauHoi1'].'</li>';
        $str .= '<li>'.$obj['CauHoi2'].'</li>';
        if($obj['CauHoi3'] != null) $str .= '<li>'.$obj['CauHoi3'].'</li>';
        if($obj['CauHoi4'] != null) $str .= '<li>'.$obj['CauHoi4'].'</li>';
        $str .= '</ol>';
        $str .= '<p>Đáp án: '.$obj['DapAn1'];
        if($obj['DapAn2']!= null) $str .= ', '.$obj['DapAn2'];
        $str .= '</p>';
        return $str;
    }
?>