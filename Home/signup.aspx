<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="Home_signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <br />

    <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="../imgs/signup.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>User Sign Up</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                 <div class="row">
                     <div class="col-md-6">
                     <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name" required></asp:TextBox>
                        </div>
                     </div>
                    
                     <div class="col-md-6">
                     <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date of Birth" TextMode="Date" required></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   
                   <div class="row">
                     <div class="col-md-6">
                     <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number" required></asp:TextBox>
                        </div>
                     </div>
                    

                     <div class="col-md-6">
                     <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email" required></asp:TextBox>
                        </div>
                     </div>
                  </div>

                   <div class="row">
                   <div class="col-md-6">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City" required></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-6">
                        <label>Pincode</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode"  required></asp:TextBox>
                        </div>
                     </div>
                     </div>

                   <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2" required></asp:TextBox>
                        </div>
                     </div>
                  </div>

                                     <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>
                     </div>
                  </div>

                   <br />

                   <div class="row">
                     <div class="col-md-6">
                     <label>User ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="User ID" required></asp:TextBox>
                        </div>
                     </div>
                    
                     <div class="col-md-6">
                     <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password" required></asp:TextBox>
                        </div>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col">
                       
                        <div class="form-group">
                           <a href="usersignup.aspx"><asp:Button runat="server" class="btn btn-success btn-block btn-lg" id="Button2" type="button" value="Sign Up" Text="Signup" OnClick="Button2_Click" ></asp:Button></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>
    <br />
    <br />
    <br />

</asp:Content>

