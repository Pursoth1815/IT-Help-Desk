<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="issue.aspx.cs" Inherits="User_issue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

	

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <link href="../Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

    <link href="../CSS/issue.css" rel="stylesheet" />

   <div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
						<div class="form-header">
							<h1>File an Complaient</h1>
						</div>
						<div>
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<span class="form-label">Name</span>
										<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter your Name" ></asp:TextBox>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<span class="form-label">Email</span>
										<asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Enter your Email" type="email"></asp:TextBox>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<span class="form-label">Department</span>
											<asp:DropDownList ID="ddlContent" CssClass="form-control" runat="server" onchange="SelectedTextValue(this)">
												<asp:ListItem Text="Select" Value="" Selected="True" />
												<asp:ListItem Text="Software" Value="Software" />
												<asp:ListItem Text="Hardware" Value="Hardware" />
												<asp:ListItem Text="Network" Value="Network" />
												<asp:ListItem Text="Operating System" Value="Operating System" />
											</asp:DropDownList>
									</div>
								</div>

								<div class="col-sm-6">
									<div class="form-group">
										<span class="form-label">Date</span>
										<asp:TextBox ID="TextBox6" CssClass="form-control" type="date" runat="server"></asp:TextBox>
									</div>
								</div>
							</div>
							<div class="row">
								
								<div class="col-sm-12">
									<div class="form-group">
										<span class="form-label">Number</span>
										<asp:TextBox ID="TextBox5" CssClass="form-control"  runat="server"></asp:TextBox>
									</div>
								</div>
								
							</div>

							<div class="row">
								
								<div class="col-sm-12">
									<div class="form-group">
										<span class="form-label">Description</span>
										<asp:TextBox ID="TextBox3" TextMode="MultiLine" CssClass="form-control"  runat="server"></asp:TextBox>
									</div>
								</div>
								
							</div>

							<div class="form-btn">
								<asp:Button ID="Button1" CssClass="submit-btn" runat="server" Text="Submit" OnClick="Button1_Click"   />
							</div>
							<br />
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<asp:TextBox ID="TextBox4" runat="server" Visible="false"></asp:TextBox>	


</asp:Content>



