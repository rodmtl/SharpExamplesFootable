<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberList.aspx.cs" 
    Inherits="PrometourTDA.Admin.MemberList"  MasterPageFile="~/Main1.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="server">
    <link href="../Content/footable.bootstrap.css" rel="stylesheet" />
    <%--<link href="../Content/footable.core.css" rel="stylesheet" />--%>
    <link href="../Content/footable.standalone.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
    <div class="page-header">        
        <h1><small>TDA users (Guides)</small></h1>
    </div>
    <div >
        <table class="table Guide" id="tblGuide" data-paging="true" data-paging-size="5" data-filtering="true">
            <thead>
                <tr>
                    <th data-toggle="true">MemberId</th>
                    <th >FirstName</th>
                    <th data-hide="phone,tablet" data-breakpoints="xs sm">MiddleName</th>
                    <th>LastName</th>
                    <th data-hide="phone" data-breakpoints="xs">Email</th>
                    <th data-hide="phone,tablet" data-breakpoints="xs sm" >Password</th>
                    <th data-hide="phone,tablet" data-breakpoints="xs sm md">MemberType</th>
                </tr>
            </thead>
            <tbody>
               
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="7"></td>
                </tr>
            </tfoot>
        </table>
    </div>
    <script id="template1" type="text/x-handlebars-template">
        {{#each members}}
   <tr>
       <td>{{MemberId}}</td>
       <td>{{FirstName}}</td>
       <td>{{MiddleName}}</td>
       <td>{{LastName}}</td>
       <td>{{Email}}</td>
       <td>{{Password}}</td>
       <td>{{MemberType}}</td>       
   </tr>
        {{/each}}
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">
    <script src="../Scripts/footable.js"></script>
    <script src="../Scripts/handlebars.js"></script>
    <script type="text/javascript">        

        var MembersList = {
            serviceAPI: '<%=ConfigurationManager.AppSettings["ApiPath"]%>',
            getMembers: function () {
                try {
                    $.ajax({
                        url: this.serviceAPI + "Member/getMembers",
                        type: "GET",
                        contentType: "application/json; charset=utf-8",
                        datatype: "json",
                        data: [],
                        async: true,
                        success: function (response) { MembersList.getMembersSuccess(response); },
                        error: function (error) { MembersList.getMembersError(error); },
                    });
                } catch (ex) { alert('Something went wrong!'); }
            },
            getMembersSuccess: function (response) {
                var data = $.parseJSON(response);
                var table = $(".Guide");
                // Remove tbody within the table
                table.find("tbody").html(""); 
                // Get The Template HTML from the source
                var template = $("#template1").html();                
                // Compile it
                var compiledCode = Handlebars.compile(template);
                // Then, process compiled code using data as an input                
                var dynamicCode = compiledCode(data);                
                // Assign the output to placeholder
                table.find("tbody").append(dynamicCode);                
                $('#tblGuide').footable({});
                
            },
            getMembersError: function (error) {
                var err = $.parseJSON(error.responseText);
                alert(err.ExceptionMessage);
            }
        };
    </script>
    
    <script type="text/javascript">
        jQuery(function ($) {            
            MembersList.getMembers();           
            
        });
    </script>
    

</asp:Content>

