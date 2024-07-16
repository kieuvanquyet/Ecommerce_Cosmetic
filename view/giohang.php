<!-- begin main -->
<?php
// session_start()
?>
<main>
  <!-- <h1 class="h1">GIỎ HÀNG CỦA BẠN</h1> -->

  <form action="index.php?act=thanhtoan" method="post">
    <h5>Giỏ Hàng</h5>
    <table class="customers">
      <thead>
        <tr>
          <th>Hình ảnh</th>
          <th>Tên sản phẩm</th>
          <th>Giá</th>
          <th>Số lượng</th>
          <!-- <th>Thành tiền</th> -->
          <th>Thao tác</th>
        </tr>
      </thead>

      <tbody>
        <?php
        foreach ($listgiohang as $giohang) :
          // var_dump($giohang);
          // $id_giohang = isset($giohang['id']) ? $giohang['id'] : null;
          // var_dump($id_giohang)  ;
          extract($giohang);
          $thanhTien = $newprice * $soluong;
        ?>
          <tr>

            <td><img src="upload/<?= $hinh ?>"  alt=""></td>
            <td class="td-tt"><?= $name ?> </td>
            <td class="td-tt"><?=number_format( $newprice) ?>₫</td>
            <td class="td-tt"><input type="number" min="1" step="1" value="<?= $soluong ?>" /></td>

            <td><a href="index.php?act=xoagiohang&id_giohang=<?= $id ?>" onclick="return confirm('Bạn có chắc muốn xóa sản phẩm này chứ ?')">Xóa</a></td>
          </tr>
        <?php endforeach ?>
      </tbody>

    </table>
    <div class="btn-giohang">
     <a href="index.php?act=xoatatcagiohang" onclick="return confirm('Bạn có chắc muốn xóa tất cả sản phẩm trong giỏ hàng ?')"><button type="button">Xóa tất cả </button></a>
     <?php 
    extract($listgiohang) ;
    if (empty($listgiohang)) {
      echo '<button type="button" onclick="alert(\'Không có sản phẩm, vui lòng thêm sản phẩm để đặt hàng\')">Thanh Toán</button>';
  } else {
      echo '<a href="index.php?act=thanhtoan"><button type="submit" name="muatatca">Thanh Toán</button></a>';
     }
  
     ?>
     </div>
  </form>
</main>


<!-- end main -->