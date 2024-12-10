<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Practica08.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pago de Pizza</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Tu selección para la pizza es:</h2>
            <asp:Literal ID="literalSeleccion" runat="server"></asp:Literal>
            
            
            <h3>El valor a pagar por tu pizza es:</h3>
            <asp:TextBox ID="txtCosto" runat="server" ReadOnly="True"></asp:TextBox>
            
            
            <h3>Gracias por tu compra! ¡Vuelve pronto!</h3>
        </div>
    </form>
</body>
</html>