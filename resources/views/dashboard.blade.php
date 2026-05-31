<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>
  <link rel="stylesheet" href="{{ asset('css/dashboard.css') }}">
</head>
<body>

<!-- SIDEBAR -->
<div class="sidebar">
    <div class="logo">
        MyAdmin
    </div>

    <ul class="menu">
        <li class="active"><a href="#">🏠 Dashboard</a></li>
        <li><a href="#">👥 Users</a></li>
        <li><a href="#">📊 Analytics</a></li>
        <li><a href="#">📦 Produk</a></li>
        <li><a href="#">⚙️ Settings</a></li>
        <li><a href="#">🚪 Logout</a></li>
    </ul>
</div>

<!-- MAIN -->
<div class="main">

    <!-- TOPBAR -->
    <div class="topbar">
        <h2>Dashboard</h2>

        <div class="profile">
            Halo {{$xxx1}}
        </div>
    </div>

    <!-- CARDS -->
    <div class="cards">
        <div class="card">
            <h3>Total User</h3>
            <p>1,250</p>
        </div>

        <div class="card">
            <h3>Total Produk</h3>
            <p>320</p>
        </div>

        <div class="card">
            <h3>Pendapatan</h3>
            <p>Rp 12 Jt</p>
        </div>

        <div class="card">
            <h3>Pesanan</h3>
            <p>540</p>
        </div>
    </div>

    <!-- TABLE -->
    <div class="table-container">
        <h3>Data User</h3>

        <table>
            <thead>
                <tr>
                    <th>Nama</th>
                    <th>Email</th>
                    <th>Status</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td>Budi</td>
                    <td>budi@gmail.com</td>
                    <td>Aktif</td>
                </tr>

                <tr>
                    <td>Siti</td>
                    <td>siti@gmail.com</td>
                    <td>Aktif</td>
                </tr>

                <tr>
                    <td>Andi</td>
                    <td>andi@gmail.com</td>
                    <td>Nonaktif</td>
                </tr>
            </tbody>
        </table>
    </div>

</div>

</body>
</html>