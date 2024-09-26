
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<!-- CSS -->
<style>
/* Chiều cao của Main Image bằng 50% chiều cao viewport */
.main-image {
	height: 52.6vh; /* 50% chiều cao của viewport */
	width: 98%;
	object-fit: cover; /* Giữ tỷ lệ hình ảnh mà không bị bóp méo */
}

/* Mỗi ảnh nhỏ sẽ có chiều cao 1/3 của Main Image */
.side-image {
	height: calc(50vh/ 3); /* Tính toán chiều cao */
	width: 100%; /* Đặt chiều ngang của ảnh nhỏ */
	object-fit: cover; /* Đảm bảo ảnh không bị bóp méo */
}

/* Đặt chiều ngang của cột chứa mỗi ảnh nhỏ */
.col-6 {
	width: 100%;
	/* Chiều ngang của ảnh nhỏ là 1/2 chiều ngang của ảnh chính */
}

.col-md-4 {
	height: 50vh; /* Đặt chiều cao của cột chứa ảnh nhỏ */
	padding: 0; /* Loại bỏ khoảng đệm giữa cột chứa ảnh nhỏ và ảnh chính */
}

.row.no-gutters {
	margin: 0; /* Loại bỏ khoảng cách giữa các hàng */
}

/* Đảm bảo không có padding trong cột */
.p-0 {
	padding: 0 !important; /* Loại bỏ padding nếu có */
}

.mx-auto {
	margin-left: 0;
	margin-right: 0;
	/* Đảm bảo ảnh được căn đều không có khoảng cách thừa */
}

