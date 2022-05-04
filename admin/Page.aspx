﻿<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" ValidateRequest ="false"  CodeBehind="Page.aspx.cs" Inherits="WangQi.ERP.Web.admin.Page" Title="无标题页" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2"%>
<%@ Register TagPrefix="uc" TagName="ContentChannel" Src="~/admin/ContentChannel.ascx"%>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <uc:ContentChannel ID="ContentChannel" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
		<li><a href="#">频道内容</a></li><li><a href="PageAdd.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">添加子频道</a></li><li><a href="PageList.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">子频道列表</a></li><li><a href="PageEdit.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">子频道内容</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle" >
            "<asp:Label ID="MenuName" runat="server" ForeColor="Black"></asp:Label>" 频道内容</td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF" colspan="2" >
            <FCKeditorV2:FCKeditor ID="EditorControl1" runat="server" Height="250px" Width="100%"></FCKeditorV2:FCKeditor>
            </td>
      </tr>

      <tr>
        <td align="right" bgcolor="#FFFFFF"></td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Button ID="UpDate" runat="server" Text="添加内容" CssClass="inputBt" OnClick="UpDate_Click" /></td>
      </tr>
    </table>
  </div>
  <script language="JavaScript" type="text/javascript" >
        var op=location.search;
       if(op.toLowerCase().indexOf("hidden")>-1)
       {
        topMenuThisPage(2);//当前位置顶部菜单标识
       }
       else
       {
        topMenuThisPage(1);//当前位置顶部菜单标识
       }
        //topMenuThisPage(2);//当前位置顶部菜单标识
        contentMenuThisPage();//显示当前页在左侧菜单位置
        mainMenuThisPage(1);//当前选项卡标识
  </script>
</asp:Content>


