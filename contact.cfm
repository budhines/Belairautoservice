<cfif IsDefined("form.email")>
  <cfif form.name is not "" AND form.email is not "" AND form.subject is not "" And form.message is not "">
	  <cfmail to = "belairauto21047@gmail.com,mailadmin@belairautoservice.biz" from = "#form.email#" subject = "#form.subject#" type="html">
      
      		<!---<p style="color:blue;font-size:18px"><b>MailTo:</b> woodiemail@netscape.com<br></p>--->
			<p style="color:blue;font-size:18px"><b>MailTo:</b> belairauto21047@gmail.com<br></p>

			<p style="color:blue;font-size:18px"><b>MailFrom:</b> #Form.email#<br></p>

			<p style="color:blue;font-size:18px"><b>Subject:</b> #Form.subject#</br></p>

			<p style="color:blue;font-size:18px"><b>Message:</b> #Form.message#</br></p>
	  </cfmail>

	  <cfset confirmtion = true />
  </cfif>
</cfif>

<cfinclude template="header.cfm">

<section class="page-banner contact">
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
					<form class="cmxform" id="contact-form" method="post" action="">
						<div class="row clearfix">
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-group">
									<label class="form-label" for="cName">Name</label>
									<input id="cName" name="Name" type="text" minlength="3" placeholder="Enter Your Name" required />
								</div>
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-group">
									<label class="form-label" for="cEmail">Email</label>
									<input id="cEmail" type="email" name="email" value="" placeholder="Enter Your Email Address" required>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-group">
                                    <label for="cPhone" class="form-label">Phone</label>
									<input id="cPhone" type="tel" name="phone" value="" placeholder="Enter Phone Number" required>
								</div>
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-group">
									<label for="cSubject" class="form-label">Subject</label>
									<input id="cSubject" type="text" name="subject" value="" placeholder="Enter a Subject" required>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="form-group">
									<label for="cMessage" class="form-label">Message</label>
									<textarea id="cMessage" name="message" placeholder="Type Message Here" minlength="3" required></textarea>
								</div>
							</div>
						</div>
						<input type = "hidden" name = "name_required" value = "You must enter a recipient">
						<input type = "hidden" name = "email_required" value = "You must enter a sender">
						<input type = "hidden" name = "message_required" value = "You must enter a message">
						<div class="form-group text-right">
							<!---<a class="button btn btn-danger" href="#" onClick="document.getElementById('contact-form').reset()">Clear</a>--->
							<button type="submit" name="submit-form" class="theme-btn dark-btn hvr-bounce-to-right"><span class="fa fa-envelope"></span> Send Message</button>
						</div>

					</form>

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
							<li><strong>Email</strong> <a href="mailto:belairauto21047@gmail.com">belairauto21047@gmail.com</a></li>
							<li><strong>Phone</strong> <a href="#">410.879.2254</a></li>
							<li><strong>Phone</strong> <a href="#">410.838.7227</a></li>
							<li><strong>Fax</strong> <a href="#">410.877.1507</a></li>
							<li><strong>Website</strong> <a href="http://belairautoservice.biz">BelAirAutoService.biz</a></li>
						</ul>
					</div>

				</div>
				<div class="widget site-map">
					<iframe src="https://www.google.com/maps/d/embed?mid=zj0zOtQ5QWdw.kx2mAYhDcvT4" width="640" height="480"></iframe>
				</div>


			</aside>

		</div>
	</div>

</div>


<script src="js/validate.js"></script>

<!--- <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script> --->


<script>
//$.validator.setDefaults({
//	submitHandler: function() { alert("submitted!"); }
//});

$(document).ready(function() {
	// validate the comment form when it is submitted
	$("#contact-form").validate({
		rules:{
			username:{
				required:true
			},
			email:{
				required:true,
				email:true
			},
			subject:{
				required:true
			},
			message:{
				required:true
			}
		}
	});

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
