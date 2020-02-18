<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>login</title>
      <script type="text/javascript">
          function isvalidate(){
              if(document.getElementsByName("id")[0].value.length<1){
                  alert("账号不能为空");
                  return false;
              }
              if(document.getElementsByName("pwd")[0].value.length<1){
                  alert("密码不能为空");
                  return false;
              }
              return true;
          }
      </script>
  </head>
  <body>
    <div id="formstyle">
      <form action="/check_servlet" method="post" onsubmit="return isvalidate()">
        <h2>账号：<input type="text" name="id" size=30 style="height:25px;"></h2>
        <h2>密码：<input type="password" name="pwd" size=30 style="height:25px;"></h2>
        <br>
        <input type="submit" name="登录" value="Login" style='font-size:20px;margin-left:80px'>
        <input type="reset" name="重置" value="Reset" style='font-size:20px;margin-left:40px'>
      </form>
    </div>
  </body>
</html>