/* Đảm bảo chiều cao ảnh nhỏ không vượt quá cột cha */
.flex-grow-1 {
	flex-grow: 1; /* Cho phép ảnh nhỏ sử dụng không gian còn lại */
}
/* Giảm khoảng cách của tiêu đề */
.col-lg-8.ps-3 {
	margin-top: -30px; /* Giảm giá trị margin-top xuống mức mong muốn */
}
</style>
</head>
<body>
	<jsp:include page="/common/header.jsp" />

	<div class="row">
		<div class="col-8 mx-auto my-4">
			<div class="container">
				<div class="row no-gutters">
					<!-- Main Image -->
					<div class="col-lg-8 pe-0">
						<img src="../photo/anh 0.jpg" class="img-fluid rounded main-image"
							alt="Main Image">
					</div>

					<!-- Side Images -->
					<div class="col-lg-4 d-flex flex-column ps-0">
						<div class="row no-gutters flex-grow-1">
							<div class="col-6 pb-2 ps-0">
								<img src="../photo/1.jpg" class="img-fluid rounded side-image"
									alt="Top Right Image">
							</div>
						</div>
						<div class="row no-gutters flex-grow-1">
							<div class="col-6 pb-2 ps-0">
								<img src="../photo/2.jpg" class="img-fluid rounded side-image"
									alt="Bottom Left Image">
							</div>
						</div>
						<div class="row no-gutters flex-grow-1">
							<div class="col-6 pb-2 ps-0">
								<img src="../photo/3.jpg" class="img-fluid rounded side-image"
									alt="Bottom Right Image">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<
	<div class="row mt-0">
		<div class="col-8 mx-auto my-4">
			<div class="container">
				<div class="row">
					<!-- Thêm div.row để tạo một hàng mới -->
					<div class="col-lg-8 ps-3">
						<h2>KIA MORNING 2011</h2>
						<p>
							<i class="bi bi-star-fill" style="color: yellow;"></i> 5.0 • <i
								class="bi bi-suitcase" style="color: green"></i> 8 chuyến • Quận
							Bình Thạnh • TP. Hồ Chí Minh
						</p>
						<div class="d-flex gap-2">
							<button type="button" class="btn"
								style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem; background-color: rgba(0, 123, 255, 0.5); color: black; font-weight: 300; outline: none; border: none;">Số
								tự động</button>
							<button type="button" class="btn"
								style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem; background-color: rgba(255, 165, 0, 0.5); color: black; font-weight: 300; outline: none; border: none;">
								Đặt xe nhanh</button>
							<button type="button" class="btn"
								style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem; background-color: rgba(0, 128, 0, 0.5); color: black; font-weight: 300; outline: none; border: none;">
								Miễn thế chấp</button>
						</div>
						<hr>
						<h5 style="margin-bottom: 20px; margin-top: 20px">Đặc điểm</h5>
						<div class="row" style="margin-left: -45px">
							<div class="col text-center">
								<div class="d-flex align-items-center justify-content-center">
									<i class="bi bi-person"
										style="font-size: 24px; margin-right: 8px; line-height: 1;"></i>
									<div>
										<p style="margin: 0;">Số ghế</p>
										<p style="margin: 0; font-weight: bold;">4 chỗ</p>
									</div>
								</div>
							</div>
							<div class="col text-center">
								<div class="d-flex align-items-center justify-content-center">
									<i class="bi bi-speedometer"
										style="font-size: 24px; margin-right: 8px; line-height: 1;"></i>
									<div>
										<p style="margin: 0;">Truyền động</p>
										<p style="margin: 0; font-weight: bold;">Số tự động</p>
									</div>
								</div>
							</div>
							<div class="col text-center">
								<div class="d-flex align-items-center justify-content-center">
									<i class="bi bi-gear"
										style="font-size: 24px; margin-right: 8px; line-height: 1;"></i>
									<div>
										<p style="margin: 0;">Nhiên liệu</p>
										<p style="margin: 0; font-weight: bold;">Xăng</p>
									</div>
								</div>
							</div>
							<div class="col text-center">
								<div class="d-flex align-items-center justify-content-center">
									<i class="bi bi-paint-bucket"
										style="font-size: 24px; margin-right: 8px; line-height: 1;"></i>
									<div>
										<p style="margin: 0;">NL tiêu hao</p>
										<p style="margin: 0; font-weight: bold;">6 lít/100km</p>
									</div>
								</div>
							</div>
						</div>
						<hr>
						<h5 style="margin-top: 20px; margin-bottom: 20px">Mô tả</h5>
						<div id="car-description">
							<p>KIA MORNING (AT) số tự động đăng ký tháng 06/2018. Xe gia
								đình mới đẹp, nội thất nguyên bản, sạch sẽ, bảo dưỡng thường
								xuyên, rửa xe miễn phí cho khách. Xe rộng rãi, an toàn, tiện
								nghi, phù hợp cho gia đình du lịch Xe trang bị hệ thống cảm biến
								lùi, gạt mưa tự động, đèn pha tự động, camera hành trình, hệ
								thống giải trí AV cùng nhiều tiện nghi khác…</p>
						</div>
						<hr>
						<h5 style="margin-top: 20px; margin-bottom: 20px">Các tiện
							nghi khác</h5>
						<div class="row g-4">
							<div class="col-3 d-flex align-items-center text-center">
								<i class="bi bi-map"
									style="font-size: 18px; margin-right: 10px;"></i> <span
									style="font-size: 14px;">Bản đồ</span>
							</div>
							<div class="col-3 d-flex align-items-center text-center">
								<i class="bi bi-camera-360"
									style="font-size: 18px; margin-right: 10px;"></i> <span
									style="font-size: 14px;">Camera 360</span>
							</div>
							<div class="col-3 d-flex align-items-center text-center">
								<i class="bi bi-camera"
									style="font-size: 18px; margin-right: 10px;"></i> <span
									style="font-size: 14px;">Camera cập lề</span>
							</div>
							<div class="col-3 d-flex align-items-center text-center">
								<i class="bi bi-camera-rear"
									style="font-size: 18px; margin-right: 10px;"></i> <span
									style="font-size: 14px;">Camera hành trình</span>
							</div>
							<div class="col-3 d-flex align-items-center text-center">
								<i class="bi bi-camera-fill"
									style="font-size: 18px; margin-right: 10px;"></i> <span
									style="font-size: 14px;">Camera lùi</span>
							</div>
							<div class="col-3 d-flex align-items-center text-center">
								<i class="bi bi-speedometer"
									style="font-size: 18px; margin-right: 10px;"></i> <span
									style="font-size: 14px;">Cảnh báo tốc độ</span>
							</div>
							<div class="col-3 d-flex align-items-center text-center">
								<i class="bi bi-window"
									style="font-size: 18px; margin-right: 10px;"></i> <span
									style="font-size: 14px;">Cửa sổ trời</span>
							</div>
							<div class="col-3 d-flex align-items-center text-center">
								<i class="bi bi-pin-map"
									style="font-size: 18px; margin-right: 10px;"></i> <span
									style="font-size: 14px;">Định vị GPS</span>
							</div>
							<div class="col-3 d-flex align-items-center text-center">
								<i class="bi bi-usb"
									style="font-size: 18px; margin-right: 10px;"></i> <span
									style="font-size: 14px;">Khe cắm USB</span>
							</div>
							<div class="col-3 d-flex align-items-center text-center">
								<i class="bi bi-bicycle"
									style="font-size: 18px; margin-right: 10px;"></i> <span
									style="font-size: 14px;">Lốp dự phòng</span>
							</div>
							<div class="col-3 d-flex align-items-center text-center">
								<i class="bi bi-credit-card"
									style="font-size: 18px; margin-right: 10px;"></i> <span
									style="font-size: 14px;">ETC</span>
							</div>
							<div class="col-3 d-flex align-items-center text-center">
								<i class="bi bi-shield"
									style="font-size: 18px; margin-right: 10px;"></i> <span
									style="font-size: 14px;">Túi khí an toàn</span>
							</div>
						</div>
					</div>
					<div class="col-lg-4" style="margin-top: -50px; margin-left: -20px">
						<div class="border rounded p-3"
							style="border: 1px solid #ccc; max-height: 150px; overflow: auto;">
							<div class="d-flex align-items-center mb-2">
								<i class="bi bi-shield-fill"
									style="font-size: 24px; margin-right: 8px; line-height: 1; color: green;"></i>
								<h4 style="color: green; font-size: 14px;">Bảo hiểm thuê xe</h4>
							</div>
							<p style="margin-bottom: 10px; font-size: 12px; padding-left: 32px;">Chuyến đi có
								mua bảo hiểm. Khách thuê bồi thường tối đa 2.000.000 VNĐ trong
								trường hợp có cự cố ý muốn.</p>
							<h5 style="color: black; margin-bottom: 0; font-size: 12px; padding-left: 32px;">Xem
								chi tiết</h5>
						</div>
						
						
					</div>
				</div>
			</div>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

</body>
</html>