<?php
    if($_POST['change']){
        extract($_POST);

        $update = '';

        if($level == 'Student'){
            $tblquery = "UPDATE users SET level = :level WHERE id = :id";
            $tblvalue = array(
                ':level' => "Teacher",
                ':id' => $id
            );
            $update = $collect->tbl_update($tblquery, $tblvalue);
        }else if($level == 'Teacher'){
            $tblquery = "UPDATE users SET level = :level WHERE id = :id";
            $tblvalue = array(
                ':level' => "Student",
                ':id' => $id
            );
            $update = $collect->tbl_update($tblquery, $tblvalue);
        }
        if($update){
            echo '<script> window.location="http://localhost/elearnpayment/upgrade"; </script>';
        }
    }
?>