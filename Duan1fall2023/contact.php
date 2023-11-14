<?php
include("header.php");
?>



<section style="min-height: 450px;">
    <div class="container" style="color:maroon;">
        <div class="col-md-12" >
        <center>
            <h1>Contact Us</h1>
            <h5>GET IN TOUCH</h5>
            <p>Please contact us if you are experiencing problems with the website</p>
        </center>
        </div>
        <div class="row" style="color:white;">
            <div class="col-md-6 mt-5 mb-5" style="border-radius: 30px;background-color:maroon;">
                <h2 class="mt-5 pl-5" style="color:white;">Contact Information</h2>
                <p class="mt-1 pl-5">
                    Our team will reply you within 24 hours
                </p>
                <p class="mt-5"><i class="fa fa-phone  mt-3"></i>&nbsp; 0397468816</p>
                <p class="mt-3"><i class="fa fa-envelope  mt-3"></i>&nbsp; nhom4duan1@gmail.com</p>
                <p class="mt-3"><i class="fa fa-map-marker  mt-3"></i>&nbsp;
                 Tòa nhà FPT Polytechnic., Cổng số 2, 13 P. Trịnh Văn Bô, Xuân Phương, Nam Từ Liêm, Hà Nội, Việt Nam</p>
                <h2 class="mt-5">Join Us</h2>
                <div class="mb-5">
                    <a href="" class="mt-5 " style="color: white;"><i class="fa fa-facebook-square fa-2x mt-3"></i></a>
                    <a href="" class="mt-5 ml-3 " style="color: white;"><i class="fa fa-youtube-square fa-2x mt-3"></i></a>
                    <a href="" class="mt-5 ml-3 " style="color: white;"><i class="fa fa-instagram fa-2x mt-3"></i></a>
                    <a href="" class="mt-5 ml-3 " style="color: white;"><i class="fa fa-twitter-square fa-2x mt-3"></i></a>
                </div>
                
            </div>
            <div class="col-md-6">
                <form method="post">
                    <div class="container" style="color:maroon;">
                
                        <label for="username"><b>Your Name</b></label>
                        <input type="text" style="border-radius:30px;" placeholder="Enter Your Name" name="reg_full_name" id="username" required>

                        <label for="email"><b>Your Email</b></label>
                        <input type="text" style="border-radius:30px;" placeholder="Enter Email" name="reg_email" id="email" required>

                        <label for="number"><b>Your Phone Number</b></label>
                        <input type="tel" style="border-radius:30px;" placeholder="Enter number" name="reg_number_txt" id="number" required>

                        <label for="message">Message</label>
                        <textarea name="message" id="massage" rows="4" style="resize: none;border-radius:30px;"></textarea>

                        <button type="submit" class="btn" name="btn_reg" style="background-color:maroon;color:white;">Send Messenger</button>
                        <hr>
                    </div>

                </form>
            </div>
        </div>
    </div>
</section>



<?php
include("footer.php");
?>