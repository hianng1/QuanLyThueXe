 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> --%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Chủ Xe</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">Dashboard Chủ Xe</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#myCars">Xe Của Tôi</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#bookings">Đơn Đặt Xe</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#earnings">Thu Nhập</a>
                    </li>
                </ul>
                <span class="navbar-text">
<%--                     Xin chào, <sec:authentication property="principal.username" /> --%>
                    <form action="/logout" method="post" class="d-inline">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <button type="submit" class="btn btn-link">Đăng xuất</button>
                    </form>
                </span>
            </div>
        </div>
    </nav>

    <div class="container mt-4">
        <h1 class="mb-4">Dashboard Chủ Xe</h1>

        <section id="myCars" class="mb-5">
            <h2>Xe Của Tôi</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Hãng xe</th>
                        <th>Mẫu xe</th>
                        <th>Biển số</th>
                        <th>Giá thuê/ngày</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${cars}" var="car">
                        <tr>
                            <td>${car.make}</td>
                            <td>${car.model}</td>
                            <td>${car.licensePlate}</td>
                            <td>${car.dailyRate} VNĐ</td>
                            <td>${car.status}</td>
                            <td>
                                <a href="/owner/car/${car.id}/edit" class="btn btn-sm btn-primary">Sửa</a>
                                <a href="/owner/car/${car.id}/calendar" class="btn btn-sm btn-info">Lịch</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <a href="/owner/car/add" class="btn btn-success">Thêm Xe Mới</a>
        </section>

        <section id="bookings" class="mb-5">
            <h2>Đơn Đặt Xe</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>ID Đơn</th>
                        <th>Xe</th>
                        <th>Khách hàng</th>
                        <th>Ngày bắt đầu</th>
                        <th>Ngày kết thúc</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${bookings}" var="booking">
                        <tr>
                            <td>${booking.id}</td>
                            <td>${booking.car.make} ${booking.car.model}</td>
                            <td>${booking.customer.name}</td>
                            <td>${booking.startDate}</td>
                            <td>${booking.endDate}</td>
                            <td>${booking.status}</td>
                            <td>
                                <c:if test="${booking.status == 'PENDING'}">
                                    <form action="/owner/booking/${booking.id}/approve" method="post" class="d-inline">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                        <button type="submit" class="btn btn-sm btn-success">Chấp nhận</button>
                                    </form>
                                    <form action="/owner/booking/${booking.id}/reject" method="post" class="d-inline">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                        <button type="submit" class="btn btn-sm btn-danger">Từ chối</button>
                                    </form>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </section>

        <section id="earnings" class="mb-5">
            <h2>Thu Nhập</h2>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Tổng thu nhập tháng này</h5>
                    <p class="card-text">${monthlyEarnings} VNĐ</p>
                </div>
            </div>
            <div class="mt-3">
                <a href="/owner/earnings/details" class="btn btn-primary">Xem chi tiết thu nhập</a>
            </div>
        </section>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>