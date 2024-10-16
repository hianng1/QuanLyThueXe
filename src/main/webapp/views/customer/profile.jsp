<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thông tin tài khoản</title>
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
    <h2 class="text-center">Thông tin tài khoản</h2>

    <div class="card col-12">
    <div class="row mt-4">
        <!-- Left Side - Image -->
        <div class="col-md-3 text-center">
            <img src="https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2021/05/26/ngo-ngang-voi-ve-dep-cua-hot-girl-anh-the-chua-tron-18-docx-1622043349706.jpeg" class="img-fluid rounded" alt="Profile Image" height="200" width="150">
        </div>

        <!-- Right Side - Form -->
        <div class="col-md-9">
            <form>
                <div >
                    <label for="name" class="form-label">
                        <i class="bi bi-hash"></i> Tên của tôi:
                    </label>
                   <div class="mb-3 d-flex align-items-center" > 
                    <input type="text" id="name" name="name" class="form-control me-3">
                    <i class="bi bi-pencil-fill me-3"></i>
                   </div>
                </div>
                
			<div class="mb-3">
			    <label for="dob" class="form-label me-2">
			       <i class="bi bi-calendar4-event"></i> Ngày sinh:
			    </label>
			    <div class="mb-3 d-flex align-items-center"> 
			    <input type="text" id="dob" name="dob" class="form-control me-3" style="flex: 1;">
			    <i class="bi bi-pencil-fill me-3"></i>
			    </div>
			</div>
			
                <div class="mb-3">
                    <label for="gender" class="form-label">
                        <i class="bi bi-gender-ambiguous"></i> Giới tính:
                    </label>
                   
                         <div class="mb-3 d-flex align-items-center">
                          <input type="text" id="gender" name="gender" class="form-control me-3">
                         <i class="bi bi-pencil-fill me-3"></i>
                          </div>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">
                        <i class="bi bi-envelope "></i> Email:
                    </label>
                    
                         <div class="mb-3 d-flex align-items-center"> 
                         <input type="email" id="email" name="email" class="form-control me-3">
                         <i class="bi bi-pencil-fill me-3"></i>
                         </div>
                </div>
                <div class="mb-3">
                    <label for="phone" class="form-label">
                        <i class="bi bi-telephone "></i> Số điện thoại:
                    </label>
                    
                         <div class="mb-3 d-flex align-items-center">
                         <input type="text" id="phone" name="phone" class="form-control me-3">
                         <i class="bi bi-pencil-fill me-3"></i>
                          </div>
                </div>
            </form>
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
