<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <title>Backend Registrasi</title>
  <link rel="stylesheet" href="{{asset('css/style.css')}}">
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>

<div class="login-container">
  <div class="login-box">
    <h2>Welcome Back</h2>
    <p>Login ke akun Anda</p>

    <form onsubmit="login(event); return false;">
      <input type="email" id="email" placeholder="Email" required>
      <input type="password" id="password" placeholder="Password" required>

      <button type="submit" id="btn_loading">Login</button>
    </form>

    <small id="error"></small>
  </div>
</div>

<script src="{{asset('js/app.js')}}"></script>
</body>
</html>