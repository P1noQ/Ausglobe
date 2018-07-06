<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BrandUserControl.ascx.cs" Inherits="BrandUserControl" %>

<asp:Repeater runat="server" ID="rpBrand">
    <ItemTemplate>
        <div class="box-category treemenu">
            <a target="_new" href='<%#Eval("Link") %>' >
                <img style="width:100%;height:auto;" src='<%#Eval("image","admin/uploadimage/brand/{0}") %>' />
            </a>
        </div>
    </ItemTemplate>
</asp:Repeater>
