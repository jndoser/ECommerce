<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ECommerce.Default" %>

<%@ Register assembly="DevExpress.Web.v21.1, Version=21.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 174px;
        }
        .auto-style3 {
            height: 18px;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="7">
                        <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="1" EnableTheming="True" Theme="MaterialCompact" OnActiveTabChanged="ASPxPageControl1_ActiveTabChanged">
                            <TabPages>
                                <dx:TabPage Name="Smartphone" Text="Điện thoại">
                                    <ContentCollection>
                                        <dx:ContentControl runat="server">
                                            <table class="dx-justification">
                                                <tr>
                                                    <td>
                                                        <dx:ASPxDropDownEdit ID="ASPxDropDownEdit1" runat="server" EnableTheming="True" Theme="MaterialCompact">
                                                            <Buttons>
                                                                <dx:EditButton Text="Apple">
                                                                </dx:EditButton>
                                                                <dx:EditButton Text="Samsung">
                                                                </dx:EditButton>
                                                                <dx:EditButton Text="Xiaomi">
                                                                </dx:EditButton>
                                                            </Buttons>
                                                        </dx:ASPxDropDownEdit>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="dx-ac">
                                                        <dx:ASPxDataView ID="ASPxDataView1" runat="server" DataSourceID="SqlDataSource1" EnableCallbackAnimation="True" OnItemCommand="ASPxDataView1_ItemCommand" OnPageIndexChanged="ASPxDataView1_PageIndexChanged">
                                                            <PagerSettings ShowNumericButtons="False">
                                                            </PagerSettings>
                                                            <ItemTemplate>
                                                                <table class="dx-justification">
                                                                    <tr>
                                                                        <td>
                                                                            <dx:ASPxImage ID="ASPxImage2" runat="server" Height="200px" ImageUrl='<%# Eval("Hinh") %>' ShowLoadingImage="True" Width="200px">
                                                                            </dx:ASPxImage>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style3">
                                                                            <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text='<%# Eval("TenHang") %>'>
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text='<%# Eval("Gia") %>'>
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <dx:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click" Text="View" OnCommand="ASPxButton1_Command" Theme="iOS">
                                                                            </dx:ASPxButton>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ItemTemplate>
                                                            <ItemStyle BackColor="White" />
                                                        </dx:ASPxDataView>
                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECommerceConnectionString %>" SelectCommand="SELECT * FROM [HangHoa]"></asp:SqlDataSource>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </table>
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:TabPage>
                                <dx:TabPage Name="Laptop" Text="Laptop">
                                    <ContentCollection>
                                        <dx:ContentControl runat="server">
                                            <table class="dx-justification">
                                                <tr>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <dx:ASPxDataView ID="ASPxDataView2" runat="server" DataSourceID="SqlDataSource2" Theme="MaterialCompact">
                                                            <PagerSettings ShowNumericButtons="False">
                                                            </PagerSettings>
                                                            <ItemTemplate>
                                                                <table class="auto-style1">
                                                                    <tr>
                                                                        <td class="auto-style4">
                                                                            <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl='<%# Eval("Hinh") %>' Width="200px"
                                                                     />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style4">
                                                                            <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text='<%# Eval("TenHang") %>'>
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style4">
                                                                            &nbsp;<dx:ASPxImage ID="ASPxImage1" runat="server" ShowLoadingImage="true">
                                                                            </dx:ASPxImage>
                                                                            <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text='<%# Eval("Gia") %>'>
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style4">
                                                                            <dx:ASPxButton ID="ASPxButton2" runat="server" Text="ASPxButton" Theme="iOS">
                                                                            </dx:ASPxButton>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ItemTemplate>
                                                            <ItemStyle BackColor="White" />
                                                            <PagerStyle BackColor="White" />
                                                        </dx:ASPxDataView>
                                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ECommerceConnectionString %>" SelectCommand="SELECT * FROM [HangHoa]"></asp:SqlDataSource>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </table>
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:TabPage>
                                <dx:TabPage Name="Smartwatch" Text="Tablet">
                                    <ContentCollection>
                                        <dx:ContentControl runat="server">
                                            <table class="dx-justification">
                                                <tr>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <dx:ASPxDataView ID="ASPxDataView3" runat="server" DataSourceID="SqlDataSource3">
                                                            <PagerSettings ShowNumericButtons="False">
                                                            </PagerSettings>
                                                            <ItemTemplate>
                                                                <table class="dx-justification">
                                                                    <tr>
                                                                        <td class="dx-ac">
                                                                            <asp:Image ID="Image3" runat="server" Height="200px" ImageUrl='<%# Eval("Hinh") %>' Width="200px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="dx-ac">
                                                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("TenHang") %>'></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="dx-ac">
                                                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ItemTemplate>
                                                            <ItemStyle BackColor="White" />
                                                        </dx:ASPxDataView>
                                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ECommerceConnectionString %>" SelectCommand="SELECT * FROM [HangHoa]"></asp:SqlDataSource>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </table>
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:TabPage>
                                <dx:TabPage Name="Accessories" Text="Phụ kiện">
                                    <ContentCollection>
                                        <dx:ContentControl runat="server">
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:TabPage>
                                <dx:TabPage Name="Smartwatch" Text="Đồng hồ thông minh">
                                    <ContentCollection>
                                        <dx:ContentControl runat="server">
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:TabPage>
                                <dx:TabPage Name="Watch" Text="Đồng hồ thời trang">
                                    <ContentCollection>
                                        <dx:ContentControl runat="server">
                                            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource5">
                                                <ItemTemplate>
                                                    MaHang:
                                                    <asp:Label ID="MaHangLabel" runat="server" Text='<%# Eval("MaHang") %>' />
                                                    <br />
                                                    MaLoai:
                                                    <asp:Label ID="MaLoaiLabel" runat="server" Text='<%# Eval("MaLoai") %>' />
                                                    <br />
                                                    TenHang:
                                                    <asp:Label ID="TenHangLabel" runat="server" Text='<%# Eval("TenHang") %>' />
                                                    <br />
                                                    Date:
                                                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                                                    <br />
                                                    Gia:
                                                    <asp:Label ID="GiaLabel" runat="server" Text='<%# Eval("Gia") %>' />
                                                    <br />
                                                    Hinh:
                                                    <asp:Label ID="HinhLabel" runat="server" Text='<%# Eval("Hinh") %>' />
                                                    <br />
                                                    MoTa:
                                                    <asp:Label ID="MoTaLabel" runat="server" Text='<%# Eval("MoTa") %>' />
                                                    <br />
                                                    <br />
                                                </ItemTemplate>
                                            </asp:DataList>
                                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ECommerceConnectionString %>" SelectCommand="SELECT * FROM [HangHoa]"></asp:SqlDataSource>
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:TabPage>
                                <dx:TabPage Name="PC_Printer" Text="PC &amp; Máy in">
                                    <ContentCollection>
                                        <dx:ContentControl runat="server">
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:TabPage>
                            </TabPages>
                            <TabStyle BackColor="White">
                            </TabStyle>
                        </dx:ASPxPageControl>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
