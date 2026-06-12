@include('layout.header')

@include('layout.sidebar')
<div class="main">
    <div class="topbar">
        <h2>History</h2>

        <div class="profile">
            Halo {{$xxx1}}
        </div>
    </div>
     
   <h3>History Patient </h3>
  
    <div class="table-container">
        <table id="history-table"
            class="display"
            style="width:100%">

            <thead>

                <tr>
                    <th>ID</th>
                    <th>Registration Number</th>
                    <th>Color Blind</th>
                    <th>Created At</th>
                </tr>

            </thead>

        </table>
    </div>
</div>

@include('layout.footer')
