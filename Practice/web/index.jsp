<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 2020/2/18
  Time: 0:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>login</title>
      <script type="text/javascript" src="js/test.js"></script>
      <script type="text/javascript">
          function isvalidate(){
              if(document.getElementsByName("id")[0].value == "admin"
                  && document.getElementsByName("pwd")[0].value == "123"){
                  document.form1.action = "login_suc.jsp";
              }
              else{
                  document.form1.action = "login_fail.jsp";
              }

          }
      </script>
  </head>
  <body>
    <div id="formstyle">
      <form name="form1" action="" method="post" onsubmit="return isvalidate()">
        <h2>账号：<input type="text" name="id" size=30 style="height:25px;"></h2>
        <h2>密码：<input type="password" name="pwd" size=30 style="height:25px;"></h2>
        <br>
        <input type="submit" name="登录" value="Login" style='font-size:20px;margin-left:80px'>
        <input type="reset" name="重置" value="Reset" style='font-size:20px;margin-left:40px'>
      </form>
    </div>
  </body>
</html>
