<?php

include_once("Controller/cOrder.php");


$p = new controlOrder();

if (!isset($_POST['sub_date'])) {
  $ngayHienTai = date('Y-m-d');
  $ngayLenMon = date('Y-m-d', strtotime($ngayHienTai));
} else {
  $ngayLenMon = date('Y-m-d', strtotime($_POST['date']));
}

$listOder = $p->getOrderByNgayLenMon($ngayLenMon);

?>
<main id="main" class="main">

  <div class="pagetitle">

    <h1>Danh sách đơn đặt món</h1>

    <nav>
      <ol class="breadcrumb">

        <li class="breadcrumb-item">Customer Manager</li>

      </ol>
    </nav>
  </div><!-- End Page Title -->

  <section class="section">
    <div class="row">
      <div class="col-lg-12">

        <div class="card">
          <div class="card-body">
            <div style="display: flex;">
              <h5 class="card-title">Chọn ngày xem:</h5>

              <form style="margin: 15px 20px" action="" method="post">
                <input type="date" name="date" id="date" value="<?php if (!isset($_POST['sub_date'])) {
                                                                  echo $ngayHienTai;
                                                                } else {
                                                                  echo $_POST['date'];
                                                                } ?>">
                <input style="display: none;" type="submit" value="Submit" id="submitBtn" name="sub_date">
              </form>
            </div>

            <table class="table datatable">
              <thead>
                <tr>
                  <th scope="col">STT</th>
                  <th scope="col">Mã nhân viên</th>
                  <th scope="col">Họ tên</th>
                  <th scope="col">Điện thoại</th>
                  <th scope="col">Tên món</th>
                  <th scope="col">Số lượng</th>
                  <th scope="col">Trạng thái</th>


                </tr>
              </thead>
              <tbody>

                <?php if (!empty($listOder)) {

                  foreach ($listOder as $item) {
                    $idTaiKhoan = $item['idTaiKhoan'];
                    if (isset($result[$idTaiKhoan])) {
                      $result[$idTaiKhoan]['soLuong'] += $item['soLuong'];
                      $result[$idTaiKhoan]['tenMon'] .= ', ' . $item['tenMon'];
                    } else {

                      $result[$idTaiKhoan] = [
                        'idTaiKhoan' => $idTaiKhoan,
                        'maNhanVien' =>  $item['maNhanVien'],
                        'hoTen' => $item['hoTen'],
                        'soDienThoai' => $item['soDienThoai'],
                        'soLuong' => $item['soLuong'],
                        'tenMon' => $item['tenMon'],
                        'duyetDon' => $item['duyetDon'],
                      ];
                    }
                  }
                }


                if (!empty($result)) {
                  $i = 1;
                  foreach ($result as $order) {

                ?>

                    <tr>
                      <th scope="row"><?php echo $i++ ?></th>
                      <td><?php echo $order['maNhanVien']; ?></td>
                      <td><?php echo $order['hoTen']; ?></td>
                      <td><?php echo $order['soDienThoai']; ?></td>

                      <td><?php echo $order['tenMon']; ?></td>
                      <td><?php echo $order['soLuong']; ?></td>
                      <td>
                        <?php if ($order['duyetDon'] == 1) { ?>
                        <span class="badge bg-success">Đã nhận </span>
                          

                        <?php } else { ?>
                          <span class="badge bg-danger">Chưa nhận</span>


                        <?php } ?>
                      </td>
                    </tr>
                <?php }
                }  ?>



              </tbody>
            </table>

          </div>
        </div>

      </div>
    </div>
  </section>

</main>