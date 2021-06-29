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
        <h1>学習選択</h1>
        <button type="submit" name="class" class="btn btn-primary btn-lg">授業用</button>
        <button type="submit" name="self" class="btn btn-primary btn-lg">自習用</button>
      </div>
    </form>
  </div>
</body>
</html>