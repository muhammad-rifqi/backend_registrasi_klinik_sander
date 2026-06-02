@include('layout.header')

@include('layout.sidebar')
<div class="main">
    <div class="topbar">
        <h2>Hisotry</h2>

        <div class="profile">
            Halo {{$xxx1}}
        </div>
    </div>
     
   <h3>History Patient </h3>
  
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
                </tr>

            </thead>

        </table>
    </div>
</div>

@include('layout.footer')
