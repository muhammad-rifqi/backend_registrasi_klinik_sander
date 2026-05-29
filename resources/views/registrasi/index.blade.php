<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Laravel Datatables Manual Server Side</title>

    <!-- DATATABLES CSS -->
    <link rel="stylesheet"
          href="https://cdn.datatables.net/1.13.8/css/jquery.dataTables.min.css">

    <style>

        body{
            font-family: Arial;
            padding: 30px;
        }

        h2{
            margin-bottom: 20px;
        }

    </style>

</head>

<body>

    <h2>Users DataTable Server Side</h2>

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

    <!-- JQUERY -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <!-- DATATABLES JS -->
    <script src="https://cdn.datatables.net/1.13.8/js/jquery.dataTables.min.js"></script>

    <script>

        $(document).ready(function () {

            $('#users-table').DataTable({

                processing: true,

                serverSide: true,

                searchDelay: 500,

                ajax: {
                    url: '/users/data',
                    type: 'GET'
                },

                columns: [

                    {
                        data: 'id',
                        name: 'id'
                    },

                    {
                        data: 'name',
                        name: 'name'
                    },

                    {
                        data: 'email',
                        name: 'email'
                    },

                    {
                        data: 'created_at',
                        name: 'created_at'
                    }

                ],

                pageLength: 10,

                lengthMenu: [
                    [10, 25, 50, 100],
                    [10, 25, 50, 100]
                ],

                order: [[0, 'desc']]

            });

        });

    </script>

</body>

</html>