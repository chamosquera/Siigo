<%@ Page Title="" Language="C#" MasterPageFile="~/forms/productos/Site1.Master" AutoEventWireup="true"
    CodeBehind="default.aspx.cs" Inherits="CuerosColombia.forms.productos._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-9">
            <h2>
                Productos</h2>
            <%--<ol class="breadcrumb">
                <li class="breadcrumb-item active"><strong id="Strong1" runat="server"></strong>
                </li>
            </ol>--%>
        </div>
    </div>
    <div class="wrapper wrapper-content animated fadeInUp">
        <div class="ibox">
            <div class="ibox-title">
                <h5>
                    Listado de productos</h5>
            </div>
            <div class="ibox-content">
                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover dataTables-example">
                            <thead>
                                <tr>
                                    <th>
                                        Código
                                    </th>
                                    <th>
                                        Empresa
                                    </th>
                                    <th>
                                        Producto
                                    </th>
                                    <th>
                                        Descripción
                                    </th>
                                    <th>
                                        Precio
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="repeater_productos" runat="server" ClientIDMode="AutoID">
                                    <HeaderTemplate>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr class="gradeX">
                                            <td>
                                                <%#Eval("CODIGO")%>
                                            </td>
                                            <td>
                                                <%#Eval("EMPRESA")%>
                                            </td>
                                            <td>
                                                <%#Eval("PRODUCTO")%>
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
                                        Código
                                    </th>
                                    <th>
                                        Empresa
                                    </th>
                                    <th>
                                        Producto
                                    </th>
                                    <th>
                                        Descripción
                                    </th>
                                    <th>
                                        Precio
                                    </th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
