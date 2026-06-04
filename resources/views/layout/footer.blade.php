
</body>
    <script src="{{asset('js/dashboard.js')}}"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.8/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#users-table').DataTable({
                processing: true,
                serverSide: true,
                stateSave: true,
                searchDelay: 500,
                ajax: {
                    url: 'https://dev.klinikdrsanderb-emcu.com/api/v1/patients/patients_registration',
                    type: 'GET',
                        headers: {
                                'Authorization': 'Bearer ' + decodeURIComponent(atob(getCookie('xxx3')))
                            }
                },
                columns: [
                    {
                        data: 'id',
                        name: 'id'
                    },
                    {
                        data: 'fullname',
                        name: 'fullname'
                    },
                    {
                        data: 'nik',
                        name: 'nik'
                    },
                    {
                        data: 'email',
                        name: 'email'
                    },
                    // { 
                    //     data: null,
                    //     render: function(data, type, row) {
                    //         return `
                    //             <button data-id="${row.id}" class="btn_export">
                    //                 Edit
                    //             </button>
                    //             <button data-id="${row.id}" class="btn_export">
                    //                 Delete
                    //             </button>
                    //         `;
                    //     },
                    // }
                ],
                pageLength: 10,
                lengthMenu: [
                    [10, 25, 50, 100],
                    [10, 25, 50, 100]
                ],
                order: [[0, 'desc']]
            });
        });

        function getCookie(name) {
            const value = `; ${document.cookie}`;
            const parts = value.split(`; ${name}=`);
            
            if (parts.length === 2) {
                return parts.pop().split(';').shift();
            }
        }
    </script>
</html>