<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="terminalStatusList" title="终端信息" actionUrl="terminalInfoController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="终端名" field="name" align="center" width="100" query="true" ></t:dgCol>
   <t:dgCol title="终端描述" field="descript" align="center" width="180" ></t:dgCol>
   <t:dgCol title="mac地址" field="macaddress" align="center" width="100" hidden="false"></t:dgCol>
   <t:dgCol title="IP地址" field="ipaddress" align="center" width="100" ></t:dgCol>
   <t:dgCol title="地理位置" field="groupname" align="center" width="120" ></t:dgCol>
   <t:dgCol title="当前状态" field="status" align="center" width="80" replace="未激活_0,离线_1,在线_2" ></t:dgCol>
   <t:dgCol title="正在观看节目" field="subject" align="center" width="120"></t:dgCol>
   <t:dgToolBar title="导出Excel" icon="icon-search" onclick="courseListExportXls();"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script type="text/javascript" charset="utf-8">
	/*
	 *	excel导出
	 */
	function courseListExportXls() {
		JeecgExcelExport("terminalInfoController.do?exportXls","terminalStatusList");
	}
</script>