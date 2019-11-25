SELECT PhieuMuon.id, NhanVien.TenNhanVien, NguoiMuon.TenNguoiMuon, PhieuMuon.CreatedDate
FROM PhieuMuon INNER JOIN NhanVien ON
PhieuMuon.NhanVien_id = NhanVien.id
INNER JOIN NguoiMuon ON PhieuMuon.NguoiMuon_id = NguoiMuon.id