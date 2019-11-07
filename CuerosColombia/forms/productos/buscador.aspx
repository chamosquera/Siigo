<%@ Page Title="" Language="C#" MasterPageFile="~/forms/productos/Site1.Master" AutoEventWireup="true"
    CodeBehind="buscador.aspx.cs" Inherits="CuerosColombia.forms.productos.buscador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:DropDownList ID="empresas" runat="server">
                <asp:ListItem Value="1">Empresa 1</asp:ListItem>
                <asp:ListItem Value="2">Empresa 2</asp:ListItem>
                <asp:ListItem Value="3">Empresa 3</asp:ListItem>
                <asp:ListItem Value="4">Empresa 4</asp:ListItem>
                <asp:ListItem Value="5">Empresa 5</asp:ListItem>
                <asp:ListItem Value="6">Empresa 6</asp:ListItem>
                <asp:ListItem Value="7">Empresa 7</asp:ListItem>
                <asp:ListItem Value="8">Empresa 8</asp:ListItem>
                <asp:ListItem Value="9">Empresa 9</asp:ListItem>
                <asp:ListItem Value="10">Empresa 10</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="chamo" />
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox ">
                            <div class="ibox-title">
                                <h5>
                                    Basic Data Tables example with responsive plugin</h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link"><i class="fa fa-chevron-up"></i></a><a class="dropdown-toggle"
                                        data-toggle="dropdown" href="#"><i class="fa fa-wrench"></i></a>
                                    <ul class="dropdown-menu dropdown-user">
                                        <li><a href="#" class="dropdown-item">Config option 1</a> </li>
                                        <li><a href="#" class="dropdown-item">Config option 2</a> </li>
                                    </ul>
                                    <a class="close-link"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <div class="ibox-content">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover dataTables-example">
                                        <thead>
                                            <tr>
                                                <th>
                                                    Rendering engine
                                                </th>
                                                <th>
                                                    Browser
                                                </th>
                                                <th>
                                                    Platform(s)
                                                </th>
                                                <th>
                                                    Engine version
                                                </th>
                                                <th>
                                                    CSS grade
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="datos" runat="server" ClientIDMode="AutoID">
                                                <HeaderTemplate>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <tr>
                                                        <td>
                                                            <%#Eval("EMPRESA")%>
                                                        </td>
                                                        <td>
                                                            <%#Eval("CODIGO")%>
                                                        </td>
                                                        <td>
                                                            <%#Eval("NOMBRE")%>
                                                        </td>
                                                        <td>
                                                            <%#Eval("DESCRIPCION")%>
                                                        </td>
                                                        <td>
                                                            <%#Eval("PRECIO")%>
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                </FooterTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>
                                                    Rendering engine
                                                </th>
                                                <th>
                                                    Browser
                                                </th>
                                                <th>
                                                    Platform(s)
                                                </th>
                                                <th>
                                                    Engine version
                                                </th>
                                                <th>
                                                    CSS grade
                                                </th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
