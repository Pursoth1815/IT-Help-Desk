<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Home_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link href="../CSS/StyleSheet.css" rel="stylesheet" />

	<br />
	<br />

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

	<div class="container">

	 <div class="contact-parent">

		 <div class="contact-parent">

            <div class="contact-child child1">

                

            </div>

		 <div class="contact-child child2">

                <div class="inside-contact">

                    <h2>Contact Us</h2>
                    <h3>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </h3>
                    <p>Name *</p>
                    <asp:TextBox ID="TextBox1" runat="server" required="required"></asp:TextBox>

                    <p>Email *</p>
                    <asp:TextBox ID="TextBox2" runat="server" required="required"></asp:TextBox>

                    <p>Phone *</p>
                    <asp:TextBox ID="TextBox3" runat="server" required="required"></asp:TextBox>

                    <p>Subject *</p>
                    <asp:TextBox ID="TextBox4" runat="server" required="required"></asp:TextBox>

                    <p>Message *</p>
                    <asp:TextBox ID="TextBox5" runat="server" required="required" TextMode="MultiLine" Rows="4"></asp:TextBox>

                    <asp:Button ID="Button1" runat="server" Text="SEND"  />

                </div>

            </div>

		</div>

	</div>


</asp:Content>

