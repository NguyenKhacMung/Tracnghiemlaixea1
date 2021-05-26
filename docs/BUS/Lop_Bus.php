<?php



require_once __DIR__.'/../DAL/Data.php';
require_once __DIR__.'/../DTO/CauHoi.php';

class Lop_Bus {
    //put your code here
    private $data;
    private $cauHoi;
    
    function __construct() {
        $this->data = new Data();
        $this->cauHoi = new CauHoi();
    }

    function getCauHoi($mch = 1)
    {
        $sql = "select * from cauhoi where MaCauHoi = :mch";
        $kq = $this->data->getArray($sql,array(':mch' => $mch));
        return $kq;
    }
    
    function getCauHoiToJson()
    {
        return addslashes(json_encode($this->getCauHoi()));
    }
    
    function timCauhoi($nd = '')
    {
        $sql = "select * from cauhoi where NoiDungCauHoi like :nd";
        $kq = $this->data->getArray($sql,array(':nd' => '%'.$nd.'%'));
        return $kq;
    }
    
    function getAllCauHoi(){
        $sql = "select * from cauhoi";
        $kq = $this->data->getArray($sql);
        return $kq;
    }
    
    function getAllCauHoiToJson()
    {
        return addslashes(json_encode($this->getAllCauHoi()));
    }
    
    function getTheoMaLoai($maloai = 1)
    {
        $sql = "select * from cauhoi where MaLoaiCauHoi = :ml";
        $kq = $this->data->getArray($sql,array(':ml' => $maloai));
        return $kq;
    }
    
    function getTheoMaLoaiToJson($maloai = 1)
    {
        return json_encode($this->getTheoMaLoai($maloai));
    }
    
    function getTheoMaDe($made = 1)
    {
        $sql = "select * from dethi inner join cauhoi on dethi.MaCauHoi = cauhoi.MaCauHoi where MaDe = :md";
        $kq = $this->data->getArray($sql,array(':md' => $made));
        return $kq;
    }
    
    function getTheoMaDeToJson($made = 1)
    {
        return addslashes(json_encode($this->getTheoMaDe($made)));
    }
}
/*
 $bus = new Lop_Bus();
 var_dump($bus->getTheoMaLoai(1));
*/