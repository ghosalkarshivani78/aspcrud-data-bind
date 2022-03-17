<%@ Page Title="Home Page" Language="C#"  MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="firstask._Default" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
    <%--    <div class="form-row">
    <div class="form-group col-md-6">
        <table class="w-100">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                </td>
                <td class="style3">
                </td>
                <td class="style1">
                </td>
                <td class="style1">
                </td>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td class="style1">
                </td>
                <td class="style3">
                    First Name:</td>
                <td class="style1">
      <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                </td>
                <td class="style1">
                </td>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td class="style1">
                </td>
                <td class="style3">
                </td>
                <td class="style1">
                </td>
                <td class="style1">
                </td>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td class="style1">
                </td>
                <td class="style3">
                    LAst Name:</td>
                <td class="style1">
      <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                </td>
                <td class="style1">
                </td>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td class="style1">
                </td>
                <td class="style3">
                </td>
                <td class="style1">
                </td>
                <td class="style1">
                </td>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    Address:</td>
                <td>
    <asp:TextBox ID="address" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    City:</td>
                <td>
         <asp:DropDownList ID="city" runat="server" >  
            <asp:ListItem Value="Thane">Thane</asp:ListItem>  
            <asp:ListItem Value="Panvel">Panvel </asp:ListItem>  
            <asp:ListItem Value="Gujrat">Gujrat</asp:ListItem>  
        </asp:DropDownList> 
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    Mobile Number:</td>
                <td>
    <asp:TextBox ID="number" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" OnClick="submit" runat="server" Text="submit" />

        <br />
        <br />
        <br />
&nbsp;
    </div>
  </div>
  <table class="table" border='1'>
  <asp:Repeater ID="repeater1" runat="server"/>
  <HeaderTemplate>
  <thead>
  <tr>
    <th>ID</th>
  <th>First Name</th>
  <th>Last Name</th>
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
  <td><%#Eval("address")%></td>
  <td><%#Eval("city")%></td>
  <td><%#Eval("number")%></td>
  <td><button class="btn btn-success"><a href="WebForm1.aspx?id=<%#Eval("id") %>>">Edit</a></button></td>
  <td><button class="btn btn-danger"  id="deleteuser" data-id="<%#Eval("id") %>">Delete</button></td> 
  </tr>
  
  </ItemTemplate>
  </asp:Repeater>
  </table>
  
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .style1
        {
            height: 19px;
        }
        .style2
        {
            width: 214px;
        }
        .style3
        {
            height: 19px;
            width: 214px;
        }
    </style>--%>
</asp:Content>

