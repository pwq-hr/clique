<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="${pageContext.request.contextPath}/img/user3-128x128.jpg"
                     class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>admin</p>
                <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
            </div>
        </div>

        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">菜单</li>
            <li id="admin-index"><a
                    href="${pageContext.request.contextPath}/index.jsp"><i
                    class="fa fa-dashboard"></i> <span>首页</span></a></li>

            <%--基础数据--%>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-cube"></i>
                    <span>基础数据</span>
                    <span class="pull-right-container">
					<i class="fa fa-angle-left pull-right"></i>
					</span>
                </a>

                <ul class="treeview-menu">
                    <li ><a
                            href="${pageContext.request.contextPath}/department/findAll">
                        <i class="fa fa-circle-o"></i> 部门
                    </a></li>
                    <li ><a
                            href="${pageContext.request.contextPath}/#"><i
                            class="fa fa-circle-o"></i> 角色
                    </a></li>
                    <li ><a
                            href="${pageContext.request.contextPath}/user/findAll"><i
                            class="fa fa-circle-o"></i> 用户
                    </a></li>
                    <li ><a
                            href="${pageContext.request.contextPath}/product/findAll"><i
                            class="fa fa-circle-o"></i> 商品档案
                    </a></li>
                    <li ><a
                            href="${pageContext.request.contextPath}/#"><i
                            class="fa fa-circle-o"></i> 仓库
                    </a></li>
                    <li ><a
                            href="${pageContext.request.contextPath}/#"><i
                            class="fa fa-circle-o"></i> 供应商
                    </a></li>
                    <li ><a
                            href="${pageContext.request.contextPath}/#"><i
                            class="fa fa-circle-o"></i> 客户
                    </a></li>
                </ul>
            </li>

            <%--业务模块--%><%--fa-plus--%>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-edit"></i>
                    <span>业务</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <%--采购管理--%>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-plus"></i>
                            <span>采购管理</span>
                            <span class="pull-right-container">
                        		<i class="fa fa-angle-left pull-right"></i>
                    		</span>
                        </a>
                        <ul class="treeview-menu">
                            <%--采购管理子项：采购预购单管理--%>
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-plus"></i>
                                    <span>采购预定单管理</span>
                                    <span class="pull-right-container">
                        				<i class="fa fa-angle-left pull-right"></i>
                   				 	</span>
                                </a>
                                <ul class="treeview-menu">
                                    <li>
                                        <a href="all-form-general.html">
                                            <i class="fa fa-circle-o"></i> 业务1
                                        </a>
                                    </li>
                                </ul>
                            </li>
                                <%--采购管理子项：采购顶购单管理--%>
                                <li class="treeview">
                                    <a href="#">
                                        <i class="fa fa-plus"></i>
                                        <span>采购定单管理</span>
                                        <span class="pull-right-container">
                        				<i class="fa fa-angle-left pull-right"></i>
                   				 	</span>
                                    </a>
                                    <ul class="treeview-menu">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/pages/business/cgdd-query.jsp">
                                                <i class="fa fa-circle-o"></i> 查询
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/cgdd/getDdhToAddUI">
                                                <i class="fa fa-circle-o"></i> 制单
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/pages/business/cgdd-update.jsp" <%--href="all-form-general.html"--%>>
                                                <i class="fa fa-circle-o"></i> 修订
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/pages/business/cgdd-sp.jsp" <%--href="all-form-general.html"--%>>
                                                <i class="fa fa-circle-o"></i> 审批
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/pages/business/cgdd-dj.jsp" <%--href="all-form-general.html"--%>>
                                                <i class="fa fa-circle-o"></i> 冻结和解冻
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <%--采购管理子项：到货单管理--%>
                                <li class="treeview">
                                    <a href="#">
                                        <i class="fa fa-plus"></i>
                                        <span>采购到货单管理</span>
                                        <span class="pull-right-container">
                        				<i class="fa fa-angle-left pull-right"></i>
                   				 	</span>
                                    </a>
                                    <ul class="treeview-menu">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/pages/business/cgdhd-query.jsp">
                                                <i class="fa fa-circle-o"></i> 查询
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/cgdhd/getDdhToAddUI">
                                                <i class="fa fa-circle-o"></i> 制单
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/pages/business/cgdhd-update.jsp">
                                                <i class="fa fa-circle-o"></i> 修订
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/pages/business/cgdhd-sp.jsp">
                                                <i class="fa fa-circle-o"></i> 审批
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/pages/business/cgdhd-sure.jsp">
                                                <i class="fa fa-circle-o"></i> 确认到货
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            <%--采购管理子项：采购入库管理--%>
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-plus"></i>
                                    <span>采购入库管理</span>
                                    <span class="pull-right-container">
                        				<i class="fa fa-angle-left pull-right"></i>
                   				 	</span>
                                </a>
                                <ul class="treeview-menu">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/pages/business/cgrkd-query.jsp" <%--href="all-form-general.html"--%>>
                                            <i class="fa fa-circle-o"></i> 查询
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/cgrkd/getDdhToAddUI" <%--href="all-form-general.html"--%>>
                                            <i class="fa fa-circle-o"></i> 制单
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/pages/business/cgrkd-update.jsp" <%--href="all-form-general.html"--%>>
                                            <i class="fa fa-circle-o"></i> 修订
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/pages/business/cgrkd-sp.jsp" <%--href="all-form-general.html"--%>>
                                            <i class="fa fa-circle-o"></i> 审批
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/pages/business/cgrkd-sure.jsp" <%--href="all-form-general.html"--%>>
                                            <i class="fa fa-circle-o"></i> 确认出库
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <%--采购管理子项：采购发票管理--%>
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-plus"></i>
                                    <span>采购发票管理</span>
                                    <span class="pull-right-container">
                        				<i class="fa fa-angle-left pull-right"></i>
                   				 	</span>
                                </a>
                                <ul class="treeview-menu">
                                    <li>
                                        <a href="all-form-general.html">
                                            <i class="fa fa-circle-o"></i> 业务1
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <%--库存管理--%>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-plus"></i>
                            <span>库存管理</span>
                            <span class="pull-right-container">
                        		<i class="fa fa-angle-left pull-right"></i>
                    		</span>
                        </a>
                        <ul class="treeview-menu">
                            <%--库存管理子项：期初管理--%>
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-plus"></i>
                                    <span>期初管理</span>
                                    <span class="pull-right-container">
                        				<i class="fa fa-angle-left pull-right"></i>
                   				 	</span>
                                </a>
                                <ul class="treeview-menu">
                                    <li>
                                        <a href="all-form-general.html">
                                            <i class="fa fa-circle-o"></i> 业务1
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <%--库存管理子项：盘点--%>
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-plus"></i>
                                    <span>盘点</span>
                                    <span class="pull-right-container">
                        				<i class="fa fa-angle-left pull-right"></i>
                   				 	</span>
                                </a>
                                <ul class="treeview-menu">
                                    <li>
                                        <a href="all-form-general.html">
                                            <i class="fa fa-circle-o"></i> 业务1
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <%--销售管理--%>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-plus"></i>
                            <span>销售管理</span>
                            <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                        </a>
                        <ul class="treeview-menu">
                            <%--销售管理子项：销售预购单管理--%>
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-plus"></i>
                                    <span>预购单管理</span>
                                    <span class="pull-right-container">
                        				<i class="fa fa-angle-left pull-right"></i>
                   				 	</span>
                                </a>
                                <ul class="treeview-menu">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/xsydd/getDdhToAddUI" <%--href="all-form-general.html"--%>>
                                            <i class="fa fa-circle-o"></i> 预购单添加
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/pages/business/xsydd-query.jsp" <%--href="all-form-general.html"--%>>
                                            <i class="fa fa-circle-o"></i> 预购单查询&修改
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <%--销售管理子项：销售订单管理--%>
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-plus"></i>
                                    <span>订单管理</span>
                                    <span class="pull-right-container">
                        				<i class="fa fa-angle-left pull-right"></i>
                   				 	</span>
                                </a>
                                <ul class="treeview-menu">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/pages/business/xsdd-query.jsp">
                                            <i class="fa fa-circle-o"></i> 查询
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/xsdd/getDdhToAddUI">
                                            <i class="fa fa-circle-o"></i> 制单
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/pages/business/xsdd-update.jsp" <%--href="all-form-general.html"--%>>
                                            <i class="fa fa-circle-o"></i> 修订
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/pages/business/xsdd-sp.jsp">
                                            <i class="fa fa-circle-o"></i> 审批
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <%--销售管理子项：发货单管理--%>
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-plus"></i>
                                    <span>发货单管理</span>
                                    <span class="pull-right-container">
                        				<i class="fa fa-angle-left pull-right"></i>
                   				 	</span>
                                </a>
                                <ul class="treeview-menu">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/pages/business/xsfhd-query.jsp">
                                            <i class="fa fa-circle-o"></i> 查询
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/xsfhd/getDdhToAddUI">
                                            <i class="fa fa-circle-o"></i> 制单
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/pages/business/xsfhd-update.jsp">
                                            <i class="fa fa-circle-o"></i> 修订
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/pages/business/xsfhd-sp.jsp">
                                            <i class="fa fa-circle-o"></i> 审批
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/pages/business/xsfhd-sure.jsp">
                                            <i class="fa fa-circle-o"></i> 确认发货
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <%--销售管理子项：出库单管理--%>
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-plus"></i>
                                    <span>出库单管理</span>
                                    <span class="pull-right-container">
                        				<i class="fa fa-angle-left pull-right"></i>
                   				 	</span>
                                </a>
                                <ul class="treeview-menu">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/pages/business/xsckd-query.jsp">
                                            <i class="fa fa-circle-o"></i> 查询
                                        </a>
                                    </li>
                                    <li>
                                        <a href="all-form-general.html">
                                            <i class="fa fa-circle-o"></i> 制单
                                        </a>
                                    </li>
                                    <li>
                                        <a href="all-form-general.html">
                                            <i class="fa fa-circle-o"></i> 修订
                                        </a>
                                    </li>
                                    <li>
                                        <a href="all-form-general.html">
                                            <i class="fa fa-circle-o"></i> 审批
                                        </a>
                                    </li>
                                    <li>
                                        <a href="all-form-general.html">
                                            <i class="fa fa-circle-o"></i> 确认出库
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <%--销售管理子项：开票管理--%>
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-plus"></i>
                                    <span>开票单管理</span>
                                    <span class="pull-right-container">
                        				<i class="fa fa-angle-left pull-right"></i>
                   				 	</span>
                                </a>
                                <ul class="treeview-menu">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-circle-o"></i> 查询
                                        </a>
                                    </li>
                                    <li>
                                        <a href="all-form-general.html">
                                            <i class="fa fa-circle-o"></i> 制单
                                        </a>
                                    </li>
                                    <li>
                                        <a href="all-form-general.html">
                                            <i class="fa fa-circle-o"></i> 修订
                                        </a>
                                    </li>
                                    <li>
                                        <a href="all-form-general.html">
                                            <i class="fa fa-circle-o"></i> 审批
                                        </a>
                                    </li>
                                    <li>
                                        <a href="all-form-general.html">
                                            <i class="fa fa-circle-o"></i> 确认开票
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <%--应收应付管理--%>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-plus"></i>
                            <span>应收应付管理</span>
                            <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                        </a>
                        <ul class="treeview-menu">
                            <%--应收应付管理子项：采购应付单管理--%>
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-plus"></i>
                                    <span>采购应付单管理</span>
                                    <span class="pull-right-container">
                        				<i class="fa fa-angle-left pull-right"></i>
                   				 	</span>
                                </a>
                                <ul class="treeview-menu">
                                    <li>
                                        <a href="all-form-general.html">
                                            <i class="fa fa-circle-o"></i> 业务1
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <%--应收应付管理子项：销售应收单管理--%>
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-plus"></i>
                                    <span>销售应收单管理</span>
                                    <span class="pull-right-container">
                        				<i class="fa fa-angle-left pull-right"></i>
                   				 	</span>
                                </a>
                                <ul class="treeview-menu">
                                    <li>
                                        <a href="all-form-general.html">
                                            <i class="fa fa-circle-o"></i> 业务1
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <%--预警管理--%>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-plus"></i>
                            <span>预警管理</span>
                            <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                        </a>
                        <ul class="treeview-menu">
                            <li>
                                <a href="all-form-general.html">
                                    <i class="fa fa-circle-o"></i> 采购入库预警
                                </a>
                            </li>
							<li>
								<a href="all-form-general.html">
									<i class="fa fa-circle-o"></i> 销售发货预警
								</a>
							</li>
							<li>
								<a href="all-form-general.html">
									<i class="fa fa-circle-o"></i> 销售出库预警
								</a>
							</li>
                        </ul>
                    </li>
                    <%--<li>
                        <a href="all-form-general.html">
                            <i class="fa fa-circle-o"></i> 业务1
                        </a>
                    </li>--%>
                </ul>
            </li>

            <%--权限模块--%>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-cogs"></i>
                    <span>权限管理</span>
                    <span class="pull-right-container">
					<i class="fa fa-angle-left pull-right"></i>
				</span></a>

                <ul class="treeview-menu">

                    <li ><a
                            href="${pageContext.request.contextPath}/#"> <i
                            class="fa fa-circle-o"></i> 用户管理
                    </a></li>
                    <li ><a
                            href="${pageContext.request.contextPath}/#"> <i
                            class="fa fa-circle-o"></i> 角色权限管理
                    </a></li>
                    <li ><a
                            href="${pageContext.request.contextPath}/#">
                        <i class="fa fa-circle-o"></i> 资源查询
                    </a></li>
                    <li ><a
                            href="${pageContext.request.contextPath}/#"> <i
                            class="fa fa-circle-o"></i> 访问日志
                    </a></li>
                </ul>
            </li>

        </ul>
    </section>
    <!-- /.sidebar -->
</aside>