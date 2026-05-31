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

    
    <h3>Data Patient </h3>
     
    <form action="/export-patients" method="GET" class="formexport">
        @csrf
        <label>Dari Tanggal:</label>
        <input type="date" name="from" class="awal" required>

        <br><br>

        <label>Sampai Tanggal:</label>
        <input type="date" name="to" class="akhir" required>

        <br><br>

        <button type="submit" class="btn_export">Export Excel</button>
    </form>

    <div class="table-container">
        <table id="users-table"
            class="display"
            style="width:100%">

            <thead>

                <tr>
                    <th>ID</th>
                    <th>Nama</th>
                    <th>Email</th>
                    <th>Created At</th>
                </tr>

            </thead>

        </table>
    </div>

</div>

@include('layout.footer')
