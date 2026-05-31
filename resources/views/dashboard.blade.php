@include('layout.header')
@include('layout.sidebar')

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
</div>

@include('layout.footer')
