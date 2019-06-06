<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddUrls.aspx.cs" Inherits="Admin_AddUrls" %>

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
									<h4>Upload url</h4>
								</div>
							
							</div>
						</div>
					</div>

        <div class="panel panel-widget forms-panel">
						<div class="forms">
							<div class="form-three widget-shadow">
								<div class=" panel-body-inputin">
									<div class="form-horizontal">

                                        <div class="form-group">
											<label class="col-md-2 control-label">Url Name</label>
											<div class="col-md-8">
												<div class="input-group">							
													<span class="input-group-addon">
														<i class="fa fa-user"></i>
													</span>
                                                    <asp:TextBox ID="txt_urlname" class="form-control1" placeholder="fhjui" runat="server"></asp:TextBox>
												</div>
											</div>
										</div>
                                        <div class="form-group">
											<label class="col-md-2 control-label"> Url</label>
											<div class="col-md-8">
												<div class="input-group">							
													<span class="input-group-addon">
														<i class="fa fa-user"></i>
													</span>
                                                    <asp:TextBox ID="txt_url" class="form-control1" placeholder="www.example.com" runat="server"></asp:TextBox>
												</div>
											</div>
										</div>


                                        <div class="form-group">
											<div class="col-md-8">
												<div class="input-group">							
													
                                                    <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Add" OnClick="Button1_Click" />
												</div>
											</div>
										</div>
                                          </div>
        </div>
     </div>
        </div>
             </div>
        </div>
         </div>
</asp:Content>

