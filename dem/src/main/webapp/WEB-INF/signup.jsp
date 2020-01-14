<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
<title>Baslik</title>
<style>
    body {font-family: Arial, Helvetica, sans-serif;text-align: center;}
    form {width:50%; border: 3px solid #f1f1f1;display: inline-block;}

    input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    }

    button {
    background-color: #af1c00;
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

    .cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
    }

    .imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
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

    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
    span.psw {
    display: block;
    float: none;
    }
    .cancelbtn {
    width: 100%;
    }
    }
    </style>
</head>
<body>
<%--<form action="login" method='POST'>
<table>
    <tr>
        <td>User:</td>
        <td><input type="text" name="username" value=""></td>
    </tr>
    <tr>
        <td>Password:</td>
        <td><input type="password" name="password"></td>
    </tr>
    <tr>
        <td><input type="submit" name="submit" value="submit"/></td>
    </tr>
</table>
</form>--%>


<form action="addUser" method="POST">
    <img src="https://i.pinimg.com/originals/d3/c9/39/d3c939deaaef8fed708366e310538ecc.png"  class="img-rounded" alt="Kizilay" width="400" height="300">
    <h2>Kaydol</h2>
    ${SPRING_SECURITY_LAST_EXCEPTION.message}
    <div class="container">
        <label><b>Isim</b></label>
        <input type="text" placeholder="Isim giriniz" name="isim" value="${user.isim }" required>

        <label><b>Soyisim</b></label>
        <input type="text" placeholder="Soyisim giriniz" name="soyisim" value="${user.soyisim }" required>

        <label><b>Yas</b></label>
        <input type="number" placeholder="Yasinizi  giriniz" name="yas" value="${user.yas }" required>

        <label><b>Email</b></label>
        <input type="text" placeholder="Emaili giriniz" name="username" value="${user.username }" required>

        <label><b>Sifre</b></label>
        <input type="password" placeholder="Sifrenizi giriniz" name="password" value="${user.password }" required>


        <button type="submit" name="submit" value="submit">Signup</button>

    </div>

    <%--<div class="container" style="background-color:#f1f1f1">
        <span class="psw"><a href="#">Hesabiniz mi yok?</a></span>
    </div>--%>
</form>

</body>
</html>
