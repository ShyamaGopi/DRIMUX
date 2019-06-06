<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="UserPostAlertList.aspx.cs" Inherits="Admin_UserPostAlertList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="women_main">
	<!-- start content -->
	<div class="grids">
        <div class="panel panel-widget forms-panel">
						<div class="forms">
							<div class="form-two widget-shadow">
								<div class="form-title">
									<h4>Alert List</h4>
								</div>
							
							</div>
						</div>
					</div>

        <div class="panel panel-widget forms-panel">
						<div class="forms">
							<div class="form-three widget-shadow">
								<div class=" panel-body-inputin">
									<div class="form-horizontal">

                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ForeColor="#823566"  Height="150px" Width="930px" OnRowCommand="GridView1_RowCommand">
                                            <Columns>
                                                <asp:BoundField DataField="Firstname" HeaderText="Name" />
                                                <asp:BoundField DataField="Text" HeaderText="Text" />
                                                <asp:BoundField DataField="Url" HeaderText="Url" />
                                                <asp:BoundField DataField="date" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />
                                                <asp:BoundField DataField="Time" HeaderText="Time" DataFormatString="{0:hh-mm-tt}" />
                                                <asp:TemplateField ShowHeader="False" HeaderText="Change">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" class="fa fa-check" CommandArgument='<%# Eval("MediaId") %>' CommandName="Change"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
 <HeaderStyle CssClass="centerHeaderText"></HeaderStyle>

                                            <RowStyle HorizontalAlign="Center" ForeColor="#555" />
                                        </asp:GridView>
                                       
                                        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                                              <style>
    .centerHeaderText th {
        text-align: center;
    }
</style>
                                          </div>
        </div>
     </div>
        </div>
             </div>
        </div>
         </div>
</asp:Content>

