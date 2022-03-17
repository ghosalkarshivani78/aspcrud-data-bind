<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false"  CodeBehind="edit.aspx.cs" Inherits="firstask.edit" %>
<!doctype html>
<html lang="en">
  <head>
  

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>

    <title>Hello, world!</title>
      <style type="text/css">
          .style1
          {
              height: 34px;
          }
      </style>
  </head>
  <body>
    <div class="Container">

     <div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-5">
     <asp:Repeater ID="repeater2" runat="server" OnItemDataBound="ItemBound">
<ItemTemplate>
<div class="Container">
<form id="Form1" runat="server">
<div class="form-group ">
      <label for="inputEmail4">First Name</label>
      <asp:TextBox ID="fname" CssClass="form-control"  Text='<%#Eval("firstname") %>'  runat="server"></asp:TextBox>
</div>
<div class="form-group">
      <label for="inputEmail4">Last Name</label>
        <asp:TextBox ID="lname" CssClass="form-control" Text='<%#Eval("lastname") %>' runat="server"></asp:TextBox>
</div>
 <div class="form-group">
    <label for="inputAddress">Email</label>
   <asp:TextBox ID="email" CssClass="form-control mt-2 mb-3"  Text='<%#Eval("email") %>' runat="server"></asp:TextBox>
  </div>
 <div class="form-group">
    <label for="inputAddress">Address</label>
   <asp:TextBox ID="address" CssClass="form-control mt-2 mb-3"  Text='<%#Eval("address") %>' runat="server"></asp:TextBox>
  </div>
 <div class="form-group">
      <label for="inputZip">Mobile Number</label>
      <asp:TextBox ID="number" CssClass="form-control mb-3" Text='<%#Eval("number") %>' runat="server"></asp:TextBox>
    </div>
 <div class="form-group col-md-6 mt-2 mb-3">
      <label for="inputCity">City</label>
      <asp:DropDownList ID="citydrop"  runat="server">

      </asp:DropDownList>
 </div>
 <asp:Button ID="Button1" CssClass="btn btn-primary" OnClick="update" runat="server" Text="Update" />
<button class="btn btn-success"><a href="About.aspx">GO to Home</a></button>
</form>
</div>
</ItemTemplate>

</asp:Repeater>
    </div>
    </div>

    </div>
   

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    
    
    <script type="text/javascript"  src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script type="text/javascript"  src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript"  src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
   
  </body>
  
</html>


          


