<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <title>Login Elegant</title>
  <link rel="stylesheet" href="{{asset('css/style.css')}}">
</head>
<body>

<div class="login-container">
  <div class="login-box">
    <h2>Welcome Back</h2>
    <p>Login ke akun Anda</p>

    <form onsubmit="login(event)">
      <input type="text" id="username" placeholder="Username" required>
      <input type="password" id="password" placeholder="Password" required>

      <button type="submit">Login</button>
    </form>

    <small id="error"></small>
  </div>
</div>

<script src="{{asset('js/app.css')}}"></script>
</body>
</html>