<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="ChennaiAutoSpareParts.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="lstyles.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row m-5 no-gutters shadow-lg">
                <div class="col-md-6 d-none d-md-block">
                    <img
                        src="https://images.pexels.com/photos/7568422/pexels-photo-7568422.jpeg?auto=compress&cs=tinysrgb&w=600"
                        class="img-fluid"
                        style="min-height: 100%"
                    />
                </div>
            <div class="col-md-6 bg-white p-5">
      <h3 class="pb-3">Welcome to Murugan Auto Spares</h3>
      <p class="pb-3"> A One stop solution for all your automobile spare parts.</p>
      <div class="form-style">
          <div class="form-group pb-3">
            <asp:Label ID="Label3" runat="server" Text="E-mail"></asp:Label>
            <asp:TextBox ID="email" CssClass="form-control" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="email" ForeColor="Red" runat="server" ErrorMessage="Mobile Number is Required"></asp:RequiredFieldValidator>
          </div>
          <div class="form-group pb-3">
            <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="uname" CssClass="form-control" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="uname" ForeColor="Red" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
          </div>
          <div class="form-group pb-3">
            <asp:Label ID="Label4" runat="server" Text="Mobile Number"></asp:Label>
            <asp:TextBox ID="mobnum" CssClass="form-control" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="mobnum" ForeColor="Red" runat="server" ErrorMessage="Mobile Number is Required"></asp:RequiredFieldValidator>
          </div>
          <div class="form-group pb-3">
            <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="pwd" runat="server">

            </asp:TextBox>  
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="pwd" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                
          </div>
          <div class="pb-2">
              <asp:Button ID="signup" runat="server" CssClass="form-control btn btn-dark w-100 font-weight-bold mt-2" Text="Sign Up" OnClick="signup_Click" />
          </div>
        <div class="sideline">OR</div>
        <div class="pt-4 text-center">
          Already have a account. <a href="login.aspx">Log In</a>
        </div>
      </div>
    </div>
  </div>
</div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>
