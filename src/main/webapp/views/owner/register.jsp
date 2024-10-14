<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mioto - Ứng dụng cho thuê xe</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>Document</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
 <style>
         .highlight-text {
            color: #00b14f;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        .card img {
            border-radius: 15px;
        }
        .custom-table {
            border: 1px solid #e5e5e5;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .custom-table th, .custom-table td {
            text-align: center;
            padding: 15px;
        }
    </style>
</head>
<body>
<jsp:include page="/common/header.jsp" />
	<div class="container">
    <div class="card mt-4">
        <div class="row align-items-center">
            <!-- Text Section -->
            <div class="col-md-6">
                <h2><span class="highlight-text">Cho Thuê Xe</span> Trên Mioto<br>Để Gia Tăng Thu Nhập Đến 10tr/Tháng!</h2>
                <p class="mt-4">Mioto không thu phí khi bạn đăng xe. Bạn chỉ chia sẻ phí dịch vụ với Mioto khi có giao dịch cho thuê thành công.</p>
                <p>Hotline: <strong>1900 9217</strong> (T2-T7 9AM-9PM)<br>Hoặc để lại tin nhắn cho Mioto qua Fanpage</p>
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg mt-3" data-bs-toggle="modal" data-bs-target="#registerModal">
                  Đăng ký ngay
                </button>
            </div>
            <!-- Image Section -->
            <div class="col-md-6">
                <img src="https://www.zurich.ie/-/media/project/zurichie/zurichmainsite/blog/20230116-motorway-driving/man-driving-car-300x150.jpg" 
                     class="img-fluid" alt="Hình ảnh lái xe">
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="registerModal" tabindex="-1" aria-labelledby="registerModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="registerModalLabel">Đăng ký xe cho thuê</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form>
                <div class="mb-3">
                    <label for="region" class="form-label">Khu vực cho thuê</label>
                    <select class="form-select" id="region">
                        <option selected>Chọn khu vực</option>
                        <option value="1">TP.HCM</option>
                        <option value="2">Hà Nội</option>
                        <option value="3">Đà Nẵng</option>
                        <option value="4">Bình Dương</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="ownerName" class="form-label">Tên chủ xe</label>
                    <input type="text" class="form-control" id="ownerName" placeholder="Tên của bạn">
                </div>
                <div class="mb-3">
                    <label for="phoneNumber" class="form-label">Số di động</label>
                    <input type="text" class="form-control" id="phoneNumber" placeholder="Số của bạn">
                </div>
                <div class="mb-3">
                    <label for="carType" class="form-label">Xe cho thuê</label>
                    <input type="text" class="form-control" id="carType" placeholder="Loại xe của bạn">
                </div>
                <button type="submit" class="btn btn-success w-100">Gửi thông tin đến MIOTO</button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <h2 class="text-center mt-4">Thu nhập ước tính của chủ xe</h2>
    <p class="text-center">Mioto dựa trên dữ liệu thu nhập bình quân 6 tháng gần nhất của các chủ xe đang kinh doanh hiệu quả trên hệ thống và thống kê theo từng khu vực.</p>
    
    <div class="table-responsive">
        <table class="table table-bordered custom-table">
            <thead>
                <tr>
                    <th>Khu vực</th>
                    <th>Thu nhập / tháng<br>(Sau khi trừ phí dịch vụ)</th>
                    <th>Số ngày cho thuê / tháng</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>TP.HCM (khu vực trung tâm)</td>
                    <td>Từ 5 - 10 triệu</td>
                    <td>Từ 6 - 12 ngày</td>
                </tr>
                <tr>
                    <td>TP.HCM (khu vực ngoại thành)</td>
                    <td>3 - 6 triệu</td>
                    <td>4 - 8 ngày</td>
                </tr>
                <tr>
                    <td>Hà Nội (khu vực trung tâm)</td>
                    <td>5 - 8 triệu</td>
                    <td>6 - 10 ngày</td>
                </tr>
                <tr>
                    <td>Hà Nội (khu vực ngoại thành)</td>
                    <td>3 - 6 triệu</td>
                    <td>4 - 8 ngày</td>
                </tr>
                <tr>
                    <td>Đà Nẵng</td>
                    <td>3 - 6 triệu</td>
                    <td>4 - 8 ngày</td>
                </tr>
                <tr>
                    <td>Bình Dương</td>
                    <td>3 - 6 triệu</td>
                    <td>4 - 8 ngày</td>
                </tr>
                <tr>
                    <td>Biên Hòa</td>
                    <td>3 - 6 triệu</td>
                    <td>4 - 8 ngày</td>
                </tr>
                <tr>
                    <td>Đà Lạt</td>
                    <td>3 - 6 triệu</td>
                    <td>4 - 8 ngày</td>
                </tr>
                <tr>
                    <td>Hải Phòng</td>
                    <td>3 - 6 triệu</td>
                    <td>4 - 8 ngày</td>
                </tr>
                <tr>
                    <td>Nha Trang</td>
                    <td>2 - 5 triệu</td>
                    <td>3 - 6 ngày</td>
                </tr>
                <tr>
                    <td>Quy Nhơn</td>
                    <td>2 - 5 triệu</td>
                    <td>3 - 6 ngày</td>
                </tr>
                <tr>
                    <td>TP khác</td>
                    <td>2 - 5 triệu</td>
                    <td>3 - 6 ngày</td>
                </tr>
            </tbody>
        </table>
    </div>

    <p class="text-center mt-3">
        * Lưu ý: Thu nhập của chủ xe khi cho thuê trên Mioto còn tùy thuộc vào nhiều yếu tố, bao gồm thời gian xe sẵn sàng cho thuê mỗi tháng, mức giá cho thuê và nhu cầu thuê xe ở khu vực của bạn.
    </p>
</div>
<jsp:include page="/common/footer.jsp" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"></script>
</body>
</html>