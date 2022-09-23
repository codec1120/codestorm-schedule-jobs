<div class="px-4">
    <div class="d-flex justify-content-end">
        <button type="button" class="btn btn-primary"  id="addReworkScheduleBtn"><i class="bi bi-arrow-clockwise"></i> Add Schedule to rework</button>
    </div>
    <ul class="nav nav-tabs" id="myTab" role="tablist">
    <li class="nav-item" role="presentation">
        <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true"><i class="bi bi-clock"></i> Scheduled Rework</button>
    </li>
    <li class="nav-item" role="presentation">
        <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false"><i class="bi bi-calendar3"></i> Schedules</button>
    </li>
    </ul>
    <div class="alert alert-primary" role="alert" id="main-alert-info" style="display:none">
    </div>
    <div class="alert alert-danger" role="alert" id="main-alert-danger" style="display:none">
    </div>
    <div class="tab-content p-4" id="myTabContent">
        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
            <table id="orderList" class="table table-striped mh-100">
                <thead>
                    <tr>
                        <th>Client</th>
                        <th>Priority</th>
                        <th>Order ID</th>
                        <th>Client Ref</th>
                        <th>Date Added</th>
                        <th>Plan Start Date</th>
                        <th>Plan Completed</th>
                        <!-- <th>Action</th> -->
                    </tr>
                </thead>
            </table>
        </div>
        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            <table id="schedules" class="table table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                        <th>Action</th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>
      <!-- Add Schedule Rework modal -->
        <div class="modal fade" id="reworkScheduleModal" tabindex="-1" aria-labelledby="reworkScheduleLAbel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Rework Schedule</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                        <div class="alert alert-primary" role="alert" id="alert-info" style="display:none">
                        </div>
                        <div class="alert alert-danger" role="alert" id="alert-danger" style="display:none">
                        </div>
                        <input type="hidden" id="scheduleId">
                        <div class="form-group mb-0" id="bootstrap-datepicker">
                            <label for="startDateLabel" class="form-label">Date Start</label>
                            <input class="form-control" type="text" data-provide="datepicker" id="startDate" name="StartDate" value="" required>
                        </div>
                        <div class="form-group mb-0 mt-2" id="bootstrap-datepicker">
                            <label for="endDateLabel" class="form-label">Date End</label>
                            <input class="form-control" type="text" data-provide="datepicker" id="endDate" name="endDate" value="" required>
                        </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" id="closeBtn" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="addSchedule">Apply</button>    
                </div>
                </div>
            </div>
        </div>
</div>