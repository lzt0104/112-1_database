<?php
    require_once __DIR__."/db.php";
class getValue{

    static function one_product(){
        if (isset($_POST['name'])){
            $name = $_POST['name'];
            $sql = "SELECT * FROM `stock` WHERE `name` LIKE '%$name%'";
        }
        elseif(isset($_POST['id'])){
            $id = intval($_POST['id']);
            $sql = "SELECT * FROM `stock` WHERE `id` = $id ";
        }
        elseif(isset($_POST['del_id']) | isset($_POST['chge_id'])){
            if (isset($_POST['del_id'])){
                $id = $_POST['del_id'];
            }
            else{
                $id = $_POST['chge_id'];
            }
            $sql = "SELECT * FROM `stock` WHERE `id` = $id ";
        }
        return DB::select($sql);
    }
    static function mor_product(){
        $sql = "SELECT * FROM `stock`";
        return DB::select($sql);
    }
    static function new_product(){
        $name = $_POST['name'];
        $price = intval($_POST['price']);
        $cost = intval($_POST['cost']);
        $qty = intval($_POST['qty']);
        $sql = "INSERT INTO `stock` (`id`, `name`, `price`, `cost`, `qty`) VALUES (NULL, '$name', $price, $cost, $qty);";
        return DB::insert($sql);
    }
    static function chge_product(){
        $id = intval($_POST['id']);
        $name = $_POST['name'];
        $price = intval($_POST['price']);
        $cost = intval($_POST['cost']);
        $qty = intval($_POST['qty']);
        $sql = "UPDATE `stock` SET `name` = '$name', `price` = $price, `cost` = $cost , `qty` = $qty WHERE `stock`.`id` = $id;";
        return DB::chge($sql);
    }
    static function del_product(){
        $id = intval($_POST['del_id']);
        $sql = "DELETE FROM stock WHERE `stock`.`id` = $id";
        return DB::delete($sql);
    }
}

?>