@include('layout.header')

@include('layout.sidebar')
<div class="main">
    <div class="topbar">
        <h2>Setting</h2>

        <div class="profile">
            Halo {{$xxx1}}
        </div>
    </div>
    <h3>Account Setting </h3>
     
    <form action="/updateaccount" method="POST" class="accountform">
        @csrf
        <label>Password :</label>
        <input type="text" name="from" class="awal" required>
        <br><br>
        <label>Confirmation:</label>
        <input type="text" name="to" class="akhir" required>
        <br><br>
        <button type="submit" class="btn_export">Export Excel</button>
    </form>
</div>

@include('layout.footer')
