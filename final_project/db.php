<?php

class DB{
    //  database 基本資料
    public static $dbServer = "localhost"; 
    public static $dbUser = "root";
    public static $dbPass = "";
    public static $dbName = "final_db_pr";

    private static $conn = null;

    /**
     * 測試資料庫連結是否有誤
     * True -> 無任何顯示 ; False -> 出現錯誤訊息
     */
    public static function connect(){
            self::$conn = mysqli_connect(self::$dbServer, self::$dbUser, self::$dbPass, self::$dbName);
            mysqli_set_charset(self::$conn, "utf8");
            if(mysqli_connect_errno()){
                die("連接失敗: " . mysqli_connect_error());
            }


    }
    static function closeconn(){
        mysqli_close(self::$conn);
    }
    /**
     * 查詢功能
     * $sql -> sql語法
     * 成功會回傳結果(array)
     * @param mixed $sql
     */
    public static function select($sql){
        self::connect();
        if (self::$conn){
        try{
            $result = mysqli_query(self::$conn,$sql);
            self::closeconn();
            return mysqli_fetch_all($result,MYSQLI_ASSOC);
        }
        catch(Exception){
            return mysqli_connect_error();
        }
        }
        
    }
    /**
     * 新增功能
     * $sql -> sql語法
     * @param mixed $sql
     */
    public static function insert($sql){
        self::connect();

        if (self::$conn != null){
            try{
                $result = mysqli_query(self::$conn,$sql);
                if ($result){
                    return "True";
                }
                else{
                    return "Fail";
                }            }
            catch(Exception){
                echo(mysqli_connect_error());
            }
            }    }
    /**
     * 更改功能
     * $sql -> sql語法
     * @param mixed $sql
     */
    public static function chge($sql){
        self::connect();

        if (self::$conn != null){
            try{
                $result = mysqli_query(self::$conn,$sql);
                if ($result){
                    return "True";
                }
                else{
                    return "Fail";
                }
                        }
            catch(Exception){
                echo(mysqli_connect_error());
            }
            }    }
     /**
     * 刪除功能
     * $sql -> sql語法
     * @param mixed $sql
     */
    public static function delete($sql){
        self::connect();

        if (self::$conn != null){
            try{
                $result = mysqli_query(self::$conn,$sql);
                if ($result){
                    return "True";
                }
                else{
                    return "Fail";
                }            }
            catch(Exception){
                echo(mysqli_connect_error());
            }
            }    }
}


?>