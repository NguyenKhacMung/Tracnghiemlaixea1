<?php
    class CauHoi
    {
        private $MaCauHoi;
        private $NoiDungCauHoi;
        private $CauHoi1;
        private $CauHoi2;
        private $CauHoi3;
        private $CauHoi4;
        private $DapAn1;
        private $DapAn2;
        private $MaLoaiCauHoi;

        function getMaCauHoi(){
            return $this->MaCauHoi;
        }

        function getNoiDungCauHoi(){
            return $this->NoiDungCauHoi;
        }
        
        function getCauHoi1(){
            return $this->CauHoi1;
        }

        function getCauHoi2(){
            return $this->CauHoi2;
        }

        function getCauHoi3(){
            return $this->CauHoi3;
        }

        function getCauHoi4(){
            return $this->CauHoi4;
        }

        function getDapAn1(){
            return $this->DapAn1;
        }

        function getDapAn2(){
            return $this->DapAn2;
        }

        function getMaLoaiCauHoi(){
            return $this->MaLoaiCauHoi;
        }
        
        function setMaCauHoi($value){
            $this->MaCauHoi = $value;
        }
        
        function setNoiDungCauHoi($value){
            $this->NoiDungCauHoi = $value;
        }
        
        function setCauHoi1($value){
            $this->CauHoi1 = $value;
        }
        
        function setCauHoi2($value){
            $this->CauHoi2 = $value;
        }
        
        function setCauHoi3($value){
            $this->CauHoi3 = $value;
        }
        
        function setCauHoi4($value){
            $this->CauHoi4 = $value;
        }
        
        function setDapAn1($value){
            $this->DapAn1 = $value;
        }
        
        function setDapAn2($value){
            $this->DapAn2 = $value;
        }
        
        function setMaLoaiCauHoi($value){
            $this->MaLoaiCauHoi = $value;
        }
    }
