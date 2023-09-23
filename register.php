<?php
include'auth/connection.php';
$conn=connect();
$m='';
if(isset($_POST['submit'])){
    $name=$_POST['name'];
    $uname=$_POST['uname'];
    $email=$_POST['email']?$_POST['email']:'';
    $pass=$_POST['pass'];
    $rpass=$_POST['rpass'];

    if($pass===$rpass){

       // $pass=md5($pass);

        $sql="INSERT INTO users_info(name,uname,email,password)VALUES('$name','$uname','$email','$pass')";
    
        if($conn->query($sql)===true){
            header('Location:login.php');
        }else{
            $m='Connection Not established';
        }

    }else{
        $m="password don't match";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Registration Form</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link type="text/css" rel="stylesheet" href="css/register.css">
</head>
<body>
    <form method="POST" action="register.php" enctype="multipart/form-data">

        <div class="container reg">

        <span><?php if($m!='') echo $m; ?></span>
<h1>Registration Form</h1>


    <div>
        <label>Your Name<span>*</span></label>
        <input name="name" id="name" type="text" placeholder="Enter Your Name" required>
    </div>
    <div>
        <label>Your UnserName<span>*</span></label>
        <input name="uname" id="uname" type="text" placeholder="Enter Your UserName" onchange="checkUsername(this.value); checkUser(this.value);" required>
        <small style="color:red;" id="checktext"></small>
        <small  id="checkuser"></small>
    </div>
    <div>
        <label>Your Email<span>*</span></label>
        <input name="email" id="email" type="text" placeholder="Enter Your Email">
    </div>
    <div>
        <label>Password<span>*</span></label>
        <input name="pass" id="password" type="password" placeholder="Enter Your Password" required>
    </div>
    <div>
        <label>Repeat Password<span>*</span></label>
        <input name="rpass" id="rpass" type="password" placeholder="Confirm Your Repeat Password" required>
    </div>

    <div style="text-align:center">
        <p> <span>***</span> By Creating an account your agree to our Terms & Privacy</p>
    </div>

    <div style="text-align:center; padding: 20px; ">
        <input type="submit" name="submit" class="btn btn-info" vlaue="Submit">
    </div>

    <div style="text-align:center">
        <p>Already have an account? <a href="login.php">Sign in</a> </p>

    </div>

    </div>
    
    </form>
</body>
<script type='text/javascript' src="js/script.js">

</script>
</html>

<script>
    // window.onload=function(){
    //     document.getElementsByClassName('reg')[0].style.color='#ffce00';
    // };

    $(document).ready(function(){
        $('.reg').css('color','#ffce00');
    });

</script>