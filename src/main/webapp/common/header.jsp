	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Web</title>
    <!-- Add your CSS links here -->
</head>
<body>
    <div class="container">
        <div class="row">
            <nav class="navbar navbar-expand-lg">
                <div class="container-fluid">
                    <div class="col-sm-2">
                        <a class="navbar-brand" href="trangchu">
                            <img src="https://www.mioto.vn/static/media/logo-full.ea382559.png" alt="Logo" class="img-fluid w-70">
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                    </div>
                    <div class="col-sm-10">
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav ms-auto mb-1 d-flex justify-content-between">
                                <li class="nav-item">
                                    <a class="nav-link active fw-semibold" aria-current="page" href="#">Trang chủ</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle fw-semibold" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Các loại xe
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="#">Xe 6 chỗ</a></li>
                                        <li><a class="dropdown-item" href="#">Xe 8 chỗ</a></li>
                                        <li><a class="dropdown-item" href="#">Xe điện</a></li>
                                        <li><a class="dropdown-item" href="#">Xe ga</a></li>
                                    </ul>
                                </li>

                                <!-- Kiểm tra session để xác định người dùng đã đăng nhập chưa -->
                                <c:choose>
                                    <c:when test="${not empty user}">
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle fw-semibold" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                Hello, ${user.username}
                                            </a>
                                            <ul class="dropdown-menu">
                                                <c:choose>
                                                    <c:when test="${user.role == 'OWNER'}">
                                                        <li><a class="dropdown-item" href="/owner/dashboard">Owner Dashboard</a></li>
                                                    </c:when>
                                                    <c:when test="${user.role == 'CUSTOMER'}">
														<li><a class="dropdown-item" href="/myProfile">Profile</a></li>
														<li><a class="dropdown-item" href="/customerDashboard">Customer Dashboard</a></li>	
                                                    </c:when>
                                                    <c:when test="${user.role == 'ADMIN'}">
                                                        <li><a class="dropdown-item" href="/dashboard">Customer Dashboard</a></li>
                                                    </c:when>
                                                </c:choose>
                                                <li><a class="dropdown-item" href="/logout">Logout</a></li>
                                            </ul>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="nav-item">
                                            <a class="nav-link active fw-semibold" aria-current="page" href="dangkyxe">Trở thành chủ xe</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link active fw-semibold" aria-current="page" href="/register">Đăng ký</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link active fw-semibold" aria-current="page" href="/login">Đăng nhập</a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</body>
</html>
