<%@ Page Title="" Language="C#" MasterPageFile="~/forms/parametrizacion/Site1.Master"
    AutoEventWireup="true" CodeBehind="carga.aspx.cs" Inherits="CuerosColombia.forms.parametrizacion.carga" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="row" runat="server" id="div_crear">
        <div class="col-lg-12">
            <div class="ibox ">
                <div class="ibox-title row">
                    <h5>
                        Carga de archivos</h5>
                </div>
                <div class="ibox-content">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="row">
                                <div class="col-md-8">
                                    <asp:FileUpload ID="FileUpload1" runat="server" class="btn btn-sm" />
                                </div>
                                <div class="col-md-4">
                                    <asp:Button ID="BtnSubir" runat="server" Text="Cargar archivo" class="btn btn-sm btn-primary" OnClick="cargar_archivo"/>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
