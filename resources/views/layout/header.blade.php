<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>
  <link rel="stylesheet" href="{{ asset('css/dashboard.css') }}">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.13.8/css/jquery.dataTables.min.css">
    <style>
        h3{
            margin-bottom: 20px;
            margin-left : 10px;
        }
        .formexport{
          padding : 10px;
        }
        .awal,
        .akhir {
          padding: 5px;
        }

        .btn_export{
          padding: 5px;
          background-color: #3b71ca;
          color : #fff;
        }
    </style>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>