jQuery(document).ready(function () {
   //Init Datatables.
    tblciol();
});

//Datatables.
function tblciol() {
    $.ajax({
        type: "POST",
        url: '',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (returndata) {

            $('#tblciol').DataTable({
                "bStateSave": true,
                "lengthMenu": [[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]], //[10, 25, 50, 75, 100, "All"],
                "pagingType": 'full',
                "deferRender": true,
                "columnDefs": [
                    { "width": "11%", "targets": 0 },
                    { "width": "11%", "targets": 1 },
                    { "width": "11%", "targets": 2 },
                    { "width": "4%", "targets": 3 }
                ],
                dom: 'flrBtip',
                "order": [1, "desc"],
                buttons: [
                    {
                        text: 'New',
                        className: 'btn btn-primary',
                        action: function (e, node, config) {
                        }
                    },
                    {
                        text: 'EXCEL',
                        extend: 'excelHtml5',
                        filename: 'CIOL - TABLE'
                    }
                ],
                destroy: true,
                data: returndata,
                columns: [
                    { data: "row_no", title: "No."},
                    { data: "dateadded", title: "Date Added" },
                    { data: "enteredby", title: "Entered By" },
                    { data: "description", title: "Issue / Problem / Opportunity" },
                    { data: "countermeasure", title: "Counter Measure" },
                    { data: "responsible", title: "Person Responsible" },
                    { data: "duedate", title: "Due Date" },
                    { data: "comp", title: "Comp." }
                ]                
            });
        },
        failure: function (response) {
           //Fancy Error Message.
        }
    });
}
