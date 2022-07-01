<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="viewcom.aspx.cs" Inherits="Admin_viewcom" %>

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
         <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="auto-style1">
                        <center>
                           <h4><strong>FEEDBACK LIST</strong></h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ITConnectionString %>" SelectCommand="SELECT * FROM [Contactus]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                           <Columns>
                              <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                              <asp:BoundField DataField="E_mail" HeaderText="E_mail" SortExpression="E_mail" />
                               <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                               <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                               <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
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

