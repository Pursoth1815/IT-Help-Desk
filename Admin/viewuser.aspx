<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="viewuser.aspx.cs" Inherits="Admin_viewuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script type="text/javascript">
        $(document).ready(function () {

            //$(document).ready(function () {
            //$('.table').DataTable();
            // });

            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
    </script>

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
         <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="auto-style1">
                        <center>
                           <h4><strong>REGISTRATION LIST</strong></h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ITConnectionString %>" SelectCommand="SELECT * FROM [Signup]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                           <Columns>
                              <asp:BoundField DataField="Full_Name" HeaderText="Full_Name" SortExpression="Full_Name" />
                              <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                               <asp:BoundField DataField="Contact_No" HeaderText="Contact_No" SortExpression="Contact_No" />
                               <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                               <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                               <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                               <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                               <asp:BoundField DataField="User_ID" HeaderText="User_ID" SortExpression="User_ID" />
                               <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
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

