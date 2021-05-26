var ketThuc = false;
var chht = 1;
var user = [0];
for(i = 1; i <= 20; i++)
{
    obj = {};
    obj.dapan1 = false;
    obj.dapan2 = false;
    obj.dapan3 = false;
    obj.dapan4 = false;
    obj.ketqua = false;
    user.push(obj);
}

function xemcaccauhoi_in()
{
    var str = "";
    for(var i = 0; i <= 3; i++)
    {
        str += '<div class="row p-1">';
        for(var j = 1; j <= 5; j++)
        {
            str += '<div class="col-2"><button class="btn btn-primary btn-block px-1 ch" onclick="inCauHoi(this.value);" value="'+ ((i*5)+j) +'">'+ ((i*5)+j) +'</button></div>';
        }
        str += '</div>';
    }

    $("#xemcaccauhoi_in").html(str);
    if(ketThuc == true)
    {
        for(var i = 1; i <= 20; i++)
        {
            if(user[i].ketqua == false)
            {
                $(".ch:eq("+(i-1)+")").removeClass("btn-primary").addClass("btn-danger");           
            }
        }
    }
}

function thoiGian()
{
    var p15 = 15 * 60;
    var loop = setInterval(function(){
        p15 -= 1;
        var phut = Math.floor(p15 / 60);
        var giay = p15 % 60;
        $("#thoigian").text("Thời gian còn lại: " + phut + " : " + giay);
        if(phut == 0 && giay == 0)
        {
            clearInterval(loop);
            ketThuc = true;
            xemcaccauhoi_in();
            inCauHoi(chht);
            inKetQua();
            $("#nutketthucbaithi").html('<a href="#" onclick="window.history.go(-1)">Quay về trang chủ</a>'); 
        }
    },1000);

}

// function getCookie(name) {
    // var value = "; " + document.cookie;
    // var parts = value.split("; " + name + "=");
    // if (parts.length == 2) return parts.pop().split(";").shift();
  // }
 
  // if(document.cookie && document.cookie.match('myClock')){
    // // var deadline = document.cookie.match(/(^|;)myClock=([^;]+)/)[2];
    // var deadline = getCookie('myClock');
  // }
 
  // else{
    // //Đặt thời gian của bạn ở đây !!!!
    // var deadline = new Date(Date.parse(new Date()) + 5 * 24 * 60 * 60 * 1000);
 
    // // store deadline in cookie for future reference
    // document.cookie = 'myClock=' + deadline + '; path=/';
  // }
// thoiGian('.clockdiv', deadline);
function inCauHoi(mch)
{ 
    chht = mch;
    if(mch >= 1 && mch <= 20 && ketThuc == false)
    {
        var obj = dethi[mch - 1];
        var str = '';
        str += "<p><b>Câu hỏi " + chht + ": ";
        var rep = obj.NoiDungCauHoi.replace('\[IMG=ch','<br/><img src=\"img/');
        rep = rep.replace('.jpg][/IMG]','.jpg\" width="400px" height="175px">');
        str += rep + "</b></p>";
        str += '<ol>';
        str += '<li><input type="checkbox" name="cauHoi1" id="cauHoi1" onchange="ghiKetQua()"> <label for="cauHoi1"> ' + obj.CauHoi1 + '</label></li>';
        str += '<li><input type="checkbox" name="cauHoi2" id="cauHoi2" onchange="ghiKetQua()"> <label for="cauHoi2"> ' + obj.CauHoi2 + '</label></li>';
        if(obj.CauHoi3 != null) str += '<li><input type="checkbox" name="cauHoi3" id="cauHoi3" onchange="ghiKetQua()"> <label for="cauHoi3"> ' + obj.CauHoi3 + '</label></li>';
        if(obj.CauHoi4 != null) str += '<li><input type="checkbox" name="cauHoi4" id="cauHoi4" onchange="ghiKetQua()"> <label for="cauHoi4"> ' + obj.CauHoi4 + '</label></li>';
        str += '</ol>';
        $("#cauHoi").html(str);
        document.getElementById("cauHoi1").checked =  user[chht].dapan1;
        document.getElementById("cauHoi2").checked =  user[chht].dapan2;
        if(obj.CauHoi3 != null) document.getElementById("cauHoi3").checked =  user[chht].dapan3;
        if(obj.CauHoi4 != null) document.getElementById("cauHoi4").checked =  user[chht].dapan4;
    }
    else if(mch >= 1 && mch <= 20 && ketThuc == true)
    {
        var obj = dethi[mch - 1];
        var str = '';
        str += "<p><b>Câu hỏi " + chht + ": ";
        var rep = obj.NoiDungCauHoi.replace('\[IMG=ch','<br/><img src=\"img/');
        rep = rep.replace('.jpg][/IMG]','.jpg\" width="400px" height="175px">');
        str += rep + "</b></p>";
        str += '<ol>';
        str += '<li>' + obj.CauHoi1 + '</li>';
        str += '<li>' + obj.CauHoi2 + '</li>';
        if(obj.CauHoi3 != null) str += '<li>' + obj.CauHoi3 + '</li>';
        if(obj.CauHoi4 != null) str += '<li>' + obj.CauHoi4 + '</li>';
        str += '</ol>';
        str += '<p>Đáp án của bạn là: ';
        if(user[chht].dapan1)   str += 1 + ' ';
        if(user[chht].dapan2)   str += 2 + ' ';
        if(user[chht].dapan3)   str += 3 + ' ';
        if(user[chht].dapan4)   str += 4 + ' ';
        str += '</p>';
        str +=  '<p>Đáp án đúng là: ' + obj.DapAn1;
        if(obj.DapAn2 != null) str += ' ' + obj.DapAn2;
        str += '</p>';
        if(user[chht].ketqua == true)   str += "<p>Bạn trả lời đúng</p>";
        else if(user[chht].ketqua == false)   str += "<p>Bạn trả lời sai</p>";
        $("#cauHoi").html(str);
    }
}

