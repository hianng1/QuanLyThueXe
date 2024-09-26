<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<style>
footer {
    background-color: #f8f9fa; /* Light background color */
}

footer h5 {
    margin-bottom: 15px; /* Space below headings */
    color: #343a40; /* Dark color for headings */
}

footer a {
    color: #000; /* Set link color to black */
    text-decoration: none; /* Remove underline */
    text-align: left; /* Left align links */
}

footer a:hover {
    text-decoration: underline; /* Underline on hover */
}

footer p {
    margin-bottom: 10px; /* Space below paragraphs */
}

.mb-4 {
    margin-bottom: 1.5rem; /* Bottom margin for spacing */
}

.text-left {
    text-align: left; /* Force left alignment */
}

footer p, footer ul li {
    line-height: 4; /* Điều chỉnh khoảng cách giữa các dòng */
}


</style>
<footer class="bg-light text-dark mt-5 pt-5 pb-4">
	<div class="container">
		<div class="row text-left" style="margin-left: 80px">
			<!-- Column 1: Logo, Phone, Email -->
			<div class="col-md-3 ps-0 footer-column" style="margin-right: 0px">
				<img src="logo-url.jpg" alt="Logo" class="img-fluid mb-3"
					style="max-width: 100px;">
				<p>
					<strong>Điện thoại:</strong> 0123-456-789
				</p>
				<p>
					<strong>Email:</strong> contact@example.com
				</p>
			</div>

			<!-- Column 2: Chính sách -->
			<div class="col-md-2 mb-4">
				<h5 class="font-weight-bold">Chính sách</h5>
				<ul class="list-unstyled">
					<li><a href="#">Chính sách bảo mật</a></li>
					<li><a href="#">Điều khoản dịch vụ</a></li>
					<li><a href="#">Chính sách hoàn trả</a></li>
				</ul>
			</div>

			<!-- Column 3: Tìm hiểu thêm -->
			<div class="col-md-2 mb-4">
				<h5 class="font-weight-bold">Tìm hiểu thêm</h5>
				<ul class="list-unstyled">
					<li><a href="#">Hướng dẫn sử dụng</a></li>
					<li><a href="#">Câu hỏi thường gặp</a></li>
					<li><a href="#">Tin tức</a></li>
				</ul>
			</div>

			<!-- Column 4: About -->
			<div class="col-md-2 mb-4">
				<h5 class="font-weight-bold">About</h5>
				<ul class="list-unstyled">
					<li><a href="#">Giới thiệu</a></li>
					<li><a href="#">Đội ngũ</a></li>
					<li><a href="#">Liên hệ</a></li>
				</ul>
			</div>

			<!-- Column 5: Đối tác -->
			<div class="col-md-3 mb-4">
				<h5 class="font-weight-bold">Đối tác</h5>
				<ul class="list-unstyled">
					<li><a href="#">Đối tác 1</a></li>
					<li><a href="#">Đối tác 2</a></li>
					<li><a href="#">Đối tác 3</a></li>
				</ul>
			</div>
		</div>
	</div>
</footer>
