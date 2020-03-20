<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quenmatkhau.aspx.cs" Inherits="main.ui.login.quenmatkhau" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Đăng nhập</title>

    <!--Basic Styles-->
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../../assets/css/weather-icons.min.css" rel="stylesheet" />

    <!--Fonts-->
    <%--<link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300" rel="stylesheet" />--%>

    <!--Beyond styles-->
    <link href="../../assets/css/beyond.min.css" rel="stylesheet" />
    <link href="../../assets/css/demo.min.css" rel="stylesheet" />
    <link href="../../assets/css/typicons.min.css" rel="stylesheet" />
    <link href="../../assets/css/animate.min.css" rel="stylesheet" />

    <!--Page Related styles-->
    <link href="../../assets/css/datatable.min.css" rel="stylesheet" />

    <!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
    <script src="../../assets/js/skins.min.js"></script>
</head>
<body>
    <div class="login-container animated fadeInDown">
        <form method="POST" class="form-horizontal" runat="server" enctype="multipart/form-data">
            <div class="loginbox bg-white">
                <div class="loginbox-title">ĐĂNG NHẬP</div>
                <div class="loginbox-or">
                    <div class="or-line"></div>
                    <div class="or">-----</div>
                </div>
                <div class="loginbox-textbox">
                    <asp:TextBox ID="txtEmail1" CssClass="form-control" runat="server" placeholder="Tên đăng nhập"></asp:TextBox>
                </div>
                <div class="loginbox-textbox">
                    <asp:TextBox ID="txtPass1" TextMode="Password" CssClass="form-control" runat="server" placeholder="Mật khẩu"></asp:TextBox>
                </div>
                <div class="loginbox-textbox">
                    <asp:TextBox ID="txtPass2" TextMode="Password" CssClass="form-control" runat="server" placeholder="Xác nhận mật khẩu"></asp:TextBox>
                </div>
                <div class="loginbox-textbox">
                    <asp:TextBox ID="txtsdt" TextMode="Phone" CssClass="form-control" runat="server" placeholder="Số điện thoại"></asp:TextBox>
                </div>
                <div class="loginbox-submit">
                    <asp:Button ID="btnLogin" class="btn btn-primary btn-block" runat="server" Text="Đổi mật khẩu" OnClick="btnLogin_Click" />
                </div>
                <div class="loginbox-submit">
                    <a href="https://localhost:44312/ui/login/dangnhap.aspx" class="btn info" style="width:230px">
                        Trở về
                    </a>
                </div>
            </div>
            </form>
        <div class="logobox">
        </div>
    </div>

    <!--Basic Scripts-->
    <script src="../../assets/js/jquery.min.js"></script>
    <script src="../../assets/js/bootstrap.min.js"></script>
    <script src="../../assets/js/slimscroll/jquery.slimscroll.min.js"></script>

    <!--Beyond Scripts-->
    <script src="../../assets/js/beyond.js"></script>
    <!--Page Related Scripts-->
    <script src="../../assets/js/toastr/toastr.js"></script>
    <script type="text/javascript">
        toastr.options = {
            top: 500,
            closeButton: true,
            progressBar: true,
            showMethod: 'slideDown',
            timeOut: 5000
        };
        <% 
        if (!Session["type"].Equals("")){
            Response.Write("setTimeout(function() {" +
                "toastr." + Session["type"] + "('" + Session["mess"] + "', 'Thông báo');" +
                "}, 100);");
            Session["type"] = "";
            Session["mess"] = "";
        }
        %>
    </script>
</body>
</html>
