<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Practica08.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pizza de Carlos y Guachis</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblPizzeria" runat="server" Text="Pizzería de: Carlos y Guachis"  />
            <h1>Pizzería de: Carlos y Guachis</h1>


            <asp:Panel ID="panelTipoMasa" runat="server" GroupingText="Escoge un tipo de masa:">
                <asp:Table ID="tablaTipoMasa" runat="server">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <asp:RadioButton ID="rbtDelgada" runat="server" Text="Delgada" GroupName="grupoTipos" AutoPostBack="True" OnCheckedChanged="Opciones_CheckedChanged" />
                        </asp:TableCell>
                        <asp:TableCell runat="server"> $5</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <asp:RadioButton ID="rbtPanPizza" runat="server" Text="Pan pizza" GroupName="grupoTipos" AutoPostBack="True" OnCheckedChanged="Opciones_CheckedChanged" />
                        </asp:TableCell>
                        <asp:TableCell runat="server"> $8</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <asp:RadioButton ID="rbtGruesa" runat="server" Text="Gruesa" GroupName="grupoTipos" AutoPostBack="True" OnCheckedChanged="Opciones_CheckedChanged" />
                        </asp:TableCell>
                        <asp:TableCell runat="server"> $10</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:Panel>

            <!-- Panel para seleccionar ingredientes -->
            <asp:Panel ID="panelIngredientes" runat="server" GroupingText="Escoge los ingredientes:">
                <asp:Table ID="tablaIngredientes" runat="server">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <asp:CheckBox ID="chkHongo" runat="server" Text="Champiñones" AutoPostBack="True" OnCheckedChanged="Opciones_CheckedChanged" />
                        </asp:TableCell>
                        <asp:TableCell runat="server">8</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <asp:CheckBox ID="chkPeperoni" runat="server" Text="Peperoni" AutoPostBack="True" OnCheckedChanged="Opciones_CheckedChanged" />
                        </asp:TableCell>
                        <asp:TableCell runat="server">10</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <asp:CheckBox ID="chkSalchicha" runat="server" Text="Salchicha" AutoPostBack="True" OnCheckedChanged="Opciones_CheckedChanged" />
                        </asp:TableCell>
                        <asp:TableCell runat="server">12</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:Panel>

            <br />
            <asp:Literal ID="literalSeleccionActual" runat="server" Text="Valor a pagar:  " />
            <br />
            
            <asp:TextBox ID="txtTotal" runat="server" ReadOnly="True" Text="0" />
            <br />

            

            <asp:LinkButton ID="lnkCheckout" runat="server" Text="Ir a pago..." OnClick="lnkCheckout_Click" />
        </div>
    </form>
</body>
</html>