

function load_ajax(url)
{
    $.get(url,'', function(data, status , xhr){
        $("#NoiDung").html(data);
    });
}

function bamVaoTrangChu(){
    bienDoiTieuDe('Thi thử bằng lái xe A1');
    load_ajax('TrangChu.html');
}

// function bamVaoOnTap()
// {
    // bienDoiTieuDe('Ôn tập');
    // load_ajax('OnTap.html');
// }

// function bamVaoThiThu()
// {
    // bienDoiTieuDe('Thi thử lý thuyết');
    // load_ajax('ThiThu.html');
// }
// function bamVaoThi()
// {
    // bienDoiTieuDe('Thi thử lý thuyết');
    // load_ajax('Thi.php');
// }
// function bamVaoThi1()
// {

    // bienDoiTieuDe('Thi thử lý thuyết');
    // load_ajax('Thi.php');
// }
// function bamVaoThi2()
// {
	
    // bienDoiTieuDe('Thi thử lý thuyết');
    // load_ajax('Thi2.php');
// }
// function bamVaoThi3()
// {
	
    // bienDoiTieuDe('Thi thử lý thuyết');
    // load_ajax('Thi3.php');
// }
// function bamVaoThi4()
// {
	
    // bienDoiTieuDe('Thi thử lý thuyết');
    // load_ajax('Thi4.php');
// }
function bamVaoHuongDan()
{
    bienDoiTieuDe('Hướng dẫn thi bằng lái xe A1');
    load_ajax('HuongDan.html');
}function bamVaoHuongDanThi()
{
    bienDoiTieuDe('Hướng dẫn thi');
    load_ajax('meoThi.html');
}

// function bamVaoTimKiemCauHoi()
// {
    // bienDoiTieuDe('Tìm kiếm');
    // load_ajax('TimKiem.html');
// }

function bamVaoXemCauHoi()
{
    bienDoiTieuDe('150 câu hỏi lý thuyết');
    load_ajax('xemCauHoi.html');
}

function htmlCauHoi(obj)
{
    var str = '';
    str += "<p><b>Câu hỏi " + obj.MaCauHoi + ": ";
    var rep = obj.NoiDungCauHoi.replace('\[IMG=ch','<br/><img src=\"img/');
    rep = rep.replace('.jpg][/IMG]','.jpg\" width="400px" height="175px">');
    str += rep + "</b></p>";
    str += '<ol>'
    str += '<li>' + obj.CauHoi1 + '</li>';
    str += '<li>' + obj.CauHoi2 + '</li>';
    if(obj.CauHoi3 != null) str += '<li>' + obj.CauHoi3 + '</li>';
    if(obj.CauHoi4 != null) str += '<li>' + obj.CauHoi4 + '</li>';
    str += '</ol>';
    str += '<p>Đáp án: ' + obj.DapAn1;
    if(obj.DapAn2 != null) str += ', ' + obj.DapAn2;
    str += '</p>';
    return str;
}

window.onload = function(){
    bamVaoTrangChu();
}