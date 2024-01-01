<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>玉米世家庫存管理系統</title>
    <link rel="stylesheet" href="index.css">
</head>

<body>
    <h1>玉米世家進銷存管理系統</h1>
    <table class="show">
        <tr>
            <td colspan="2"><button style='width:5cm' class="func_butt" onclick="location.href='./page.php?way=addpage'"
                    type="button">新增產品</button></td>
            <form action="./index.php" method="post">
                <td colspan="3"><input type="text" style="height:1.3cm" name="name" placeholder="輸入名稱搜尋產品">&nbsp;<button
                        type="submit" class="func_butt">找一下</button></td>
            </form>
        </tr>
        <tr>
            <td style="border-bottom: 2px dashed black;"><b>產品編號</b></td>
            <td style="border-bottom: 2px dashed black;"><b>產品名稱</b></td>
            <td style="border-bottom: 2px dashed black;"><b>產品售價</b></td>
            <td style="border-bottom: 2px dashed black;"><b>產品成本</b></td>
            <td style="border-bottom: 2px dashed black;"><b>產品庫存</b></td>
            <td colspan="2" style="border-bottom: 2px dashed black;">功能</td>
        </tr>
        <form action="page.php" method="post">
            <?php
            require_once __DIR__ . "/function.php";
            if (isset($_POST['name'])) {
                $result = getValue::one_product();
                foreach ($result as $res) {
                    echo '<tr>';
                    echo "<td>" . $res['id'] . "</td>";
                    echo "<td>" . $res['name'] . "</td>";
                    echo "<td>" . $res['price'] . "</td>";
                    echo "<td>" . $res['cost'] . "</td>";
                    echo "<td>" . $res['qty'] . "</td>";
                    echo "<td><button type='submit' class='chge_butt' name='chge_id' value='" . $res['id'] . "'>修改</button></td>";
                    echo "<td><button type='submit' class='del_butt' name='del_id' value='" . $res['id'] . "'>刪除</button></td>";
                    echo '</tr>';
                }
            } else {
                $result = getValue::mor_product();
                foreach ($result as $res) {
                    echo '<tr>';
                    echo "<td>" . $res['id'] . "</td>";
                    echo "<td>" . $res['name'] . "</td>";
                    echo "<td>" . $res['price'] . "</td>";
                    echo "<td>" . $res['cost'] . "</td>";
                    echo "<td>" . $res['qty'] . "</td>";
                    echo "<td><button type='submit' class='chge_butt' name='chge_id' value='" . $res['id'] . "'>修改</button></td>";
                    echo "<td><button type='submit' class='del_butt' name='del_id' value='" . $res['id'] . "'>刪除</button></td>";
                    echo '</tr>';
                }
            }

            ?>
        </form>
    </table>
</body>

</html>