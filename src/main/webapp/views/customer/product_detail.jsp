a
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
<link href="../css/product_detail.css" rel="stylesheet">
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- jQuery UI -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<!-- jQuery UI CSS -->
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
</head>
<body>
	<jsp:include page="/common/header.jsp" />

	<div class="row">
		<div class="col-10 mx-auto my-4">
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

	<div class="row mt-0">
		<div class="col-10 mx-auto my-4">
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
						<hr>
						<h5>Giấy tờ thuê xe</h5>
						<div class="document-section p-3 mb-3">
							<p class="instruction">Chọn 1 trong 2 hình thức:</p>
							<ul class="list-unstyled highlight-list">
								<li><i class="bi bi-person-vcard" style="color: black;"></i><strong>GPLX
										(đối chiếu)</strong> & CCCD (đối chiếu VNeID)</li>
								<li><i class="bi bi-card-checklist" style="color: black"></i><strong>GPLX
										(đối chiếu)</strong> & Passport (giữ lại)</li>
							</ul>
						</div>
						<h5>Tài sản thế chấp</h5>
						<div class="document-section p-3 pb-1 mb-3">
							<p>Không yêu cầu khách thuê thế chấp Tiền mặt hoặc Xe máy</p>
						</div>
						<h5>Điều khoản</h5>
						<pre style="font: normal;">
◦ Sử dụng xe đúng mục đích.
◦ Không sử dụng xe thuê vào mục đích phi pháp, trái pháp luật.
◦ Không sử dụng xe thuê để cầm cố, thế chấp.
◦ Không hút thuốc, nhả kẹo cao su, xả rác trong xe.
◦ Không chở hàng quốc cấm dễ cháy nổ.
◦ Không chở hoa quả, thực phẩm nặng mùi trong xe.
◦ Khi trả xe, nếu xe bẩn hoặc có mùi trong xe, khách hàng vui lòng vệ sinh xe sạch sẽ hoặc 
  gửi phụ thu phí vệ sinh xe.
Trân trọng cảm ơn, chúc quý khách hàng có những chuyến đi tuyệt vời !</pre>
						<h5>Chính sách huỷ chuyến</h5>
						<div class="table-responsive">
							<table class="table table-bordered text-center">
								<thead>
									<tr>
										<th scope="col">Thời Điểm Hủy Chuyến</th>
										<th scope="col">Khách Thuê Hủy Chuyến</th>
										<th scope="col">Chủ Xe Hủy Chuyến</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Trong Vòng 1h Sau Giữ Chỗ</td>
										<td><i class="bi bi-check-circle-fill text-success"></i>
											Hoàn tiền giữ chỗ 100%</td>
										<td><i class="bi bi-check-circle-fill text-success"></i>
											Không tốn phí <br> <small>(Đánh giá hệ thống 3*)</small></td>
									</tr>
									<tr>
										<td>Trước Chuyến Đi > 7 Ngày</td>
										<td><i class="bi bi-check-circle-fill text-success"></i>
											Hoàn tiền giữ chỗ 70%</td>
										<td><i class="bi bi-check-circle-fill text-success"></i>
											Đền tiền 30% <br> <small>(Đánh giá hệ thống 3*)</small></td>
									</tr>
									<tr>
										<td>Trong Vòng 7 Ngày Trước Chuyến Đi</td>
										<td><i class="bi bi-x-circle-fill text-danger"></i> Không
											hoàn tiền</td>
										<td><i class="bi bi-x-circle-fill text-danger"></i> Đền
											tiền 100% <br> <small>(Đánh giá hệ thống 2*)</small></td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr>
						<h5>Chủ xe</h5>
						<div class="owner-info row">
							<div class="col-auto owner-image">
								<img src="../photo/owner.jpg" alt="Owner Image"
									class="owner-img rounded-circle">
							</div>
							<div class="col owner-details">
								<h3 class="owner-name">LÂM THỊ THÚY KIỀU</h3>
								<p class="rating">
									<strong>5.0</strong> ⭐ | 8 chuyến
								</p>
								<div class="response-stats">
									<div class="stat-item">
										<p class="response-info">Tỉ lệ phản hồi</p>
										<p class="stat-value">
											<strong>100%</strong>
										</p>
									</div>
									<div class="stat-item">
										<p class="response-info">Thời gian phản hồi</p>
										<p class="stat-value">
											<strong>5 phút</strong>
										</p>
									</div>
									<div class="stat-item">
										<strong><p class="agreement-info">Tỉ lệ đồng ý</p></strong>
										<p class="stat-value">
											<strong>87%</strong>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="highlight">
							<p class="highlight-text">Chủ xe 5* có thời gian phản hồi
								nhanh chóng, tỉ lệ đồng ý cao, mức giá cạnh tranh & dịch vụ nhận
								được nhiều đánh giá tốt từ khách hàng.</p>
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
							<p
								style="margin-bottom: 10px; font-size: 12px; padding-left: 32px;">Chuyến
								đi có mua bảo hiểm. Khách thuê bồi thường tối đa 2.000.000 VNĐ
								trong trường hợp có cự cố ý muốn.</p>
							<h5
								style="color: black; margin-bottom: 0; font-size: 12px; padding-left: 32px;">Xem
								chi tiết</h5>
						</div>
						<div class="rent-box card p-4 mb-3">
							<div class="d-flex align-items-center mb-2">
								<span class="price-original text-muted fs-5 me-2">505K</span> <span
									class="price-discount bg-warning text-dark rounded p-1 fs-8"
									style="font-size: 0.75rem;">-23%</span>
							</div>
							<h3 class="price-daily text-dark">
								405K <span class="text-muted" style="font-size: 0.875rem;">/ngày</span>
							</h3>

							<!-- Box cho Nhận xe và Trả xe -->
							<div class="row mt-4">
								<div class="col-6 text-center border p-3 cursor-pointer">
									<div class="fw-bold">Nhận xe</div>
									<div class="input-group date" id="pickup-date-picker">
										<input type="text" class="form-control" id="pickup-date"
											placeholder="Chọn ngày">
										<div class="input-group-append">
											<span class="input-group-text"><i
												class="bi bi-calendar"></i></span>
										</div>
									</div>
									<select class="form-control mt-2" id="pickup-time">
										<option value="">Chọn giờ</option>
										<%
										for (int i = 0; i < 24; i++) {
										%>
										<option value="<%=String.format("%02d:00", i)%>"><%=String.format("%02d:00", i)%></option>
										<%
										}
										%>
									</select>
								</div>
								<div class="col-6 text-center border p-3 cursor-pointer">
									<div class="fw-bold">Trả xe</div>
									<div class="input-group date" id="return-date-picker">
										<input type="text" class="form-control" id="return-date"
											placeholder="Chọn ngày">
										<div class="input-group-append">
											<span class="input-group-text"><i
												class="bi bi-calendar"></i></span>
										</div>
									</div>
									<select class="form-control mt-2" id="return-time">
										<option value="">Chọn giờ</option>
										<%
										for (int i = 0; i < 24; i++) {
										%>
										<option value="<%=String.format("%02d:00", i)%>"><%=String.format("%02d:00", i)%></option>
										<%
										}
										%>
									</select>
								</div>
							</div>
							<div class="mt-3">
								<p id="pickup-display" class="text-muted mb-1"
									style="font-size: 0.75rem;">Ngày giờ nhận xe: Chưa chọn</p>
								<p id="return-display" class="text-muted mb-1"
									style="font-size: 0.75rem;">Ngày giờ trả xe: Chưa chọn</p>
							</div>
