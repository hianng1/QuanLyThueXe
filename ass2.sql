use QuanLyThueXeMioto;

INSERT INTO nguoi_cho_thue(nguoi_cho_thueid, ho_ten, email, so_dien_thoai, dia_chi, ten_dang_nhap, mat_khau, ngay_dang_ky, danh_gia_nguoi_cho_thue) VALUES
('NCT001', 'Nguyen Van A', 'a.nguyen@example.com', '0901234567', '123 Le Loi, Ha Noi', 'nguyenvana', 'password123', '2023-01-15', 4.8),
('NCT002', 'Le Thi B', 'b.le@example.com', '0902345678', '456 Tran Hung Dao, Ho Chi Minh', 'lethib', 'password456', '2023-02-20', 4.5),
('NCT003', 'Tran Van C', 'c.tran@example.com', '0903456789', '789 Nguyen Trai, Da Nang', 'tranvanc', 'password789', '2023-03-10', 4.0),
('NCT004', 'Pham Thi D', 'd.pham@example.com', '0904567890', '101 Hai Ba Trung, Can Tho', 'phamthid', 'password321', '2023-04-05', 3.9),
('NCT005', 'Hoang Le E', 'e.hoang@example.com', '0905678901', '202 Le Duan, Hue', 'hoanglene', 'password654', '2023-05-12', 4.7);

INSERT INTO Xe (XeID, ten_xe, hang_xe, mau_xe, gia_thue, trang_thai, nguoi_cho_thueid) VALUES
('XE001', 'Toyota Camry', 'Toyota', 'Đen', 1000000, 1, 'NCT001'),
('XE002', 'Honda Civic', 'Honda', 'Trắng', 850000, 0, 'NCT002'),
('XE003', 'Mazda 3', 'Mazda', 'Xanh', 900000, 1, 'NCT003'),
('XE004', 'Ford Ranger', 'Ford', 'Đỏ', 1200000, 1, 'NCT004'),
('XE005', 'Hyundai Santa Fe', 'Hyundai', 'Bạc', 950000, 0, 'NCT005');

INSERT INTO users (id, username, password, role, activated) VALUES
('U001', 'nguyenvana', 'password123', 'CUSTOMER', 1),
('U002', 'lethib', 'password456', 'OWNER', 1),
('U003', 'tranvanc', 'password789', 'ADMIN', 1),
('U004', 'phamthid', 'password321', 'CUSTOMER', 0),
('U005', 'hoanglene', 'password654', 'OWNER', 1);

INSERT INTO khach_hang(khach_hangid, ho_ten, Email, so_dien_thoai, dia_chi, ten_dang_nhap, mat_khau, ngay_dang_ky) VALUES
('KH001', 'Nguyen Van A', 'a.nguyen@example.com', '0901234567', '123 Le Loi, Ha Noi', 'nguyenvana', 'password123', '2023-01-15'),
('KH002', 'Le Thi B', 'b.le@example.com', '0902345678', '456 Tran Hung Dao, Ho Chi Minh', 'lethib', 'password456', '2023-02-20'),
('KH003', 'Tran Van C', 'c.tran@example.com', '0903456789', '789 Nguyen Trai, Da Nang', 'tranvanc', 'password789', '2023-03-10'),
('KH004', 'Pham Thi D', 'd.pham@example.com', '0904567890', '101 Hai Ba Trung, Can Tho', 'phamthid', 'password321', '2023-04-05'),
('KH005', 'Hoang Le E', 'e.hoang@example.com', '0905678901', '202 Le Duan, Hue', 'hoanglene', 'password654', '2023-05-12');

INSERT INTO danh_gia_xe (danh_giaid, noi_dung_danh_gia, xep_hang, ngay_danh_gia, khach_hangid, XeID) VALUES
('DG001', 'Xe rất tốt, chạy êm và tiết kiệm nhiên liệu.', 5, '2023-06-15', 'KH001', 'XE001'),
('DG002', 'Chất lượng xe ổn, nhưng có một vài vết xước nhỏ.', 4, '2023-06-20', 'KH002', 'XE002'),
('DG003', 'Xe chạy tốt nhưng giá thuê khá cao so với mặt bằng chung.', 3, '2023-07-10', 'KH003', 'XE003'),
('DG004', 'Không hài lòng với xe này, đã gặp một số vấn đề về động cơ.', 2, '2023-07-25', 'KH004', 'XE004'),
('DG005', 'Xe mới và sạch sẽ, dịch vụ cho thuê rất tốt.', 5, '2023-08-05', 'KH005', 'XE005');

INSERT INTO don_thue_xe(don_thue_xeid, ngay_thue, ngay_tra_xe, tong_tien, trang_thai_don_hang, khach_hangid, xeid) VALUES
('DTX001', '2023-09-10', '2023-09-12', 1000000.00, 'Đã hoàn thành', 'KH001', 'XE001'),
('DTX002', '2023-09-15', '2023-09-17', 1200000.00, 'Đã hoàn thành', 'KH002', 'XE002'),
('DTX003', '2023-09-20', '2023-09-22', 1500000.00, 'Chờ xác nhận', 'KH003', 'XE003'),
('DTX004', '2023-09-25', '2023-09-27', 800000.00, 'Chờ thanh toán', 'KH004', 'XE004'),
('DTX005', '2023-09-30', '2023-10-02', 950000.00, 'Đã hủy', 'KH005', 'XE005');

INSERT INTO thanh_toan(thanh_toanid, phuong_thuc_thanh_toan, ngay_thanh_toan, so_tien_thanh_toan, don_thue_xeid) VALUES
('TT001', 'Credit Card', '2023-09-10', 500000.00, 'DTX001'),
('TT002', 'Cash', '2023-09-12', 300000.00, 'DTX002'),
('TT003', 'Bank Transfer', '2023-09-15', 450000.00, 'DTX003'),
('TT004', 'Paypal', '2023-09-18', 600000.00, 'DTX004'),
('TT005', 'Cash', '2023-09-20', 350000.00, 'DTX005');
