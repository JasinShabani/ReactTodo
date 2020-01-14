
<!DOCTYPE html>

    <html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Pragma" content="no-cache">
        <meta http-equiv="Cache-Control" content="no-cache">
        <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
        <title>home</title>
        <link href="static/css/bootstrap.min.css" rel="stylesheet">
        <link href="static/css/style.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
<body>
<style>
    ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background-color: #333;
    }

    li {
        float: left;
    }

    li a {
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }

    li a:hover:not(.active) {
        background-color: #111;
    }

    .active {
        background-color: #af0013;
    }
</style>
<ul>
    <li><a href="/Login">Home</a></li>
    <li><a href="/Register">News</a></li>
    <li><a href="/kullanici-goster">Contact</a></li>
    <li style="float:right"><a class="active" href="#about">About</a></li>
</ul>
<!--
<div role="navigation">
    <div class="navbar navbar-inverse">
        <a href="/welcome" class="navbar-brand">Kizilay</a>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="/login">Login</a></li>
                <li><a href="/register">Yeni kullanici</a></li>
                <li><a href="/show-users">Tum kullanicilar</a></li>
            </ul>
        </div>
    </div>
</div>-->
<%--  <c:choose>--%>
<%--    <c:when test="${mode=='MODE_HOME'}"> --%>
<div class="container text-center" id="homediv">
        <img src="/images/logoTurkkizilay.png" class="img-rounded" alt="Kizilay" width="200" height="200">
    <h3>Giris Yap</h3>
    <form class="form-horizontal" method="POST" action="register">

        <div class="form-group">
            <label class="control-label col-md-3">Username</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="username"
<%--                       value="${user.username}" />--%>
                value=""/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">Sifre</label>
            <div class="col-md-7">
                <input type="password" class="form-control" name="password"
<%--                       value="${user.password }" />--%>
                value=""/>
            </div>
        </div>
        <div class="form-group ">
            <input name="submit" type="submit" class="btn btn-primary" value="submit" />
        </div>
    </form>
</div>
    </div>
<%--    </c:when>--%>

<%--    <c:when test="${mode=='MODE_REGISTER'}">--%>


 <!--   <div class="container text-center">
    <img src="/images/logoTurkkizilay.png" class="img-rounded" alt="Kizilay" width="200" height="200">
            <h3>Kaydol</h3>
            <hr>
            <form class="form-horizontal" method="POST" action="kullanici-kaydet">
                <div class="form-group">
                    <label class="control-label col-md-3">Kullanici adi</label>
                    <div class="col-md-7">
                        <input type="email" class="form-control" name="email"
<%--                               value="${user.email }" />--%>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Adiniz</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="isim"
<%--                               value="${user.isim }" />--%>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Soyadiniz</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="soyisim"
<%--                               value="${user.soyisim }" />--%>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Yasiniz</label>
                    <div class="col-md-3">
                        <input type="number" class="form-control" name="yas"
<%--                               value="${user.yas }" />--%>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Sifre</label>
                    <div class="col-md-7">
                        <input type="password" class="form-control" name="password"
<%--                               value="${user.password }" />--%>
                    </div>
                </div>
                <div class="form-group ">
                    <input type="submit" class="btn btn-primary" value="Login" />
                </div>
            </form>
        </div> -->
<%--        </c:when>--%>
<%--</c:choose>--%>

<div class="container text-centered">
    <div class="alert alert-success">
        <h4>basarili mesaj kontrol</h4>
    </div>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
</body>
</html>












<!--
< % @ page language="java" contentType="text/html; charset=US-ASCII"
pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Hosgeldin</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
width: 100%;
padding: 12px 20px;
margin: 8px 0;
display: inline-block;
border: 1px solid #ccc;
box-sizing: border-box;
}

/* Set a style for all buttons */
button {
background-color: #4CAF50;
color: white;
padding: 14px 20px;
margin: 8px 0;
border: none;
cursor: pointer;
width: 100%;
}

button:hover {
opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
width: auto;
padding: 10px 18px;
background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
text-align: center;
margin: 24px 0 12px 0;
position: relative;
}

img.avatar {
width: 40%;
border-radius: 50%;
}

.container {
padding: 16px;
}

span.psw {
float: right;
padding-top: 16px;
}

/* The Modal (background) */
.modal {
display: none; /* Hidden by default */
position: fixed; /* Stay in place */
z-index: 1; /* Sit on top */
left: 0;
top: 0;
width: 100%; /* Full width */
height: 100%; /* Full height */
overflow: auto; /* Enable scroll if needed */
background-color: rgb(0,0,0); /* Fallback color */
background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
background-color: #fefefe;
margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
border: 1px solid #888;
width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
position: absolute;
right: 25px;
top: 0;
color: #000;
font-size: 35px;
font-weight: bold;
}

.close:hover,
.close:focus {
color: red;
cursor: pointer;
}
</style>

</head>
<body>

<h2>Modal Login Form</h2>
<form class="modal-content animate" action="/action_page.php" method="post">
<div class="imgcontainer">
<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
<img src="img_avatar2.png" alt="Avatar" class="avatar">
</div>

<div class="container">
<label><b>Username</b></label>
<input type="text" placeholder="Enter Username" name="uname" required>

<label><b>Password</b></label>
<input type="password" placeholder="Enter Password" name="psw" required>

<button type="submit">Login</button>
<label>
<input type="checkbox" checked="checked" name="remember"> Remember me
</label>
</div>

<div class="container" style="background-color:#f1f1f1">
<button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
<span class="psw">Forgot <a href="#">password?</a></span>
</div>
</form>


</body>
</html>
-->