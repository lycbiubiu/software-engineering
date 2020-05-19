function loadsetup()
{
    var xmlhttp
    if (window.XMLHttpRequest)
    {
        //  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
        xmlhttp=new XMLHttpRequest()
    }
    else
    {
        // IE6, IE5 浏览器执行代码
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP")
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
            document.getElementById("right").innerHTML=xmlhttp.responseText
        }
    }
    xmlhttp.open("GET","ajax/set_up.txt",true);
    xmlhttp.send();
}
function loadtransin()
{
    var xmlhttp
    if (window.XMLHttpRequest)
    {
        //  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
        xmlhttp=new XMLHttpRequest()
    }
    else
    {
        // IE6, IE5 浏览器执行代码
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP")
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
            document.getElementById("right").innerHTML=xmlhttp.responseText
        }
    }
    xmlhttp.open("GET","ajax/trans_in.txt",true);
    xmlhttp.send();
}
function loadtransout()
{
    var xmlhttp
    if (window.XMLHttpRequest)
    {
        //  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
        xmlhttp=new XMLHttpRequest()
    }
    else
    {
        // IE6, IE5 浏览器执行代码
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP")
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
            document.getElementById("right").innerHTML=xmlhttp.responseText
        }
    }
    xmlhttp.open("GET","ajax/trans_out.txt",true);
    xmlhttp.send();
}
function loadintra()
{
    var xmlhttp
    if (window.XMLHttpRequest)
    {
        //  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
        xmlhttp=new XMLHttpRequest()
    }
    else
    {
        // IE6, IE5 浏览器执行代码
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP")
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
            document.getElementById("right").innerHTML=xmlhttp.responseText
        }
    }
    xmlhttp.open("GET","ajax/intra_trans.txt",true);
    xmlhttp.send();
}