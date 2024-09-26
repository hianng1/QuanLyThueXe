<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<style>
/* Custom styling for the navbar */
/* Custom styling for the navbar */
.custom-navbar {
    height: 80px;
    background-color: #ffffff; /* Đổi màu nền thành trắng */
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.brand-logo {
    height: 50px;
    width: auto;
}

/* Giảm kích thước font chữ và tăng khoảng cách giữa các mục */
.navbar-nav .nav-link {
    font-size: 1rem;
    font-weight: 500;
    color: #333;
    padding: 10px 25px;
}

.navbar-nav .nav-link:hover {
    color: #007bff;
    transition: color 0.3s ease;
}

.navbar-nav .nav-link:focus {
    box-shadow: none;
    outline: none;
}

</style>

<div class="col-8 mx-auto">
        <nav class="navbar navbar-expand-lg custom-navbar">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"> 
                    <img src="logo.png" class="brand-logo" alt="Brand Logo">
                </a>
                <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end"
                    id="navbarSupportedContent">
                    <ul class="navbar-nav mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" href="#">Về Mioto</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Trở thành chủ xe</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Đăng ký</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Đăng nhập</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

