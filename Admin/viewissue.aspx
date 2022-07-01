<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="viewissue.aspx.cs" Inherits="Admin_viewissue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex-preferred-size: 0;
            flex-basis: 0;
            -ms-flex-positive: 1;
            flex-grow: 1;
            max-width: 100%;
            padding-left: 15px;
            padding-right: 15px;
            background-color: #333399;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <div class="container">

        <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>COMPLAIENT DETAILS</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/writer.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>User ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>Account Status</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="User Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     
                     <div class="col-6">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                     </div>
                     <div class="col-6">
                        <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button4_Click" />
                     </div>
                  </div>
               </div>
            </div>
           
            <br>
         </div>
          </div>
      
        <div class="row">
         <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="auto-style1">
                        <center>
                           <h4><strong>COMPLAINTS LIST</strong></h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ITConnectionString %>" SelectCommand="SELECT * FROM [issue]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="ID">
                           <Columns>
                              <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                              <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                               <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                               <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                               <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                               <asp:BoundField DataField="dep" HeaderText="Department" SortExpression="dep" />
                               <asp:BoundField DataField="num" HeaderText="Number" SortExpression="num" />
                               <asp:BoundField DataField="des" HeaderText="Description" SortExpression="des" />
                           </Columns>
                        </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
    <br />
    <br />
    <br />
    <br />
</asp:Content>

