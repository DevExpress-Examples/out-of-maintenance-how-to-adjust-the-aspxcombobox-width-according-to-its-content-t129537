<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <script type="text/javascript" src="Scripts/jquery-2.1.1.js"></script>
            <script type="text/javascript">
                function OnSelectionChanged(s, e) {
                    AdjustWidth(s);
                }
                function OnInit(s, e) {
                    AdjustWidth(s);
                }
                function AdjustWidth(s) {
                    var input = s.GetInputElement();
                    var parent = input.parentElement;
                    var span = document.createElement('span');
                    span.style.whiteSpace = "nowrap";
                    span.appendChild(document.createTextNode(input.value));

                    parent.appendChild(span);

                    if ($(span).width() > 170) {
                        comboBox.SetWidth($(span).width() + 30);
                    }
                    else s.SetWidth(170);
                    parent.removeChild(span);
                }
            </script>
            <dx:ASPxComboBox ID="ASPxComboBox" runat="server" AutoPostBack="false" AutoResizeWithContainer="True" ClientInstanceName="comboBox" DropDownHeight="200px">
                <ClientSideEvents SelectedIndexChanged="OnSelectionChanged" Init="OnInit" />                
                <ItemStyle Wrap="True" />
                <Items>
                    <dx:ListEditItem Text="Long Text" />
                    <dx:ListEditItem Text="Very Long Text" />
                    <dx:ListEditItem Text="Very Very Very Long Text" />
                    <dx:ListEditItem Text="Very Very Very Very Very Long Text" />
                </Items>
            </dx:ASPxComboBox>
        </div>
    </form>
</body>
</html>
