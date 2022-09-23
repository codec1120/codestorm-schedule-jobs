$(document).ready(function ($) {
    var baseUrl = $('#baseUrl').val();
    // Scheduled Jobs
    $('#orderList').DataTable({
        searching: true,
        ajax: {
            url: `${baseUrl}order/schedules/jobs`,
            contentType: "application/json",
            type: "GET",
            dataSrc: function (response) {
              return response.record;
            }
        },
        columns: [
            { data: 'customer' },
            { data: 'priority' },
            { data: 'order_id' },
            { data: 'client_order_ref' },
            { data: 'date_added' },
            { data: 'from_date' },
            { data: 'to_date' },
            // { title: "Action", 
            //     "render": function(data, type, row, meta) {
            //         return `
            //         <button type="button" class="btn btn-danger"  id="removeOrder"><i class="bi bi-eraser"></i> </button>
            //         `;
            //     }
            // }
        ],
        scrollY:        true,
        scrollCollapse: true,
        columnDefs: [
            {
                orderable: false,
                targets: [1, 2, 3],
            },
        ],
    });

    // Schedules
    $('#schedules').DataTable({
        searching: true,
        ajax: {
            url: `${baseUrl}order/schedules`,
            contentType: "application/json",
            type: "GET",
            dataSrc: function (response) {
            return response.record;
            }
        },
        columns: [
            { data: 'id' },
            { data: 'start_date' },
            { data: 'end_date' },
            { title: "Action", 
                "render": function(data, type, row, meta) {
                    return `
                        <button type="button" class="btn btn-primary"  id="editSchedule" data-request-id="${row.id}"><i class="bi bi-pen"></i> </button>
                        <button type="button" class="btn btn-danger"  id="editSchedule" data-delete-id="${row.id}"><i class="bi bi-trash"></i> </button>
                    `;
                }
            }
        ],
        scrollY:        true,
        scrollCollapse: true
    });

    
    $('#schedules').on( 'click', 'tbody tr button', function (a,e) {
        if (this.dataset.requestId) {
            const requestId = this.dataset.requestId,
            url = `${baseUrl}order/schedules/${requestId}`;

            $.ajax({
                url: url, 
                dataType: 'json',
                type: 'GET',
                success: function (response) {
                    const {record} = response;
                    $('#reworkScheduleModal').modal('show');
                    $('#startDate').val(record.start_date);
                    $('#endDate').val(record.end_date);
                    $('#scheduleId').val(record.id);
                }
            });
        } else {
            const requestId = this.dataset.deleteId,
            url = `${baseUrl}order/schedules/delete/${requestId}`;

            $.ajax({
                url: url, 
                dataType: 'json',
                type: 'DELETE',
                success: function (response) {
                    const {message, success} = response;

                    if (success) {
                        $('#main-alert-info').css('display', 'block');
                        $('#main-alert-info').text(message);
                        $('#startDate').val(null)
                        $('#endDate').val(null)
                        $('#scheduleId').val(null)

                        setTimeout(() => {
                            $('#reworkScheduleModal').modal('hide');
                            $('#orderList').DataTable().ajax.reload();
                            $('#schedules').DataTable().ajax.reload();
                        },3000);
                    
                    } else {
                        $('#main-alert-danger').css('display', 'block');
                        $('#main-alert-danger').text(message);
                    }

                    setTimeout(() => {
                        $('#main-alert-danger').css('display', 'none');
                        $('#main-alert-info').css('display', 'none');
                    },3000);
                }
            });
        }
        
    } );

    $('[data-bs-toggle="tab"]').on('shown.bs.tab', function(e){console.log('test')
        $($.fn.dataTable.tables(true)).DataTable()
           .columns.adjust();
     });

    $('#bootstrap-datepicker input').datepicker({
        format: "mm/dd/yyyy",
        toggleActive: true,
        todayBtn: "linked",
        changeMonth: true,
        changeYear: true
    });

    $('#addReworkScheduleBtn').on('click', function() {
        $('#reworkScheduleModal').modal('show');
    })

    $('#addSchedule').on('click', function() {
        const url = `${baseUrl}order/addSchedule`;
        
        if ($('#startDate').val() == '' || $('#endDate').val() == '') {
            $('#alert-danger').css('display', 'block');
            $('#alert-danger').text('Start and End Date is required.');

            setTimeout(() => {
                $('#alert-danger').css('display', 'none');
            },3000);
        }

        data = {
            startDate : $('#startDate').val(),
            endDate : $('#endDate').val(),
            scheduleId : $('#scheduleId').val()
        };

        $.ajax({
            url: url, 
            dataType: 'json',
            type: 'POST',
            data: data,
            success: function (response) {
                const {message, success} = response;

                if (success) {
                    $('#alert-info').css('display', 'block');
                    $('#alert-info').text(message);
                    $('#startDate').val(null)
                    $('#endDate').val(null)
                    $('#scheduleId').val(null)
                    setTimeout(() => {
                        $('#reworkScheduleModal').modal('hide');
                        $('#orderList').DataTable().ajax.reload();
                        $('#schedules').DataTable().ajax.reload();
                    },3000);
                   
                } else {
                    $('#alert-danger').css('display', 'block');
                    $('#alert-danger').text(message);
                }

                 setTimeout(() => {
                    $('#alert-danger').css('display', 'none');
                    $('#alert-info').css('display', 'none');
                },3000);
            }
        });
    })
});