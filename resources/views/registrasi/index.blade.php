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
     
    <!-- <form action="/export-patients" method="GET" class="formexport">
        @csrf
        <label>From:</label>
        <input type="date" name="from" class="awal" required>

        <br><br>

        <label>To:</label>
        <input type="date" name="to" class="akhir" required>

        <br><br>

        <button type="submit" class="btn_export">Export Excel</button>
    </form> -->

    <div class="table-container">
        <table id="users-table"
            class="display"
            style="width:100%">

            <thead>

                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>NIK</th>
                    <th>Email</th>
                    <!-- <th>Action</th> -->
                </tr>

            </thead>

        </table>
    </div>

</div>

@include('layout.footer')
