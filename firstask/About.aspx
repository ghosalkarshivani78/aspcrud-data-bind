<%@ Page Title="About Us" Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="firstask.About" %>

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
    <form runat="server">
    <div class="form-group">
      <label for="inputEmail4">First Name</label>
      <asp:TextBox ID="fname" CssClass="form-control"  runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Enter First name" ControlToValidate="fname" ForeColor="Red"></asp:RequiredFieldValidator>
      <input type="hidden" id="hiddenid" />
</div>
<div class="form-group">
      <label for="inputEmail4">Last Name</label>
        <asp:TextBox ID="lname" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Enter Last name" ControlToValidate="lname" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
 <div class="form-group">
    <label for="inputAddress">Email</label>
   <asp:TextBox ID="email" CssClass="form-control" runat="server"></asp:TextBox>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
         runat="server" ControlToValidate="email" ErrorMessage="Invalid Email" 
         ForeColor="Red" 
         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Enter Email " ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
   <asp:TextBox ID="address" CssClass="form-control" runat="server"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Enter Address" ControlToValidate="address" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>
    <div class="form-group col-md-5">
      <label for="inputCity">City</label>&nbsp;
       <%--<asp:DropDownList ID="city"  runat="server" AutoPostBack="True">
             <asp:ListItem Text="<%#Eval("cityid")%>"<%#Eval("city")%>> </asp:ListItem>
        </asp:DropDownList> --%>
      
     
        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="Enter City" ControlToValidate="cityid" ForeColor="Red"></asp:RequiredFieldValidator>--%>
      <select name="cityid">
      <asp:Repeater id="cityList" runat="server">
        <ItemTemplate>
            <option Value="<%#Eval("cityid")%>"><%#Eval("city")%></option>
        </ItemTemplate>
     </asp:Repeater>
      </select></div>
   
    <div class="form-group">
      <label for="inputZip">Mobile Number</label>
      <asp:TextBox ID="number" CssClass="form-control mb-3" runat="server" ></asp:TextBox>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
            runat="server" ControlToValidate="number" ErrorMessage="Invalid Number" 
            ForeColor="Red" ValidationExpression="[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="Enter Number" ControlToValidate="number" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
  <div class="text-center">
<asp:Button ID="Button1" CssClass="btn btn-primary mb-2" OnClick="submit" runat="server" Text="submit" />
</div>
</form>
    </div>
    </div>
    <div class="row">
     <div class="col-md-1"></div>
        <div class="col-md-11">
    <div class="Container">
    <div class="table-responsive">
<table class="table" id="usertable">
<asp:Repeater ID="repeater1" runat="server">
<HeaderTemplate>
  <thead>
  <tr>
      <th>ID</th>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Email</th>
      <th>Address</th>
      <th>City</th>
      <th>Phone Number</th>
  </tr>

  </thead>
  </HeaderTemplate>
  <ItemTemplate>
      <tr>
          <td><%#Eval("id") %></td>
          <td><%#Eval("firstname")%></td>
          <td><%#Eval("lastname")%></td>
          <td><%#Eval("email") %></td>
          <td><%#Eval("address")%></td>
          <td><%#Eval("city")%></td>
          <td><%#Eval("number")%></td>
          <td><button class="btn btn-success"><a href="edit.aspx?id=<%#Eval("id") %>">Edit</a></button></td>
          <td><button class="btn btn-danger" id="deleteuser" data-id="<%#Eval("id")%>">Delete</button></td> 
      </tr>
  
  </ItemTemplate>
</asp:Repeater>
</table>
</div>
</div>
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
   <script type="text/javascript" >
          $(document).ready(function () {
        $("#usertable").on('click', '#deleteuser', function () {
            let hiddenid = $(this).attr("data-id")
            $.ajax({
                method: "POST",
                contentType: "application/json; charset=utf-8",
                url: "WebService1.asmx/deleteperson",
                data: "{'id':'" + hiddenid + "'}",
                success: function (resp) {
                    console.log('Response=====>', resp);
                     swal("Deleted Successfully !", "Your data deleted", "success").then(function () {
                        location.reload()
                    });
                },
                dataType: "json"
            });
        })
    })
   </script>
  </body>
  
</html>
    




    
