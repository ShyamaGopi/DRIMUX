<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Admin_Users" %>

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
									<h4>User Details</h4>
								</div>
							
							</div>
						</div>
					</div>

        <div class="panel panel-widget forms-panel">
						<div class="forms">
							<div class="form-three widget-shadow">
								<div class=" panel-body-inputin">
									<div class="form-horizontal">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ForeColor="#823566" OnRowCommand="GridView1_RowCommand" Height="300px" Width="930px">
                                                <HeaderStyle CssClass="centerHeaderText"></HeaderStyle>

                                            <RowStyle HorizontalAlign="Center" ForeColor="#555" />
 <Columns>
                                           
                                                <asp:BoundField DataField="Firstname" HeaderText="Firstname" />
                                                <asp:BoundField DataField="DOB" HeaderText="DOB" DataFormatString="{0:dd/MM/yyyy}" />
                                                <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                                                <asp:BoundField DataField="Email" HeaderText="Email" />
                                                <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                                                    <ControlStyle Height="50px" Width="50px" />
                                                </asp:ImageField>
                                              <%--   <asp:BoundField DataField="Status" HeaderText="Status" />
                                                <asp:TemplateField HeaderText="Active">
                                                       <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" class="fa fa-check" CommandArgument='<%# Eval("USERID") %>' CommandName="Approve"></asp:LinkButton>
                </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Inactive">
                                                     <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" class="fa fa-trash-o" CommandArgument='<%# Eval("USERID") %>' CommandName="Reject"></asp:LinkButton>
                </ItemTemplate>
                                                </asp:TemplateField>--%>
                                            </Columns>
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

