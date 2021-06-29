<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- BootstrapのCSS読み込み -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery読み込み -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>
  <div class="container">
    <form method="post" action="./list.php" enctype="multipart/form-data">
      <div class="form-group">
        <h1>俺らのロゴ</h1>
        <p>選択したカテゴリー</p>
        <p><button type="submit" name="start" class="btn btn-primary btn-lg">スタート</button></p>
      </div>
    </form>
  </div>
</body>
</html>