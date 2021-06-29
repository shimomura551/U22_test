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
        <h1>カテゴリー選択</h1>
        <p>
          <button type="submit" name="class" class="btn btn-primary btn-lg">カテゴリー1</button>
          <button type="submit" name="self" class="btn btn-primary btn-lg">カテゴリー2</button>
        </p>
        <p>
          <button type="submit" name="class" class="btn btn-primary btn-lg">カテゴリー3</button>
          <button type="submit" name="self" class="btn btn-primary btn-lg">カテゴリー4</button>
        </p>
      </div>
    </form>
  </div>
</body>
</html>