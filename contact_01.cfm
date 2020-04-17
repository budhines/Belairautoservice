<cfinclude template="captcha/captcha.cfm">
<cfinclude template="captcha/captcha.cfm">

<cfparam name="form.name" default="" />
<cfparam name="form.email" default="" />
<cfparam name="form.phone" default="" />
<cfparam name="form.subject" default="" />
<cfparam name="form.message" default="" />

<cfif IsDefined("form.submit_form")>
	<cfif blnIsBot>
		<cfset error = true />
	<cfelse>
		<cfif form.name is not "" AND form.email is not "" AND form.subject is not "" And form.message is not "">
			<cfmail to = "belairauto21047@gmail.com,mailadmin@belairautoservice.biz" from = "#form.email#" subject = "#form.subject#" type="html">
			<p style="color:blue;font-size:18px"><b>MailTo:</b> woodiemail@netscape.com<br></p>
			<p style="color:blue;font-size:18px"><b>MailFrom:</b> #Form.email#<br></p>
			<p style="color:blue;font-size:18px"><b>Subject:</b> #Form.subject#</br></p>
			<p style="color:blue;font-size:18px"><b>Message:</b> #Form.message#</br></p>
			</cfmail>
		<cfset confirmtion = true />
		</cfif>
	</cfif>
</cfif>
<style type="text/css">
	.capt_area{
		width: 60%;
		height: 14%;
	}
</style>
<cfinclude template="header.cfm">
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

<cfif isDefined("error")>
	<div id="errorMSG" class="alert alert-danger contact-danger" style="width:auto">
		<a class="close" title="close" aria-label="close" data-dismiss="alert" href="#">x</a>
		Invalid captcha please try again. Thank you!
	</div>
	<script type="text/javascript">
    	setTimeout(function () {
    		$('#errorMSG').slideUp(500);
    	}, 5000);
	</script>
</cfif>
<!--- <section class="page-banner" style="background-image:url(images/Contact-Us.jpg));">
     <div class="auto-container">
		<div class="page-title"><h1>Contact Us</h1></div>
	</div>
</section> --->
<section class="page-banner" style="background-image: url(../images/Contact-Us.jpg); padding-bottom: 80px;">
	 <div class="auto-container">
		<div class="page-title"><h1>Contact Us</h1></div>
	</div>
</section>

