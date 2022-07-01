<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="Home_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link href="../CSS/contactus.css" rel="stylesheet" />
	
    <section class="ftco-section">
		<div class="container">
			
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div class="wrapper">
						<div class="row mb-5">
							<div class="col-md-3">
								<div class="dbox w-100 text-center">
			        				<div class="icon d-flex align-items-center justify-content-center">
			        					<span class="fa fa-map-marker"></span>
			        				</div>
			        					<div class="text">
											<p><span>Address:</span> 198 West 21th Street, chennai 620 032</p>
										</div>
								 </div>
							</div>
									<div class="col-md-3">
										<div class="dbox w-100 text-center">
			        						<div class="icon d-flex align-items-center justify-content-center">
			        							<span class="fa fa-phone"></span>
			        						</div>
			        							<div class="text">
													<p><span>Phone:</span> <a href="tel://7448944737">+91 7448944737</a></p>
												</div>
										</div>
									</div>
											<div class="col-md-3">
												<div class="dbox w-100 text-center">
			        								<div class="icon d-flex align-items-center justify-content-center">
			        									<span class="fa fa-paper-plane"></span>
			        								</div>
			        									<div class="text">
															<p><span>Email:</span> <a href="mailto:ithelpdesk@gmail.com">ithelpdesk@gmail.com</a></p>
														</div>
												</div>
											</div>
												<div class="col-md-3">
													<div class="dbox w-100 text-center">
			        									<div class="icon d-flex align-items-center justify-content-center">
			        										<span class="fa fa-globe"></span>
			        									</div>
			        										<div class="text">
																<p><span>Website</span> <a href="#">ithelpdesk.com</a></p>
															</div>
														</div>
													</div>
												</div>
						<div class="row no-gutters">
							<div class="col-md-7">
								<div class="contact-wrap w-100 p-md-5 p-4">
									<h3 class="mb-4">Contact Us</h3>
									<div id="form-message-warning" class="mb-4"></div> 
				      		<div id="form-message-success" class="mb-4">
				            Your message was sent, thank you!
				      		</div>
									
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="label" >Full Name</label>

													<asp:TextBox ID="TextBox1" runat="server" type="text" class="form-control"   placeholder="Name" required="required"></asp:TextBox>
													
												</div>
											</div>
											<div class="col-md-6"> 
												<div class="form-group">
													<label class="label" >Email Address</label>

													<asp:TextBox ID="TextBox2" runat="server" type="email" class="form-control"   placeholder="Email" required="required"></asp:TextBox>
													
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="label" >Subject</label>

													<asp:TextBox ID="TextBox3" runat="server" type="text" class="form-control"   placeholder="Subject" required="required"></asp:TextBox>
											
												</div>
											</div>
											<div class="col-md-6"> 
												<div class="form-group">
													<label class="label" >Number</label>

													<asp:TextBox ID="TextBox4" runat="server" type="text" class="form-control"   placeholder="Number" required="required"></asp:TextBox>
													
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label class="label" >Message</label>

													<asp:TextBox ID="TextBox5" runat="server"  class="form-control"  cols="30" rows="4" placeholder="Message" required="required" TextMode="MultiLine" ></asp:TextBox>
													
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">

		                                            <asp:Button ID="Button1" runat="server" Text="Send Message" class="btn btn-primary" type="submit" OnClick="Button1_Click" />

													<div class="submitting"></div>
												</div>
											</div>
										</div>
									
								</div>
							</div>
							<div class="col-md-5 d-flex align-items-stretch">
								<div class="info-wrap w-100 p-5 img" style="background-image: url(../imgs/contactus.png);">
			          </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</asp:Content>