<!-- 							<div class="mt-3 p-2 bg-light rounded"> -->
<!-- 								<p class="text-muted mb-1" style="font-size: 0.75rem;">Địa -->
<!-- 									điểm giao xe</p> -->
<!-- 								<h6 class="fw-bold" style="font-size: 0.875rem;">Quận Bình -->
<!-- 									Thạnh, TP Hồ Chí Minh</h6> -->
<!-- 							</div> -->
							<hr>
							<div class="mt-2">
								<div class="d-flex justify-content-between">
									<i class="bi bi-question-circle">Đơn giá thuê</i> <span
										class="fw-bold">405K</span>
									<!-- Thay giá thuê ở đây -->
								</div>
								<div class="d-flex justify-content-between">
									<i class="bi bi-question-circle">Bảo hiểm thuê xe</i> <span
										class="fw-bold">100K</span>
									<!-- Thay giá bảo hiểm ở đây -->
								</div>
							</div>
							<hr>
							<div class="form-group mt-3">

								<!-- Radio button Chương trình giảm giá -->
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="discountOption" id="programDiscount" value="program">
									<label class="form-check-label" for="programDiscount">
										Chương trình giảm giá </label>
								</div>

								<!-- Radio button Mã giảm giá -->
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="discountOption" id="codeDiscount" value="code">
									<label class="form-check-label" for="codeDiscount"> Mã
										giảm giá </label>
								</div>
							</div>
							<hr>
							<div class="mt-2">
								<div class="d-flex justify-content-between">
									Tổng cộng <span class="fw-bold">505K</span>
									<!-- Thay giá thuê ở đây -->
								</div>
							</div>
							<div class="text-center mt-3">
								<button type="button" class="btn btn-success btn-lg px-5">Thuê</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/common/footer.jsp" />


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
<script>
$(document).ready(function() {
    $('#pickup-date-picker, #return-date-picker').datepicker({
        format: 'dd/mm/yyyy',
        autoclose: true,
        todayHighlight: true
    });

    function updateDateTimeDisplay() {
        var pickupDate = $('#pickup-date').val();
        var pickupTime = $('#pickup-time').val();
        var returnDate = $('#return-date').val();
        var returnTime = $('#return-time').val();

        var pickupDisplay = pickupDate && pickupTime ? pickupDate + ' ' + pickupTime : 'Chưa chọn';
        var returnDisplay = returnDate && returnTime ? returnDate + ' ' + returnTime : 'Chưa chọn';

        $('#pickup-display').text('Ngày giờ nhận xe: ' + pickupDisplay);
        $('#return-display').text('Ngày giờ trả xe: ' + returnDisplay);
    }

    $('#pickup-date, #pickup-time, #return-date, #return-time').change(updateDateTimeDisplay);

    // Initial update
    updateDateTimeDisplay();
});
</script>
</body>
</html>