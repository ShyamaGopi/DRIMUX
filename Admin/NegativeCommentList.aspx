﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="NegativeCommentList.aspx.cs" Inherits="Admin_NegativeCommentList" %>

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
									<h4>Negative Dataset</h4>
								</div>
							
							</div>
						</div>
					</div>

        <div class="panel panel-widget forms-panel">
						<div class="forms">
							<div class="form-three widget-shadow">
								<div class=" panel-body-inputin">
									<div class="form-horizontal">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ForeColor="#823566"  Height="300px" Width="1103px">
                                                <HeaderStyle CssClass="centerHeaderText"></HeaderStyle>

                                            <RowStyle HorizontalAlign="Center" ForeColor="#555" />
 <Columns>
                                           
                                                <asp:BoundField DataField="NegativeWords" HeaderText="Negative Words" />
                                                <asp:BoundField DataField="Weight" HeaderText="Weight"  />
                                             
                                                
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

