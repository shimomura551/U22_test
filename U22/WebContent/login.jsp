<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>U22</title>
<!-- BootstrapのCSS読み込み -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery読み込み -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <form method="post" action="./list.php" enctype="multipart/form-data">
      <div class="form-group">
        <h1>ログイン</h1>
        <table>
          <tr><td>ユーザーID</td><td><input type="text" name="id" class="form-control"></td></tr>
          <tr><td>パスワード</td><td><input type="text" name="pass" class="form-control"></td></tr>
          <tr><td colspan="2"><button type="submit" name="login" class="btn btn-primary btn-lg">ログイン</button></td></tr>
        </table>
      </div>
    </form>
  </div>
</body>
</html>