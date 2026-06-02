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

    @if(session('success'))
        <div style="border: 1px solid #ccc; background-color: green; color : white; padding:5px;">
            {{ session('success') }}
        </div>
    @endif

    <br>

    @if(session('error'))
        <div style="border: 1px solid #ccc; background-color: red; color : white; padding:5px;">
            {{ session('error') }}
        </div>
    @endif

    <br>
     
    <form action="/updateaccount" method="POST" class="accountform">
        @csrf
        <label>Password Baru :</label>
        <input type="password" name="password" class="awal" required>
        <br><br>
        <label>Confirmation:</label>
        <input type="password" name="confirm" class="akhir" required>
        <br><br>
        <button type="submit" class="btn_export">Export Excel</button>
    </form>
</div>

@include('layout.footer')
