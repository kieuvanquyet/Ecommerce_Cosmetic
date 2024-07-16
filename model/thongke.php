<?php

function doanhthutheothang()
{
    $sql = "SELECT 
        DAY(ngaydat) AS ngay, 
        MONTH(ngaydat) AS thang,
        YEAR(ngaydat) AS nam,
        SUM(tongtien) AS tongDoanhThu
    FROM donhang
    WHERE MONTH(ngaydat) = MONTH(CURRENT_DATE()) AND YEAR(ngaydat) = YEAR(CURRENT_DATE())
    GROUP BY ngay,thang,nam
    ORDER BY ngay;";
    return pdo_query($sql);
}
function top5_sanpham_banchay_theothang()
{
    $sql = "SELECT 
        MONTH(dh.ngaydat) AS thang,
        YEAR(dh.ngaydat) AS nam,
        sp.id AS maSanPham,
        sp.name AS tenSanPham,
        sp.hinh AS hinhAnh,
        SUM(ct.soluong) AS luotMua
    FROM donhang dh
    JOIN chitietdonhang ct ON dh.id = ct.donhang_id
    JOIN sanpham sp ON ct.sanpham_id = sp.id
    WHERE MONTH(dh.ngaydat) = MONTH(CURRENT_DATE()) AND YEAR(dh.ngaydat) = YEAR(CURRENT_DATE())
    GROUP BY maSanPham
    ORDER BY luotMua DESC
    LIMIT 5";
    return pdo_query($sql);
}

function top5_sanpham_doanhthu_caonhat_thang()
{
    $sql = "SELECT 
        MONTH(dh.ngaydat) AS thang,
        YEAR(dh.ngaydat) AS nam,
        sp.id AS maSanPham,
        sp.name AS tenSanPham,
        sp.hinh AS hinhAnh,
        SUM(ct.gia_ban * ct.soluong) AS doanhThu
    FROM donhang dh
    JOIN chitietdonhang ct ON dh.id = ct.donhang_id
    JOIN sanpham sp ON ct.sanpham_id = sp.id
    WHERE MONTH(dh.ngaydat) = MONTH(CURRENT_DATE()) AND YEAR(dh.ngaydat) = YEAR(CURRENT_DATE())
    GROUP BY thang, nam, maSanPham, tenSanPham
    ORDER BY thang DESC, nam DESC, doanhThu DESC
    LIMIT 5";
    return pdo_query($sql);
}
function tong_nguoidung()
{
    $sql = "SELECT COUNT(*) AS tongnguoidung
    FROM nguoidung
    WHERE role = 'nguoidung'";
    return pdo_query($sql);
}
function tong_sanpham()
{
    $sql = "SELECT COUNT(*) AS tongsanpham
    FROM sanpham";
    return pdo_query($sql);
}
function tong_donhang_trongthang()
{
    $sql = "SELECT COUNT(*) AS tongdonhangtrongthang
    FROM donhang
    WHERE MONTH(ngaydat) = MONTH(CURRENT_DATE()) AND YEAR(ngaydat) = YEAR(CURRENT_DATE())";
    return pdo_query($sql);
}
function trangthai_donhang()
{
    $sql = "SELECT
    ttdh.id AS trangthai_id,
    ttdh.trangthai,
    MONTH(dh.ngaydat) AS thang,
    COUNT(dh.id) AS tongtrangthai
FROM donhang dh
JOIN trangthaidonhang ttdh ON dh.id_trangthai = ttdh.id
WHERE MONTH(dh.ngaydat) = MONTH(CURRENT_DATE())
GROUP BY ttdh.id, ttdh.trangthai, thang;";
    return pdo_query($sql);
}