function ghiKetQua(){
    console.log(user);
    obj = dethi[chht - 1];
    user[chht].dapan1 = document.getElementById("cauHoi1").checked;
    user[chht].dapan2 = document.getElementById("cauHoi2").checked;
    if(obj.CauHoi3 != null) user[chht].dapan3 = document.getElementById("cauHoi3").checked;
    if(obj.CauHoi4 != null) user[chht].dapan4 = document.getElementById("cauHoi4").checked;    
    
    var mangDapAn = [false,false,false,false,false];
    mangDapAn[obj.DapAn1] = true;
    if(obj.DapAn2 != null) mangDapAn[obj.DapAn2] = true;

    var mangKetQua = [false,user[chht].dapan1,user[chht].dapan2,user[chht].dapan3,user[chht].dapan4];
    console.log(mangKetQua);
    console.log(mangDapAn);
    for(i = 0; i < 5;i++)
    {
        if(mangDapAn[i] == mangKetQua[i])
        {
            user[chht].ketqua = true;
        }
        else
        {
            user[chht].ketqua = false;
            break;
        }
    }
}

function start(){
    xemcaccauhoi_in();
    inCauHoi(chht);
    thoiGian();
}

function prevCauHoi(){
    if(chht >= 2 && chht <=20)
    {
        chht -= 1;
        inCauHoi(chht);
    }
}

function nextCauHoi(){
    if(chht >= 1 && chht <= 19)
    {
        chht += 1;
        inCauHoi(chht);
    }
}

function finish(){
    console.log(user);
    ketThuc = confirm('Kết thúc bài thi');
	if(ketThuc==true){
    xemcaccauhoi_in();
    inCauHoi(chht);
    inKetQua();
    $("#nutketthucbaithi").html('<a href="#" onclick="window.history.go(-1)">Quay về trang chủ</a>'); }
}

function inKetQua()
{
    $("#thoigian").hide();
    $("#ketthuc").show();
    var socaudung = 0;
    var socausai = 20;
    var truot = "Trượt";
    for(var i = 1; i <= 20; i++)
    {
        if(user[i].ketqua)
        {
            socaudung++;
            socausai--;
        }
    }
    if(socaudung >= 15 )
    {
        truot = "Đạt";
    }
    $("#soCauDung").text("Số câu đúng: " + socaudung);
    $("#soCauSai").text("Số câu sai: " + socausai);
    $("#ketQua").text("Kết quả: " + truot);
    $("#ChuThich").html("<p>Các câu đúng: màu xanh</p><p>Các câu sai: màu đỏ</p>");
}

$(document).ready(function(){
    start();
})
