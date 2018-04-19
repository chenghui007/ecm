<#import "/component/register.ftl" as  register/>
<#import "/amountinfo/amountinfo.ftl" as  amountinfo/>
<#import "/amountinfo/addAmountInfo.ftl" as  addAmountInfo/>
<#import "/amountinfo/updateAmountInfo.ftl" as  updateAmountInfo/>
<#import "/amountinfo/detailAmountInfo.ftl" as  detailAmountInfo/>
<#include "/management/resource.ftl"/>

<@amountinfo.amountinfoHtml/>
<@addAmountInfo.addAmountInfoHtml/>
<@detailAmountInfo.detailAmountInfoHtml/>
<@updateAmountInfo.updateAmountInfoHtml/>

<#macro amountinfoHtml>
<div style="" class="">
    <section class="content-header">
        <h1>
                用户账户表<small></small>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="box">
            <div class="box-header">
                <form id=queryAmountInfoForm class="form-horizontal form-inline">
                    <div class="row dis-top">
                        <div class="col-md-3">
                            <label class="queryTitle">id：</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" placeholder="" id="id" name="id">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label class="queryTitle">用户名称：</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" placeholder="" id="userName" name="userName">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label class="queryTitle">openid：</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" placeholder="" id="openid" name="openid">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label class="queryTitle">账户金额：</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" placeholder="" id="accountMoney" name="accountMoney">
                            </div>
                        </div>
                    </div>
                    <div class="row dis-top">
                        <div class="col-md-3">
                            <label class="queryTitle">是否启用：</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" placeholder="" id="isStart" name="isStart">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label class="queryTitle">账户ID：</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" placeholder="" id="accountId" name="accountId">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label class="queryTitle">账户创建时间：</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" placeholder="" id="accountTime" name="accountTime">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label class="queryTitle">创建时间：</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" placeholder="" id="createTime" name="createTime">
                            </div>
                        </div>
                    </div>
                    <div class="row dis-top">
                        <div class="col-md-3">
                            <label class="queryTitle">创建人：</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" placeholder="" id="createUser" name="createUser">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label class="queryTitle">是否冻结：</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" placeholder="" id="isFreeze" name="isFreeze">
                            </div>
                        </div>
                        <div class="col-md-3">
                        </div>
                        <div class="col-md-3">
                            <div class="searchDiv">
                                <button type="button" class="btn btn-info searchBtn" onclick="searchAmountInfo('')">搜索</button>
                                <button type="button" class="btn btn-info searchBtn" onclick="searchAmountInfo('','download','download.xls','id:id,userName:用户名称,openid:openid,accountMoney:账户金额,isStart:是否启用,accountId:账户ID,accountTime:账户创建时间,createTime:创建时间,createUser:创建人,isFreeze:是否冻结')">下载</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <div class="box-body">
                <div style="width:50px;margin:10px 0px;"><button class="btn btn-block btn-success" data-toggle="modal" data-target="#addAmountInfo">添加</button></div>
                <table id="amountInfoTbl" class="table table-bordered">
                    <tr id="amountInfoTR_FIRST">
                        <th></th>
                        <th>序号</th>
                        <th>id</th>
                        <th>用户名称</th>
                        <th>openid</th>
                        <th>账户金额</th>
                        <th>是否启用</th>
                        <th>账户ID</th>
                        <th>账户创建时间</th>
                        <th>创建时间</th>
                        <th>创建人</th>
                        <th>是否冻结</th>
                        <th>操作</th>
                    </tr>
                </table>
                <div id="page1"></div>
            </div>
            <!-- /.box-body -->

            <!--分页 start-->
            <div id="queryAmountInfo_fy" style="width: 100%;" class="gmPagination gmPagination-mini">
                <div style="float:left;margin: 10px;">
                    <select id="queryAmountInfopageSize">
                        <option selected="selected">10</option>
                        <option>20</option>
                        <option>50</option>
                    </select>
                </div>
                <div style="margin: 10px; float: right" class="pager clearfix"	id="commonPager">
                    <a href="javascript:void(0);" class="prev disable">&nbsp;&lt;<s	class="icon-prev"></s><i></i></a> 
                    <span class="cur">1</span> <a href="javascript:void(0);" class="next disable">&gt;<s class="icon-next"></s><i></i></a> 
                    <label class="txt-wrap"	for="pagenum">到<input type="text" value="1" bnum="0" class="txt" id="pNum">页</label> 
                    <a class="btn" zdx="nBtn" href="javascript:void(0)">确定</a>
                </div>
            </div>
            <!--分页 end-->

        </div>
        <!-- /.box -->
    </section>
</div>
<div>
    <input type="hidden" id="queryAmountInfocurrentPage" />
    <input type="hidden" id="queryAmountInfototalPage" />
</div>
<script type="text/javascript" src="${props('resourceUrl')}/js/amountinfo/amountinfo.js"></script>
</#macro>
<style>
    #amountInfoTbl tr .btn{display:left;margin-right:5px;padding:2.5px 6px;}
    .title{padding-right:0px;text-align:right;margin:0px;height:34px;line-height:34px;}
    .redFont{color:red;display:inline-block;width:15px;text-align:center;}
    .modal-dialog{margin:165px auto;}
</style>

