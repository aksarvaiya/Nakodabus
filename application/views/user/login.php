<!DOCTYPE html>
<html>
<?php $this->load->view('user/includes/header'); ?>
<style type="text/css">
    * {
    padding: 0;
    margin: 0;
    box-sizing: border-box
}
.txt:hover {
    text-decoration: none;
}
.div_row {
    background: white;
    border-radius: 30px;
    box-shadow: 12px 12px 22px grey;
    margin-top: 50px;
}

img {
    border-top-left-radius: 30px;
    border-bottom-left-radius: 30px
}

.btn {
    border: none;
    outline: none;
    height: 40px;
    width: 100%;
    border-radius: 4px;
    font-weight: bold;
    background-color: black;
    color: white
}

.btn:hover {
    background: white;
    border: 1px solid;
    color: black
}

.my-5 {
    margin-top: 4rem!important;
}

.icon_one{
    position: relative;
}

input[type="email"], input[type="password"], input[type="text"]{
    padding-left: 46px!important;
}

.icon_one i{
    position: absolute;
    top: 0;
    padding: 12px;
    font-size: 24px;
}

.form-row {
    display: block;
}
.pad{
    padding: 100px;
}

@media only screen and (max-width: 991px) {
    img {
    border-top-left-radius: 30px;
    border-bottom-left-radius: 0px;
    border-top-right-radius: 30px;

}
}

@media only screen and (min-width: 991px) and (max-width: 1096px) {
.mar{
    padding-top: 0px!important;
    margin-bottom: 0px;
}
}

@media only screen and (min-width: 530px) and (max-width: 991px) {
    .div_overflow{
        height: 620px;
        overflow: hidden;
    }
}
@media only screen and (min-width: 451px) and (max-width: 991px) {
.mar_top {
    padding-top: 12px!important;
    padding-bottom: 30px!important;
} 
}

@media only screen and (max-width: 991px) {   
.pad{
    padding: 80px 40px 70px;
}
}

@media only screen and (max-width: 450px) { 
img{
    border-radius: 0;
} 
.pad{
   padding: 30px 0px;   
} 
.div_row{
    box-shadow: none;
    border-radius: 0;
}
.mar_top {
    padding-top: 12px!important;
}
}
</style> 
<body>
        <section class="form pad">
            <div class="contanier">
                <div class="row no-gutters div_row">
                    <div class="col-lg-5 div_overflow">
                        <img src="assets/images/login_img.jpg" class="img-fluid" alt="">
                    </div>
                    <div class="col-lg-7 px-5 pt-5 mar_top">
                        <div class="align_center">
                         <h1 class="font-weight-bold py-3">Nakoda Buses</h1>
                         <h4 class="mb-3">Sign in into your account</h4>
                        <form action="<?=base_url()?>CheckLogin" method="post">

                            <?php if(isset($_SESSION['success']))
                            { ?>
                                <div class="alert alert-success"><?=$_SESSION['success']?></div><?php } 
                            ?>
                            <?php if(isset($_SESSION['danger']))
                            { ?>
                            <div class="alert alert-danger"><span><?=$this->session->flashdata('danger')?></span></div><?php } 
                            ?>

                            <div class="form-row">
                                <div class="col-lg-10 icon_one mb-2">
                                   <input type="email" class="form-control p-4" placeholder="abc@gmail.com" name="email" value="<?=set_value('email')?>">
                                   <span class="text-danger"><?=form_error('email')?></span>
                                    <i class="fal fa-envelope"></i>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-lg-10 icon_one">
                                    <input type="password" class="form-control p-4" placeholder="password" name="pass" value="<?=set_value('pass')?>">
                                    <span class="text-danger"><?=form_error('pass')?></span>
                                    <i class="fal fa-key"></i>  
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-lg-10">
                                  <input type="submit" value="SIGN IN" class="btn mt-3 mb-5">
                                </div>
                            </div>
                            <a class="txt" href="#">Forgot Password?</a>
                            <p>Don't have an account?<a class="txt" href="<?=base_url('registration');?>">&nbsp;Sign Up here</a></p>
                        </form>
                        </div>
                    </div>
                </div>
            </div>           
        </section>

        <?php $this->load->view('user/includes/footer'); ?>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</body>
</html>