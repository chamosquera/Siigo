<%@ Page Title="" Language="C#" MasterPageFile="~/forms/clientes/Site1.Master" AutoEventWireup="true"
    CodeBehind="default.aspx.cs" Inherits="CuerosColombia.forms.clientes._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-9">
                    <h2>
                        Clientes</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item active"><strong id="Strong1" runat="server">Clientes</strong>
                        </li>
                    </ol>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal2"
                        style="float: right">
                        Agregar cliente
                    </button>
                </div>
            </div>
            <div class="wrapper wrapper-content animated fadeInUp">
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>
                            Listado de clientes</h5>
                    </div>
                    <div class="ibox-content">
                        <div class="alert alert-info alert-dismissible fade show" role="alert" runat="server"
                            visible="false" id="alert">
                            <asp:Label ID="msn" runat="server" Text=""></asp:Label>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="ibox-content">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>
                                                Identificación
                                            </th>
                                            <th>
                                                Nombres
                                            </th>
                                            <th>
                                                Apellidos
                                            </th>
                                            <th>
                                                Ver
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="repeater_clientes" runat="server" ClientIDMode="AutoID" OnItemCommand="ver">
                                            <HeaderTemplate>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr class="gradeX">
                                                    <td>
                                                        <asp:Label ID="lb_id" runat="server" Text='<%#Eval("IDENTIFICACION")%>'></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lb_nombres" runat="server" Text='<%#Eval("NOMBRES")%>'></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lb_apellidos" runat="server" Text='<%#Eval("APELLIDOS")%>'></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Button ID="btnguardar" runat="server" Text="Ver" class="btn btn-sm btn-info btn-block"
                                                            Visible="true" />
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
                                                Identificación
                                            </th>
                                            <th>
                                                Nombres
                                            </th>
                                            <th>
                                                Apellidos
                                            </th>
                                            <th>
                                                Ver
                                            </th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
                function openModal() {
                    $('#modal_edit').modal('show');
                }
            </script>
            <div class="modal inmodal" id="myModal2" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content animated flipInY">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">
                                <span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title">
                                Agregar Clientes</h4>
                            <small class="font-bold"></small>
                        </div>
                        <div class="modal-body">
                            <div class="col-lg-12">
                                <div class="ibox ">
                                    <form>
                                    <div class="form-group row">
                                        <label class="col-lg-2 col-form-label">
                                            Identificacion/NIT
                                        </label>
                                        <div class="col-lg-10">
                                            <asp:TextBox ID="txt_id" runat="server" type="number" placeholder="Ingrese el número de identificación/NIT"
                                                class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-2 col-form-label">
                                            Nombres</label>
                                        <div class="col-lg-10">
                                            <asp:TextBox ID="txt_nombre" runat="server" placeholder="Ingrese el(los) nombres"
                                                class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-2 col-form-label">
                                            Apellidos</label>
                                        <div class="col-lg-10">
                                            <asp:TextBox ID="txt_apellido" runat="server" placeholder="Ingrese el(los) apellidos"
                                                class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-white" data-dismiss="modal">
                                Cerrar</button>
                            <asp:Button ID="Button1" runat="server" Text="Guardar" class="btn btn-primary" OnClick="guardar" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal inmodal" id="modal_edit" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content animated flipInY">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">
                                <span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title">
                                Agregar Clientes</h4>
                            <small class="font-bold"></small>
                        </div>
                        <div class="modal-body">
                            <div class="col-lg-12">
                                <div class="ibox ">
                                    <form>
                                    <div class="form-group row">
                                        <label class="col-lg-2 col-form-label" runat="server" id="chamo">
                                        </label>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-2 col-form-label">
                                            Nombres</label>
                                        <div class="col-lg-10">
                                            <asp:TextBox ID="edit_nombres" runat="server" placeholder="Ingrese el(los) nombres"
                                                class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-2 col-form-label">
                                            Apellidos</label>
                                        <div class="col-lg-10">
                                            <asp:TextBox ID="edit_apellidos" runat="server" placeholder="Ingrese el(los) apellidos"
                                                class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-white" data-dismiss="modal">
                                Cerrar</button>
                            <asp:Button ID="Button2" runat="server" Text="Guardar" class="btn btn-primary" />
                        </div>
                    </div>
                </div>
            </div>
            <asp:Button ID="Button3" runat="server" Text="Insertar Productos Auto" OnClick="test" />
            <asp:Button ID="Button4" runat="server" Text="Actualizar Productos Auto" OnClick="act" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
