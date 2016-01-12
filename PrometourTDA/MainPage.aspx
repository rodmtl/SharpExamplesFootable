<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="PrometourTDA.MainPage" MasterPageFile="~/Main1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">

    <div class="jumbotron">
        <h1>Title&nbsp;&nbsp;&nbsp; </h1>
        <p>Application Description</p>
        <p>Select an option to start:</p>
        <p>
            <a class="btn btn-lg btn-primary" href="Admin/MemberList.aspx" role="button">Admin Mode</a>
            &nbsp;&nbsp;
            <a class="btn btn-lg btn-primary" href="#" role="button">Guide Mode</a>
        </p>
    </div>

</asp:Content>
