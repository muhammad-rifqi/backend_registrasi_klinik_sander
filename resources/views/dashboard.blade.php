<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dashboard</title>
  <link rel="stylesheet" href="{{asset('css/style.css')}}">
</head>
<body>

<div class="sidebar">
  <h2>MyApp</h2>
  <a href="#">🏠 Dashboard</a>
  <a href="#">📊 Analytics</a>
  <a href="#">⚙️ Settings</a>
  <a href="#" onclick="logout()">🚪 Logout</a>
</div>

<div class="main">
  <h1>Dashboard</h1>
  <p>Selamat datang di dashboard elegan Anda.</p>

  <div class="card-container">
    <div class="card">📈 Statistik</div>
    <div class="card">👥 User</div>
    <div class="card">💰 Pendapatan</div>
  </div>
</div>

<script src="{{asset('js/app.css')}}"></script>
</body>
</html>