<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="terminalInfoList" title="终端信息" actionUrl="terminalInfoController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="终端名" field="name" align="center" width="80" query="true"></t:dgCol>
   <t:dgCol title="终端描述" field="descript" align="center" width="120" ></t:dgCol>
   <t:dgCol title="mac地址" field="macaddress" align="center" width="80" ></t:dgCol>
   <t:dgCol title="IP地址" field="ipaddress" align="center" width="80" ></t:dgCol>
   <t:dgCol title="地理位置" field="groupname" align="center" width="80"></t:dgCol>
   <t:dgCol title="当前状态" field="status" align="center" width="60" replace="未激活_0,离线_1,在线_2" hidden="false"></t:dgCol>
   <t:dgCol title="会议id" field="nowvideo" hidden="false" ></t:dgCol>
   <t:dgCol title="正在观看节目" field="subject" align="center" width="100" hidden="false"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="30" align="center"></t:dgCol>
   <t:dgDelOpt title="删除" url="terminalInfoController.do?del&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="terminalInfoController.do?addorupdate" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="terminalInfoController.do?addorupdate" funname="update"></t:dgToolBar>
   <%-- <t:dgToolBar title="查看" icon="icon-search" url="terminalInfoController.do?addorupdate" funname="detail"></t:dgToolBar> --%>
  </t:datagrid>
  </div>
 </div>