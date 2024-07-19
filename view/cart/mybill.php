
<div class="row mb ">
    <div class="boxleft mr">
            <div class="row mb">
                <div class="boxtitle">ĐƠN HÀNG CỦA BẠN</div>
                <div class="row boxcontent">
                    <table style="width: 100%; ">
                        <tr>
                            <th>MÃ ĐƠN HÀNG</th>
                            <th>NGÀY ĐẶT</th>
                            <th>SỐ LƯỢNG ĐẶT HÀNG</th>
                            <th>TỔNG GIÁ TRỊ ĐƠN HÀNG</th>
                            <th>TÌNH TRẠNG ĐƠN HÀNG</th>
                        </tr>
                        <?php
                        if(is_array($listbill)){
                            
                            foreach ($listbill as $bill) {
                                extract($bill);
                               
                                $ttdh = get_ttdh($bill['bill_status']);
                                $countsp = loadall_cart_count($bill['id']);
                                echo '
                                <tr>
                            <td>DAM-'.$bill['id'].'</td>
                            <td>'.$bill['ngaydathang'].'</td>
                            <td>'.$countsp.'</td>
                            <td>'.$bill['total'].'</td>
                            <td>'.$ttdh.'</td>
                                </tr>';
                            }
                        }
                        ?>
                    </table>
                </div>

            </div>
    </div>

    <div class="boxright">
        <?php include 'view/boxright.php'?>
    </div>
</div>