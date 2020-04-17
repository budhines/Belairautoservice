<cfif IsDefined("form.quickemail")>
  <cfif form.name is not "" AND form.quickemail is not "" And form.message is not "">
	  <cfmail to = "belairauto21047@gmail.com,mailadmin@belairautoservice.biz" from = "#form.quickemail#" subject = "Quick Email" type="html">
      		 <!---Change  requested by Chris Woodie on 04/09/2020 --->
             <!---Changed email address from woodiemail@netscape.com to belairauto21047@gmail.com--->
            <!---<p style="color:blue;font-size:18px"><b>MailTo:</b> woodiemail@netscape.com<br></p>--->
			<p style="color:blue;font-size:18px"><b>MailTo:</b> belairauto21047@gmail.com<br></p>

			<p style="color:blue;font-size:18px"><b>MailFrom:</b> #Form.quickemail#<br></p>

			<p style="color:blue;font-size:18px"><b>Subject:</b> Quick Email</br></p>

			<p style="color:blue;font-size:18px"><b>Message:</b> #Form.message#</br></p>
	  </cfmail>

	  <cfset confirmtion = true />
  </cfif>
</cfif>

<!DOCTYPE html>
<html>
<head>
 <title>Chris Woodie's Bel Air Auto Service</title>
     <meta name="description" content="Auto Repair, Car Repair, Truck Repair, All Makes and Models, Full Service, Extended Warranty Service,
  Check Engine Lights, ABS & SRS Lights, Electrical, Tune-ups, Performance Modifications, Tires, Brakes, Suspensions, Wheel Alignments,
   Oil Changes, MD State Inspections, Air Conditioning Service, Transmission Service" />
    <meta name="keywords" content="Auto Repair, Car Repair, Truck Repair, All Makes and Models, Full Service, Extended Warranty Service,
  Check Engine Lights, ABS & SRS Lights, Electrical, Tune-ups, Performance Modifications, Tires, Brakes, Suspensions, Wheel Alignments,
   Oil Changes, MD State Inspections, Air Conditioning Service, Transmission Service">
    <META HTTP-EQUIV="Content-Type" content="text/html; charset=iso-8859-1">
    <meta name="robots" content="index, follow">
    <meta name="distribution" content="global">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="Resource-type" content="document">
    <meta http-equiv="Copyright" content=" Auto Repair, Car Repair, Truck Repair, All Makes and Models, Full Service, Extended Warranty Service,
  Check Engine Lights, ABS & SRS Lights, Electrical, Tune-ups, Performance Modifications, Tires, Brakes, Suspensions, Wheel Alignments,
   Oil Changes, MD State Inspections, Air Conditioning Service, Transmission Service ">
    <meta name="Language" content="en-us">
    <meta name="Pragma" content="no-cache">
    <meta name="ROBOTS" content="ALL">
    <meta name="revisit-after" content="1 days">
    <meta name="author" content=" Auto Repair, Car Repair, Truck Repair, All Makes and Models, Full Service, Extended Warranty Service,
  Check Engine Lights, ABS & SRS Lights, Electrical, Tune-ups, Performance Modifications, Tires, Brakes, Suspensions, Wheel Alignments,
   Oil Changes, MD State Inspections, Air Conditioning Service, Transmission Service ">
    <meta charset="utf-8">
<!-- Stylesheets -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/revolution-slider.css" rel="stylesheet">
<link href="css/owl.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link rel="shortcut icon" href="images/icons/favicon.ico" />
<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link href="css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
<script src="js/jquery.js"></script>
</head>

<body>
<div class="page-wrapper">

    <!-- Preloader -->
    <div class="preloader"></div>

    <!-- Main Header -->
    <header class="main-header">
    	<cfif isDefined("confirmtion")>
	    	<div id="confirmMsg" class="alert alert-success contact-succes" style="width:auto">
	    		<a class="close" title="close" aria-label="close" data-dismiss="alert" href="#">x</a>
	    		Thank you, <cfoutput>#form.name#: your message, #form.message#, has been sent. </cfoutput>.
	    	</div>
	    	<script type="text/javascript">
		    	setTimeout(function () {
		    		$('#confirmMsg').slideUp(500);
		    	}, 5000);
	    	</script>
    	</cfif>
        <div class="header-top">
            <div class="auto-container">
                <div class="row clearfix">
                    <!--Logo-->
                    <div class="col-md-4 col-sm-4 col-xs-12 logo">
						<a href="index.cfm">
                   <!-- <img src="images/chriswoodies_logo7.png" alt="Carshire" title="Carshire">-->
                     	<img src="images/logo-2.png" alt="Belair Auto Service" title="Belair Auto Service" height="150">
                    	</a>
					</div>
                    <div class="col-lg-6 header-top-infos col-lg-offset-2">
						<div class="header-right-text">
                         	<h3><b>We Do House Calls!</b></h3>
                        	<h4><b>We'll Pick Up Your Vehicle and Deliver it to Your Home!</b></h4>
                        	<h4><b>We Wear Gloves At All Times And For a Nominal Fee We Can Sanitize the Interior of Your Vehicle</b></h4>
                           	<h3><b>Corona Virus Update - We're Open to Serve You!</b></h3>
							<h4>(At the Fallston BP)</h4>
							<h3>1515 Belair Road Fallston, MD 21047</h3>
						</div>
                        <ul class="clearfix">
                            <li>
                                <div class="clearfix ">
                                    <h3>
                                    <img src="images/icons/header-phone.png" alt="">

                                    <b>Call Us Now</b><br>410.879.2254<br>410.838.7227</h3>
                                </div>
                            </li>
							<li>
								<div class="clearfix ">
                                                                    <h3>
									<img src="images/icons/header-timer.png" alt="">
									<b>Our Hours</b><br> <br>M-F: 8:00 - 5:30</h3>
								</div>
							</li>
                               <!---  <li>
                            <div class="clearfix">
                            <p> at the Fallston BP</p>
                            </div>
                            </li>--->
                        </ul>
                    </div>

                </div>
            </div>
        </div>

        <!--Header Lower-->
		<div class="header-lower">
        	<div class="auto-container">
            	<div class="row clearfix">
                	<!--Main Menu-->
                    <nav class="col-md-9 col-sm-12 col-xs-12 main-menu">
                        <div class="navbar-header">
                            <!-- Toggle Button -->
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>

                        <div class="navbar-collapse collapse clearfix">
                            <ul class="navigation">
                                <li class="current"><a href="index.cfm">Home</a></li>
                                <li><a href="about.cfm">About</a></li>
                                <li><a href="maintenance.cfm">Maintenance</a></li>
                                <li><a href="services.cfm">Services</a></li>
                                <li><a href="contact.cfm">Contact</a></li>
                            </ul>
                        </div>
                    </nav>
                    <!--Main Menu End-->

                    <!--Social Links-->
                    <div class="col-md-3 col-sm-12 col-xs-12 social-outer">
                        <div class="social-links text-right">
                            <a href="https://www.facebook.com/pages/Chris-Woodies-Bel-Air-Auto-Service/213696858678389" class="fa fa-facebook-f"></a>
                            <!---
                            <a href="#" class="fa fa-twitter"></a>
                            <a href="#" class="fa fa-instagram"></a>--->
                            <a href="https://plus.google.com/114670278640307030410" class="fa fa-google"></a>
                           <!--- <a href="#" class="fa fa-pinterest-p"></a>--->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>