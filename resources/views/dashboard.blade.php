@include('layout.header')
@include('layout.sidebar')

<!-- MAIN -->
<div class="main">

    <!-- TOPBAR -->
    <div class="topbar">
        <h2>Dashboard</h2>

        <div class="profile">
            Hallo {{$xxx1}}
        </div>
    </div>

    <!-- CARDS -->
    <div class="cards">
        <div class="card">
            <h3>Sample</h3>
            <p>0</p>
        </div>

        <div class="card">
            <h3>Sample</h3>
            <p>0</p>
        </div>

        <div class="card">
            <h3>Sample</h3>
            <p>0</p>
        </div>

        <div class="card">
            <h3>Sample</h3>
            <p>0</p>
        </div>
    </div>
</div>

@include('layout.footer')
