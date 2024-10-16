<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chuyến của tôi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css" rel="stylesheet">
    
    <style>
        body {
            font-family: Arial, sans-serif;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Header -->
        <div class="row">
            <div class="col-12 text-center py-3">
                <h1>Xin chào bạn!</h1>
            </div>
        </div>

        <!-- Content -->
        <div class="row">
            <!-- Sidebar Menu -->
            <div class="col-md-3 mt-5">
<ul class="list-group">
    <li class="list-group-item"><a href="/myProfile/profile" style="text-decoration: none;">Thông tin của tôi</a></li>
    <li class="list-group-item"><a href="/myProfile/bookingHistory" style="text-decoration: none;">Chuyến đi của tôi</a></li>
    <li class="list-group-item"><a href="/myProfile/promotion" style="text-decoration: none;">Danh Sách khuyến mãi</a></li>
    <li class="list-group-item"><a href="/myProfile/changePass" style="text-decoration: none;">Đổi mật khẩu</a></li>
    <li class="list-group-item"><a href="/logout" style="text-decoration: none;">Đăng xuất</a></li>
</ul>

</div>


            <!-- Main Content -->
            <div class="col-md-9">
    <h2 class="text-center">Lịch sử chuyến</h2>

    <div class="col-12">
 
        <!-- Filter Button -->
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#filterModal">
            <i class="bi bi-funnel"></i> Filter
        </button>

        <!-- Modal -->
        <div class="modal fade" id="filterModal" tabindex="-1" aria-labelledby="filterModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="filterModalLabel">Bộ lọc</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <!-- Filter Fields -->
                        <form>
                            <div class="mb-3">
                                <label for="category" class="form-label">Loại chuyến</label>
                                <select id="category" class="form-select">
                                    <option selected>Tất cả</option>
                                    <option value="1">Chuyến thuê</option>
                                    <option value="2">Chuyến cho thuê</option>
                                </select>
                            </div>
                            
                            <div class="mb-3">
                                <label for="rating" class="form-label">Chọn trạng thái</label>
                                <select id="rating" class="form-select">
                                    <option selected>Tất cả</option>
                                    <option value="1">Chờ duyệt</option>
                                    <option value="2">Đã từ chối</option>
                                    <option value="3">Chờ đặt cọc</option>
                                    <option value="4">Đã đặt cọc</option>
                                    <option value="5">Đã huỷ</option>
                                    <option value="5">Đang thuê</option>
                                    <option value="5">Đã kết thúc</option>
                                </select>
                            </div>
						   <div class="mb-3">
						    <label for="date-input" class="form-label">Từ ngày:</label>
						    <input type="date" id="date-input" class="form-control">
						  </div>
						  <div class="mb-3">
						    <label for="date-input" class="form-label">Đến ngày:</label>
						    <input type="date" id="date-input" class="form-control">
						  </div>
                            
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                        <button type="button" class="btn btn-primary">Áp dụng</button>
                    </div>
                </div>
            </div>
        </div>
    </div>


    
    <div class="row mt-4" >
        
        <div class="col-md-9 ms-5 text-center py-3" >
        <img alt="" src="https://www.mioto.vn/static/media/empty-trip.8f191e42.svg">
            <h4>Bạn chưa có chuyến nào!</h4>
        </div>
    </div>
    </div>
</div>
            
        </div>

        <!-- Footer (optional) -->
       
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
