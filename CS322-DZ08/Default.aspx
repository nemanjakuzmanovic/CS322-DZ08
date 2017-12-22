<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CS322_DZ08._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
		  
 
      <div class="container" id="home">
		<div class="row">
			<div class="col-md-7">
				<h3 class="slogan">
					Facebook helps you connect and share with the people in your life.
				</h3>
				<img src="img/1.png" class="img-responsive" />
			</div>
			<div class="col-md-5">
			<form method="post" class="form" role="form">
			<legend><a>Create your account</a></legend>
            <h4>It's free and always will be.</h4>
            <div class="row">
                <div class="col-xs-6 col-md-6">
                    <asp:TextBox class="form-control input-lg" ID="fName" name="firstname" placeholder="First Name" type="text" runat="server"></asp:TextBox>
                </div>
                <div class="col-xs-6 col-md-6">
                    <asp:TextBox class="form-control input-lg" ID="lName" name="lastname" placeholder="Last Name" type="text" runat="server"></asp:TextBox>
                </div>
            </div>
            <asp:TextBox class="form-control input-lg" ID="uEmail" name="youremail" placeholder="Your Email" type="email" runat="server"></asp:TextBox>
            <asp:TextBox class="form-control input-lg" ID="sEmail" name="reenteremail" placeholder="Re-enter Email" type="email" runat="server"></asp:TextBox>
            <asp:TextBox class="form-control input-lg" ID="pW" name="password" placeholder="New Password" type="password" runat="server"></asp:TextBox>
            <label for="">
                Birth Date</label>
            <div class="row">
                <div class="col-xs-4 col-md-4">
                    <asp:TextBox class="form-control input-lg" ID="uMonth" name="month" placeholder="Month" type="text" runat="server"></asp:TextBox>
                </div>
                <div class="col-xs-4 col-md-4">
                    <asp:TextBox class="form-control input-lg" ID="uDay" name="day" placeholder="Day" type="text" runat="server"></asp:TextBox>
                </div>
                <div class="col-xs-4 col-md-4">
                    <asp:TextBox class="form-control input-lg" ID="uYear" name="year" placeholder="Year" type="text" runat="server"></asp:TextBox>
                </div>
            </div>
                <asp:RadioButtonList ID="rdo" runat="server" RepeatLayout="Flow">
            
                <asp:ListItem Value="Male" ID="rb1" runat="server" Selected="True">Male</asp:ListItem>
                    <asp:ListItem Value="Female" ID="rb2" runat="server">Female</asp:ListItem>
           
          
                    </asp:RadioButtonList>
            <br />
			<span class="help-block">By clicking Create my account, you agree to our Terms and that you have read our Data Use Policy, including our Cookie Use.</span>
            <asp:Button ID="btn1" OnClick="test_Click" class="btn btn-lg btn-primary btn-block signup-btn" type="submit" runat="server" Text="Create my account">
               </asp:Button>
            </form>
 
			</div>
		</div>
      </div>
    
 
    <div id="footer">
      <div class="container">
        <p class="text-muted credit"><a href="http://facebook.com">Facebook.com</a></p>
      </div>
    </div>
 

</asp:Content>
