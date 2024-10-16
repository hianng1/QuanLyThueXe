<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Mioto - Ứng dụng cho thuê xe</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<!-- Font Awesome CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/style.css">

<style>
.nav-link {
	margin-left: 15px;
}

.hero-image {
	width: 100%;
	height: 450px;
	background:
		url('https://www.drivesafeonline.org/wp-content/uploads/2021/02/2021-traffic-laws-1080x675.jpg')
		center center;
	background-size: cover;
}

.navbar-brand img {
	width: 100px;
}
.card-img-top {
    width: 100%; /* Để ảnh co giãn theo chiều rộng của container */
    height: 350px; /* Chiều cao cố định */
    object-fit: cover; /* Giữ tỉ lệ ảnh và cắt ảnh để vừa với khung */
}
</style>
</head>
<body>
	<jsp:include page="/common/header.jsp" />
	<div class="container">
		<div
			class="hero-image d-flex align-items-center justify-content-center">
			<div class="text-center text-light">
				<h1 class="fw-bold">Mioto - Cùng Bạn Đến Mọi Hành Trình</h1>
				<p class="fw-semibold">
					Trải nghiệm sự khác biệt từ hơn <strong>8000</strong> xe gia đình
					đời mới khắp Việt Nam
				</p>
			</div>
		</div>
		<br>
		<div>
			<p class="text-center fw-bold fs-1 mb-1">Chương Trình Khuyến Mãi</p>
			<!-- Giảm margin-bottom -->
			<p class="text-center fs-5 mt-1">Nhận nhiều ưu đãi hấp dẫn từ
				Mioto</p>
			<!-- Giảm margin-top -->
		</div>
		<br>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<img src="https://n1-cstg.mioto.vn/g/2024/07/31/10/EHXENLZ6.jpg"
						alt="Image1" class="img-fluid">
				</div>
				<div class="col-md-4">
					<img src="https://n1-cstg.mioto.vn/g/2024/07/02/15/IZAF316W.jpg"
						alt="Image2" class="img-fluid">
				</div>
				<div class="col-md-4">
					<img src="https://n1-cstg.mioto.vn/g/2024/08/01/15/2NTDDMBR.jpg"
						alt="Image3" class="img-fluid">
				</div>
			</div>
		</div>
		<hr>
		<div class="container my-4">
			<p class="text-center fw-bold fs-1">Xe Dành Cho Bạn</p>
			<div class="row mb-4">
				<c:forEach var="xe" items="${items}">
					<div class="col-md-4 mb-3">
						<div class="card"
							onclick="window.location.href='/car?xeID=${xe.xeID}'">
							<!-- Hiển thị ảnh từ URL trong cơ sở dữ liệu -->
							<img src="/photo/${xe.anhDaiDien}" class="card-img-top img-fluid"
								alt="${xe.tenXe}">

							<div class="card-body">
								<span class="badge bg-warning text-dark">Giao xe tận nơi</span>
								<h5 class="card-title mt-2">${xe.tenXe}</h5>
								<p>
									<i class="fa fa-map-marker"></i> ${xe.diaDiemGiaoXe}
								</p>
								<p class="card-text">
									<span class="text-warning"> <i class="fa fa-star"></i>
										5.0
									</span> <span><i class="fa fa-gas-pump"></i>
										${xe.tieuHaoNhienLieu}</span>
								</p>
								<p>
									<strong class="text-success">${xe.giaThue}K</strong> / ngày
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>

		<hr>
		<div class="row text-center">
			<p class="text-center fw-bold fs-1 mb-1">Ưu Điểm Của Mioto</p>
			<p class="text-center fs-5 mt-1">Những tính năng giúp bạn dễ dàng
				hơn khi thuê xe trên Mioto.</p>
			<div class="col-md-4">
				<img
					src="https://www.mioto.vn/static/media/thue_xe_co_tai_xe.a6f7dc54.svg"
					alt="Image1" class="img-fluid">
				<p class="fs-5 fw-semibold mb-1">Lái xe an toàn cùng Mioto</p>
				<p class="mt-1">Chuyến đi trên Mioto được bảo vệ với Gói bảo
					hiểm thuê xe tự lái từ MIC & VNI. Khách thuê sẽ chỉ bồi thường tối
					đa 2,000,000VNĐ trong trường hợp có sự cố ngoài ý muốn.</p>
			</div>
			<div class="col-md-4">
				<img
					src="https://www.mioto.vn/static/media/dich_vu_thue_xe_tu_lai_hanoi.f177339e.svg"
					alt="Image2" class="img-fluid">
				<p class="fs-5 fw-semibold mb-1">An tâm đặt xe</p>
				<p class="mt-1">Không tính phí huỷ chuyến trong vòng 1h sau khi
					đặt cọc. Hoàn cọc và bồi thường 100% nếu chủ xe huỷ chuyến trong
					vòng 7 ngày trước chuyến đi.</p>
			</div>
			<div class="col-md-4">
				<img
					src="https://www.mioto.vn/static/media/cho_thue_xe_tu_lai_tphcm.1e7cb1c7.svg"
					alt="Image3" class="img-fluid">
				<p class="fs-5 fw-semibold mb-1">Thủ tục đơn giản</p>
				<p class="mt-1">Chỉ cần có CCCD gắn chip (Hoặc Passport) & Giấy
					phép lái xe là bạn đã đủ điều kiện thuê xe trên Mioto.</p>
			</div>
		</div>
		<br>
		<div class="row text-center">
			<div class="col-md-4">
				<img
					src="https://www.mioto.vn/static/media/cho_thue_xe_tu_lai_hanoi.735438af.svg"
					alt="Image1" class="img-fluid">
				<p class="fs-5 fw-semibold mb-1">Thanh toán dễ dàng</p>
				<p class="mt-1">Đa dạng hình thức thanh toán: ATM, thẻ Visa & Ví
					điện tử (Momo, VnPay, ZaloPay).</p>
			</div>
			<div class="col-md-4">
				<img
					src="https://www.mioto.vn/static/media/thue_xe_tu_lai_gia_re_hcm.ffd1319e.svg"
					alt="Image2" class="img-fluid">
				<p class="fs-5 fw-semibold mb-1">Giao xe tận nơi</p>
				<p class="mt-1">Bạn có thể lựa chọn giao xe tận nhà/sân bay...
					Phí tiết kiệm chỉ từ 15k/km.</p>
			</div>
			<div class="col-md-4">
				<img
					src="https://www.mioto.vn/static/media/thue_xe_tu_lai_gia_re_hanoi.4035317e.svg"
					alt="Image3" class="img-fluid">
				<p class="fs-5 fw-semibold mb-1">Dòng xe đa dạng</p>
				<p class="mt-1">Hơn 100 dòng xe cho bạn tuỳ ý lựa chọn: Mini,
					Sedan, CUV, SUV, MPV, Bán tải.</p>
			</div>
		</div>
		<hr>
		<div class="row text-center">
			<p class="text-center fw-bold fs-1 mb-1">Hướng Dẫn Thuê Xe</p>
			<p class="text-center fs-5 mt-1">Chỉ với 4 bước đơn giản để trải
				nghiệm thuê xe Mioto một cách nhanh chóng</p>
			<div class="col-md-3">
				<img
					src="https://www.mioto.vn/static/media/cho_thue_xe_co_taigia_re_tphcm.12455eba.svg"
					alt="Image1" class="img-fluid">
				<p class="fs-4 fw-bold">Bước 1: Đặt xe trên web Mioto</p>
			</div>
			<div class="col-md-3">
				<img
					src="https://www.mioto.vn/static/media/gia_thue_xe_7cho_tai_tphcm.9455973a.svg"
					alt="Image2" class="img-fluid">
				<p class="fs-4 fw-bold mt-3">Bước 2: Nhận xe</p>
			</div>
			<div class="col-md-3">
				<img
					src="https://www.mioto.vn/static/media/gia_thue_xe_7cho_tai_hanoi.0834bed8.svg"
					alt="Image3" class="img-fluid">
				<p class="fs-4 fw-bold mt-3">Bước 3: Bắt đầu hành trình</p>

			</div>
			<div class="col-md-3">
				<img
					src="https://www.mioto.vn/static/media/gia_thue_xe_4cho_tai_tphcm.9dcd3930.svg"
					alt="Image3" class="img-fluid">
				<p class="fs-4 fw-bold mt-3">Bước 4: Trả xe & kết thúc chuyến đi</p>
			</div>
		</div>
		<hr>
		<div class="row justify-content-center text-center mt-2 mb-2">
			<div class="col-md-6">
				<!-- Icon -->
				<div class="mb-3">
					<i class="bi bi-car-front" style="font-size: 3rem; color: #000;"></i>
				</div>

				<!-- Title -->
				<h1 class="mb-4">Bạn muốn cho thuê xe?</h1>

				<!-- Description -->
				<p class="mb-4">Hơn 5,000 chủ xe đang cho thuê hiệu quả trên
					Mioto. Đăng ký trở thành đối tác của chúng tôi ngay hôm nay để gia
					tăng thu nhập hàng tháng.</p>

				<!-- Buttons -->
				<div class="d-grid gap-2 d-md-flex justify-content-md-center">
					<button class="btn btn-outline-primary btn-lg me-md-2"
						type="button">Tìm hiểu ngay</button>
					<a href="dangkyxe"><button class="btn btn-primary btn-lg"
							type="button">Đăng ký xe</button></a>
				</div>
			</div>
			<!-- Image -->
			<div class="col-md-6">
				<img
					src="https://emilypost.com/client_media/images/blogs/everyday-driving.jpg"
					class="img-fluid rounded" alt="Hình ảnh lái xe">
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="/common/footer.jsp" />

	<!-- Bootstrap and Popper.js JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>