<div class="sidebar-page">
	<div class="auto-container">
		<div class="row clearfix">

			<!-- Left Content -->
			<section class="left-content col-lg-8 col-md-8 col-sm-7 col-xs-12">


				<!-- Contact Form -->
				<div class="contact-form contact-form-new">

					<div class="sec-title"><h3 class="skew-lines">FeedBack</h3></div>
					<div class="msg-text">We look forward to hearing from you</div>

					<!--Contact Form-->
					<cfoutput>
					<form class="cmxform" id="contact-form" method="post" action="">
						<div class="row clearfix">

							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-group">
									<label class="form-label" for="cName">Name</label>
									<input id="cName" name="Name" type="text" minlength="3" placeholder="Enter Your Name" required value="#form.Name#" />
								</div>

							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-group">
									<label class="form-label" for="cEmail">Email</label>
									<input id="cEmail" type="email" name="email" placeholder="Enter Your Email Address" required value="#form.email#">
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-group">
                                    <label for="cPhone" class="form-label">Phone</label>
									<input id="cPhone" type="tel" name="phone" placeholder="Enter Phone Number" required value="#FORM.phone#">
								</div>
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-group">
									<label for="cSubject" class="form-label">Subject</label>
									<input id="cSubject" type="text" name="subject" placeholder="Enter a Subject" required value="#FORM.subject#">
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="form-group">
									<label for="cMessage" class="form-label">Message</label>
									<textarea id="cMessage" name="message" placeholder="Type Message Here" minlength="3" required>#FORM.message#</textarea>
								</div>
							</div>

							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="form-group">
									<cfimage action="captcha" class="capt_area" text="#strCaptcha#"
                    				difficulty="medium" fonts="verdana,arial,times new roman,courier"
                    				fontsize="28" />
								</div>
							</div>

							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="form-group">
									<label for="cMessage" class="form-label">Enter text Above</label>
									<input type="hidden" name="submitted" value="1" />
									<input type="hidden" name="captcha_check" value="#FORM.captcha_check#" />
									<input required type="text" name="captcha" id="captcha" value="" />
								</div>
							</div>



                </div>
						<input type = "hidden" name = "name_required" value = "You must enter a recipient">
						<input type = "hidden" name = "email_required" value = "You must enter a sender">
						<input type = "hidden" name = "message_required" value = "You must enter a message">
						<div class="form-group text-right">
							<!---<a class="button btn btn-danger" href="#" onClick="document.getElementById('contact-form').reset()">Clear</a>--->
							<button type="submit" name="submit_form" class="theme-btn dark-btn hvr-bounce-to-right"><span class="fa fa-envelope"></span> Send Message</button>
						</div>

					</form>
					</cfoutput>

				</div>


			</section>

			<!-- Side Bar -->
			<aside class="side-bar col-lg-4 col-md-4 col-sm-5 col-xs-12">
				<!-- Contact Info -->
				<div class="widget cont-info">
					<div class="sec-title"><h3 class="skew-lines">company info</h3></div>
					<div class="cont-box">
						<div class="text">1515 Belair Road Fallston, MD 21047</div>
						<ul class="info">
							<li><strong>Email</strong> <a href="mailto:carshire@email.com">mail@BelAirAutoService.biz</a></li>
							<li><strong>Phone</strong> <a href="#">410.838.7227</a></li>
							<li><strong>Phone</strong> <a href="#">410.879.2254</a></li>
							<li><strong>Fax</strong> <a href="#">410.877.1507</a></li>
							<li><strong>Website</strong> <a href="http://belairautoservice.biz">BelAirAutoService.biz</a></li>
						</ul>
					</div>

				</div>
				<div class="site-map">
					<iframe src="https://www.google.com/maps/d/embed?mid=zj0zOtQ5QWdw.kx2mAYhDcvT4" width="640" height="480"></iframe>
				</div>


			</aside>

		</div>
	</div>

</div>



<script>
//$.validator.setDefaults({
//	submitHandler: function() { alert("submitted!"); }
//});

$().ready(function() {
	// validate the comment form when it is submitted

	$("#contact-form").validate();

	// validate signup form on keyup and submit
	$("#signupForm").validate({
		rules: {
		<!--	firstname: "required",
		<!--	lastname: "required",-->-->
			name: {
				required: true,
				minlength: 2
			},
			//password: {
//				required: true,
//				minlength: 5
//			},
//			confirm_password: {
//				required: true,
//				minlength: 5,
//				equalTo: "#password"
//			},
			email: {
				required: true,
				email: true
			},
			topic: {
				required: "#newsletter:checked",
				minlength: 2
			},
			agree: "required"
		},
		messages: {
			name: "Please enter your name",
			//lastname: "Please enter your lastname",
//			username: {
//				required: "Please enter a username",
//				minlength: "Your username must consist of at least 2 characters"
//			},
//			password: {
//				required: "Please provide a password",
//				minlength: "Your password must be at least 5 characters long"
//			},
//			confirm_password: {
//				required: "Please provide a password",
//				minlength: "Your password must be at least 5 characters long",
//				equalTo: "Please enter the same password as above"
//			},
			email: "Please enter a valid email address"
			<!--agree: "Please accept our policy"-->
		}
	});

	// propose username by combining first- and lastname
	$("#username").focus(function() {
		var firstname = $("#firstname").val();
		var lastname = $("#lastname").val();
		if(firstname && lastname && !this.value) {
			this.value = firstname + "." + lastname;
		}
	});

	//code to hide topic selection, disable for demo
	var newsletter = $("#newsletter");
	// newsletter topics are optional, hide at first
	var inital = newsletter.is(":checked");
	var topics = $("#newsletter_topics")[inital ? "removeClass" : "addClass"]("gray");
	var topicInputs = topics.find("input").attr("disabled", !inital);
	// show when newsletter is checked
	newsletter.click(function() {
		topics[this.checked ? "removeClass" : "addClass"]("gray");
		topicInputs.attr("disabled", !this.checked);
	});
});
</script>
<cfinclude template="footer.cfm">
