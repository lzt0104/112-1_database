<html>
<head>
<link rel="stylesheet" href="index.css">
<title>商品變動中</title>
</head>
<body> 

<?php
require_once __DIR__."/function.php";
if(isset($_GET['way'])){
    if($_GET['way'] == 'del'){
        getValue::del_product();
    }
    else if($_GET['way'] == 'addpage'){
        $text = "<form action='page.php?way=add'method='post'>
        <table>
        <caption>
        <h3>請輸入新的商品資訊</h3>
        </caption>
        <tr><td colspan='2' style='border-bottom:2.5px solid black;'></td></tr>
        <tr>
        <td>商品名稱</td><td><input type='text' name='name'></td>
        </tr>
        <tr>
        <td>商品價格</td><td><input type='text' name='price'></td>
        </tr>
        <tr>
        <td>商品成本</td><td><input type='text' name='cost'></td>
        </tr>
        <tr>
        <td>商品數量</td><td><input type='text' name='qty'></td>
        </tr>
        <tr>
        <td><input class='func_butt' type='submit'></td>
        </tr>
        </table>
        </from>";
        
        echo $text;
    }
    else if($_GET['way'] == 'add'){
        try{
        getValue::new_product();
        echo "新增完畢 <br><br><form action='./index.php'><button class='func_butt' type='submit'>首頁</button></form>";
        }
        catch(Exception $e){
        echo "新增失敗 $e";        }
        
    } else if ($_GET['way'] == 'chge') {
        try {
            getValue::chge_product();
            echo "修改成功 <br><br><form action='./index.php'><button class='func_butt' type='submit'>首頁</button></form>";
        } catch (Exception $e) {
            echo "修改失敗 $e";
        }
    }
    else{
        echo "way not found";
    }
}
else if (isset($_POST['del_id'])){
    try{
    getValue::del_product();
    echo "刪除成功 <br><br><form action='./index.php'><button class='func_butt' type='submit'>首頁</button></form>";
    }
    catch(Exception $e){
    echo "刪除失敗 $e";
    }
    
}
else if (isset($_POST['chge_id'])){
        $result = getValue::one_product();
        echo"<form action='page.php?way=chge'method='post'>
        <table>
        <caption>
        <h3>請輸入新的商品資訊</h3>
        </caption>
        <tr><td colspan='2' style='border-bottom:2.5px solid black;'></td></tr>
        ";
        foreach($result as $res){
            echo "<tr><td>商品編號</td><td><input type='text' name='id' value='{$res['id']}' readonly='true'></td></tr>";
            echo "<tr><td>商品名稱</td><td><input type='text' name='name' value='{$res['name']}'></td></tr>";
            echo "<tr><td>商品價格</td><td><input type='text' name='price' value='".$res['price']."'></td></tr>";
            echo "<tr><td>商品成本</td><td><input type='text' name='cost' value='".$res['cost']."'></td></tr>";
            echo "<tr><td>商品數量</td><td><input type='text' name='qty' value='".$res['qty']."'></td></tr>";
        }
        echo"<tr><td colspan='2'><input class='func_butt' type='submit'></td></tr>
        </table>
        </from>
        ";
}
else{
    echo 'nothing';
}
?>

  
</body>
</html>