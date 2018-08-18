--------------------------------------------------BOP系统初始化----------------------------------------------------------------
select a.*,a.rowid from hs_acpt.boparg a;
select a.*,a.rowid from hs_arch.archarg a;
select a.*,a.rowid from hs_user.sysarg a;
select a.*,a.rowid from hs_prod.prodarg a;
select a.menu_site,a.*,a.rowid from  hs_user.hsmenu a where menu_id like '7311%'  and (menu_caption like '%现金宝%')
select a.*,a.rowid from  hs_user.hsmenu a where (http_address like '%secumBusinWithdraw%') and menu_id like '72%'---acct--ofund--
select a.*,a.rowid from  hs_user.hsmenu a where (menu_caption like '%客户风险能力测评%') and menu_id like '73%'---acct--ofund--
select a.*,a.rowid from  hs_user.hsmenu a where (menu_caption like '%证券理财分红设置%') 
select a.*,a.rowid from  hs_user.hsmenu a where (menu_caption like '%私募合同申请%')---acct--ofund--
select a.*,a.rowid from  hs_user.hsmenu a where (menu_caption like '%%')---acct--ofund--
select a.*,a.rowid from  hs_user.hsmenu a where (menu_caption like '%银行理财问卷调查%')---acct--trade--
select a.*,a.rowid from hs_acpt.bopform a where acpt_id='2018070400000224'
select count(*) from hs_user.hsmenu a
--begin--------------------------------------------------菜单表-------------------------------------------------
select a.*, a.rowid from hs_user.hsmenu a where (menu_caption like '%证券理财产品认购%') or (menu_caption like '%产品风险匹配管理%') or (menu_caption like '%证券理财产品转换%') or
(menu_caption like '产品确权') or (menu_caption like '%基金确权%') or (menu_caption like '%理财产品业务撤单%') or (menu_caption like '%证券理财分红设置%')--菜单
select a.*, a.rowid from hs_user.hsmenu a where menu_id='73050101' or (menu_caption like '%回访确认%')
select a.*, a.rowid from hs_user.hsmenu a where (menu_caption like '%私募合同取消%') or (menu_caption like '%产品预约购买%')-- 
select a.*, a.rowid from hs_user.hsmenu a where (menu_caption like '%现金宝账户%') or (menu_caption like '%产品预约购买%')
select a.*,a.rowid from hs_user.FUNCTIONTOMENU a where menu_id = '70000101' or (menu_id like '%731106%') or menu_id = '73110501' or menu_id = '73110217' or menu_id = '73110216'
--------------------------------------------------------------------------------------------------------------------
select a.*,a.rowid from hs_acpt.bopcategory a where acpt_category_no='1018'
select a.*,a.rowid from hs_acpt.bopcategory a where acpt_category_name like '%私募合同申请%' or acpt_category_no='2038'--受理系统业务分类脚本
select a.*,a.rowid from hs_acpt.boptpl a where menu_id='73041202' and  acpt_busin_type='2038' or remark like '%代码信息设置%'--受理系统业务分类脚本：流程
select a.*, a.rowid from hs_user.hsmenu a where  (menu_caption like '%利率设置%')
select a.*, a.rowid from hs_user.hsmenu a where  menu_id='380146' or (menu_id like '%731106%')
select a.*,a.rowid from hs_user.FUNCTIONTOMENU a where menu_id = 1112 and function_id like '6%' or menu_id='73041202'  
------------------------------------------------------新增档案类型表----------------------------------------------------------------------------------
select a.*,a.rowid from hs_acpt.boptpl a where remark in ('证券理财产品认购','证券理财产品申购','理财产品认购','产品预约认购','产品预约申购','理财产品购买','理财产品认购','理财产品申购')--受理系统业务分类脚本：流程
select a.*,a.rowid from hs_arch.scanoptype a where sub_op_type='1317z' or sub_op_type='1421z'--档案类型
select a.*,a.rowid from hs_user.sysarg a---
select a.*,a.rowid from hs_user.sysconfig a where config_no='40045'
select a.client_rights,a.*,a.rowid from hs_asset.client a where client_id='00042'
select a.prod_type,a.*,a.rowid from hs_prod.prodarg a where prodta_no in('D05','D07');
select a.*,a.rowid from hs_user.sysdictionary a where dict_entry='41153'
--end-------------------------------------------------办理端信息-----------------------------------------------------------
select a.*,a.rowid from hs_user.hsmenu a where menu_caption like '%理财产品%'
--UF：800016--【异常受理单】dealAcptError.vm(业务平台代码下)-处理bopform表中acpt_form_status状态为7的记录
select a.client_name,a.id_kind,a.id_no,a.organ_flag,a.branch_no,a.join_exserial_no,a.acpt_form_status,a.*,a.rowid from  hs_acpt.bopform a where acpt_id = '2018070300000012' or  acpt_id = '2018052400004684';--流程表单
select a.*,a.rowid from hs_acpt.bopform a where acpt_busin_type='2014' or acpt_busin_type='2038'
--UF:800022待办任务视图查询-【任务大厅】认领受理单--办理端任务大厅数据源
select a.* from hs_acpt.bopvtodotask a where fund_account in('19057','00042','99999'); 
--UF:800142--待办任务查询【待办任务】-处理认领的受理单：审核 or 驳回 --当前办理端登入操作员可操作的
select a.op_level,a.*,a.rowid from hs_acpt.bopoperatortask a,hs_acpt.bopform b where a.acpt_id=b.acpt_id and a.auditor_no='99999' and a.acpt_id='2018022600001797'--
--受理业务数据表：BOP工作流的【大字段】：只存对应菜单的受理信息参数：Param_data
select a.*,a.rowid from  hs_acpt.bopbusindata a where a.acpt_id= '2018073100000612';
--begin------------------------------------------------开户相关表-----------------------------------------------------
select a.*,a.rowid from hs_asset.client a where client_id='00042';-- or client_id='99999';--客户表
select a.*,a.rowid from hs_asset.fundaccount a where client_id='00042' and fund_account='00042'
select a.*,a.rowid from hs_prod.prodbankmholder a where client_id='00042'
select a.rowid,a.* from hs_asset.bankmholder a where client_id='00042'
select a.organ_flag,a.paper_type,a.corp_risk_level,a.rowid,a.* from hs_asset.eligrisklevelquota a where prodta_no='B88' --eligrisklevelquota
select a.rowid,a.* from hs_asset.bankmholder a where client_id='00042' and open_date=open_date 
select a.prod_code,a.*,a.rowid from hs_prod.secumreal a

select a.*,a.rowid from hs_asset.eligpaper a where paper_type in ('7') and organ_flag='0' and delete_flag='0' and prodta_no='B88'
select a.question_no,a.delete_flag,a.*,a.rowid from hs_asset.eligquestion a where question_no in ('0','664','671','678')--适当性试题表



select a.risk_level,a.*,a.rowid from hs_asset.fundaccount a where client_id='00042';--1100=0--账户表
select a.* from hs_asset.client a where client_id='00042'--1100=0--账户表
select a.corp_risk_level,a.*,a.rowid from hs_asset.client a where client_id='00042'--1100=1--客户表
select a.*,a.rowid from hs_prod.prodbankmholderup a

select a.*,a.rowid from hs_prod.prodbankmholderup a where client_id='00042'
select a.bankm_account,a.trans_account,a.fund_account,a.tarisk_level,a.*,a.rowid from hs_prod.prodbankmholder a where client_id='00042' or client_id='99999'--银行理财账户信息表
select a.client_rights,a.*,a.rowid from hs_asset.fundaccount a where fund_account='00042' or client_id='00042' or client_id='99999';--资产账户表
select a.prodta_no,a.fund_account,a.*,a.rowid from hs_asset.bankmholder a order by a.prodta_no,a.fund_account--  where fund_account='00042' or client_id='00042' or client_id='99999';
select a.*,a.rowid from hs_prod.bankmentrust a
select a.*,a.rowid from hs_asset.secumholder a where fund_account='00042' and prodta_no='42' --or client_id='99999';--证券理财账户
--end-----------------------------------------------------------------------------------------------------------------
select a.*,a.rowid from hs_prod.secumreal a where fund_account='99999'or fund_account='00042';--可用份额
select a.*,a.rowid from hs_fund.fundreal a where fund_account='99999' or fund_account='00042';--可用金额
select a.co_serial_no,a.*,a.rowid from hs_prod.secumentrust a where allot_no='606000000201804200000008'
----------------------------------------------转让交易------------------------------------------------------------------------------------------
select a.prod_prop,a.*,a.rowid from hs_prod.prodentrust a--交易委托表
select a.prod_invest_term,a.*,a.rowid from hs_prod.prodcode a 
select a.*,a.rowid from hs_prod.prodentrust a--交易委托表
select a.*,a.rowid from hs_asset.eligpaperquestrel a where paper_type='7' and prodta_no='D01' and organ_flag='0' and question_no=95;
select a.*,a.rowid from hs_asset.eligpaper where question_no=948 

-------------------------------------------------------------------------适当性-----------------------------------------------------------------------
select a.pf_risk_level,a.*,a.rowid from hs_asset.clientprefer a where client_id='00042'
select a.prod_name,a.prod_status,a.prodrisk_level,a.*,a.rowid from hs_prod.prodcode a where prod_code='420001'
select a.prod_name,a.prod_status,a.prodrisk_level,a.*,a.rowid from hs_prod.prodcode a where prod_code='990001'

select a.*,a.rowid from hs_asset.ofriskmatch 
select a.*,a.rowid from hs_user.SYSDICTIONARY where dict_entry=''
select a.prodrisk_level,a.ipo_begin_date,a.ipo_end_date,a.presell_end_date,a.presell_begin_date,a.presell_begin_time,a.presell_end_time,a.*,a.rowid from hs_prod.prodcode a where prod_code='990001'
select a.*,a.rowid from hs_user.sysconfig a where config_no='1249'
select a.pf_risk_level,a.birthday,a.en_invest_kind,a.client_income_type,a.en_maxdeficit_rate,a.asset_balance,a.corp_risk_level,a.prof_flag,a.en_invest_term,a.*,a.rowid from hs_asset.clientprefer a where client_id='00042' --or  client_id='123324'  --客户适当性偏好表：en_invest_kind等 1630003 校验后输出check_str 
---------prof_flag:专业投资者标志0-非专业，1-专业---------
select a.*,a.rowid from hs_user.sysconfig a where config_no in('1214','1249');
select a.prodrisk_level,a.low_corp_risk_level,a.invest_type,a.*,a.rowid from hs_asset.eligproduct a where (prodta_no='99' and prod_code in ('990001')) or (prodta_no='17' and prod_code ='ZJ0001') --and prod_code ='103'--当性表：elig_ctrlstr：BOP适当性控制串
select a.prodrisk_level,a.prod_invest_term,a.*,a.rowid from hs_prod.prodcode a where (prodta_no='99' and prod_code in ('990001','106')) or (prodta_no='17' and prod_code ='ZJ0001')--当性表：prod_elig_ctrlstr：
select a.*,a.rowid from hs_prod.prodriskmatch a--风险等级匹配表-en_prodrisk_level：允许风险等级 是否  包含prodrisk_level风险等级
select a.*,a.rowid from hs_asset.eligrisklevelquota a where prodta_no='B88'--适当性风险等级分值对照表
select a.corp_risk_level,a.*,a.rowid from hs_asset.client a where client_id='212212' or client_id='123324';
--客户表--corp_risk_level客户风险等级为默认型0时，且40041配置项未0：客户风险等级为，默认型不允许下委托：需select a.en_prodrisk_level,a.*,a.rowid from hs_asset.eligriskmatch a --where prodta_no='LP';--适当性风险等级匹配表：
进行最新的适当性评测
select a.corp_end_date,a.*,a.rowid from hs_asset.clientprefer a where client_id='123324'
--corp_end_date客户风险到期日是否比当天交易时间小，且40040=0多金融客户风险等级过期不允许继续委托：客户风险等级超期 注：若是启用私募校验新规，则取risk_end_date风险测评到期日
-------------------------------------问卷测评相关---------------------------------------------------------------------------------------
select a.paper_answer,a.*,a.rowid from hs_asset.eligtestjour a where  prodta_no = '' and paper_type='7' in ('D01','D02','B88') order by a.prodta_no-- init_date='20180123'--适当性测评记录表
select a.prodta_no,a.*,a.rowid from hs_asset.eligrisklevelquota a where prodta_no in ('42','90','D01','D02','D03','B88')--风险等级分值对照表
select a.enable_flag,a.delete_flag,a.prodta_no,a.*,a.rowid from hs_asset.eligpaper a where paper_type in ('w','x','7') and organ_flag='0' and delete_flag='0' and prodta_no in ('77','B88','90','20','42') --调查试卷表
select a.*,a.rowid from hs_asset.eligpaper a where enable_flag='0'   prodta_no='42'

select a.question_no,a.delete_flag,a.*,a.rowid from hs_asset.eligquestion a where question_no in ('663','664','671','678')--适当性试题表
select a.question_no,a.prodta_no,a.delete_flag,a.*,a.rowid from hs_asset.eligpaperquestrel a where organ_flag='0' and prodta_no in ('76','77','B88') and question_no in ('6','7','8','9')--答案表
select a.*,a.rowid from hs_his.his_eligtestjour a where prodta_no='B88'--适当性评测历史表
------------------------------------------预约业务相关表---------------------------------------------------------------------
select a.*,a.rowid from hs_prod.prodpreentrust a where prodta_no='D01' and init_date='20180205'--预约委托表

-----------------------------------------------参数表-------------------------------------------------------------------------------
select a.prod_status,a.prodta_no,a.prod_code,a.prod_status,a.*,a.rowid from hs_prod.PRODCODE a where prodta_no='42' order by a.prod_type,a.prodta_no,a.prod_code;  --and prod_code in ('999772','999773','999774','999775','999770','999763','999798');--代码表2、3认购
select a.prod_status,a.*,a.rowid from hs_prod.prodallowbusin a where prodta_no='42' order by a.prodta_no,a.prod_code,a.prod_status;--允许业务表

--------------------------------------------------适当性-----------------------------------------------------------------------------
select a.elig_ctrlstr,a.*,a.rowid from hs_asset.eligproduct a where prodta_no in ('D01','42','90','C87','99');
select a.prodcode_ctrlstr,a.*,a.rowid from hs_prod.prodcode a where prodta_no='LP'
-------------------------------------------------------------------------------------------------------------------------------------
select a.*,a.rowid from hs_prod.prodagencyno a
select a.*,a.rowid from hs_user.CVSARG a

select a.rowid,a.*,daily_permit_times, eligpaper_version        
        from hs_asset.eligpaper a
       where paper_type in ('w','x')
         and organ_flag = '0'
				 and prodta_no = 'D03'
         and delete_flag = '0';
---------题目
select a.prodta_no,a.*,b.*,a.rowid,b.rowid,b.question_kind,b.question_type,b.question_content, b.tradeindex_type
                          from hs_asset.eligpaperquestrel a,hs_asset.eligquestion b
                          where (a.paper_type = '7' or a.paper_type = 'w')
                            and (a.organ_flag = '0')  
                            and a.question_no = b.question_no
                            and a.delete_flag = '0'
                            and b.delete_flag = '0'
                            order by a.order_no,a.paper_type,a.organ_flag asc
														
select a.*,a.rowid from hs_asset.eligpaper a where prodta_no='B88'
select a.*,a.rowid from hs_asset.eligpaperquestrel a where prodta_no='B88'
														
--D03-----------查询试卷表
select a.prodta_no,a.*,a.rowid,daily_permit_times, eligpaper_version
        from hs_asset.eligpaper a
       where  organ_flag = '0'   
         and delete_flag = '0'
				  and ((prodta_no= 'B88') or (prodta_no= '42'))
					and paper_type in ('w','x')                          
													
----D03						--------分值对照表							
select a.rowid,a.*,corp_risk_level,corp_risk_level as risk_level,corp_risk_level as pf_risk_level,risk_valid,advance_month,invest_advice	          
	  	       from  hs_asset.eligrisklevelquota a
			   where (100 > min_value) 
			     and (100 <= max_value)
					 and (paper_type in ('x'))
			     and ('w'!='7' or prodta_no = '42') 
			     and ('w'!='o' or prodta_no = '42') 
			     and (organ_flag = '0')



select a.*,a.rowid from hs_asset.bankmholder a where fund_account='99999' or fund_account='00042';--银行理财账户
select a.*,a.rowid from hs_asset.trustholder a where fund_account='99999' or fund_account='00042';--信托理财账户
select a.secumclient_rights,a.open_date,a.prodta_no,a.*,a.rowid from hs_asset.secumholder a where fund_account='00042'--证券理财账户
select a.invest_type,a.income_type,a.*,a.rowid from hs_asset.eligproduct a where prodta_no='D01' and prod_code='999999'
-----------------------------------------------------------------------------------------------------------------------------
select a.*,a.rowid from hs_prod.prodarg a where prod_type='4'
select a.prod_invest_term, a.invest_type,a.income_type,a.*,a.rowid from hs_prod.prodcode a where prodta_no='D01'-- prod_code='870806' or  prod_code='830003';-- 

select * from prodcode where prod_type = '5' for update;

select a.* from hs_asset.secumholder  a where client_id = '003005444' for update;

select a.*, a.rowid from hs_asset.bankmholder a where prodta_no='D09' 

select a.*, a.rowid from hs_asset.trustholder a 

select a.*,rowid from hs_asset.secumholder a  where fund_account = '3004146';

select * from hs_prod.prodexchtime a where a.prodta_no = '99' for update ;
--2017121200000709

------------------------------------系统增加操作员----------------------------------------------------------
select a.*, a.rowid from hs_user.userright a where user_id='10565' or user_id='19057' or user_id='99999'--用户权限
select a.*,a.rowid from hs_user.operators a where OPERATOR_no='10565' or OPERATOR_no='19057' or OPERATOR_no='99999' --操作员
select a.*,a.rowid from hs_user.users a where user_id='10565' or user_id='14750' or user_id='99999'--用户:密码
------------------------------------------------------------------------------------------------------------
select a.join_exserial_no,a.scantask_id,a.*,a.rowid from  hs_acpt.bopform a where client_id = '00042' and acpt_id = '2018042600003277' ;--流程表单
select a.*,a.rowid from hs_arch.scansubtask a where scantask_id='2017121200000709'
--------------------------------------------------------------------------------------------------------------------
select a.scantask_id,a.*,a.rowid from  hs_acpt.bopform a where client_id = '00042' and acpt_id = '2018042600003277' ;--流程表单
select a.*,a.rowid from hs_arch.scansubtask a where scantask_id='2017121200000710'
-------------------------------------产品户相关------------------------------------------------------
select a.organ_flag,a.*,a.rowid from hs_asset.client a where client_id='00042'
select a.client_rights,a.*,a.rowid from hs_asset.fundaccount a where fund_account='00042'
select a.*,a.rowid from hs_prod.prodcontrol a prodta_no='' and prod_code=''
select a.*,a.rowid from hs_prod.prodcashacct a where fund_account='1110422'
select a.trans_account,a.prodholder_status,a.*,a.rowid from hs_prod.prodsecumholder a where fund_account='00042' and prodta_no='99'
select a.co_serial_no,a.entrust_no,a.business_flag,a.invpay_status,a.entrust_status,a.*,a.rowid from hs_prod.secumentrust a where fund_account='00042' and prodta_no='99' and prod_code='990001' and init_date='20180423'
----------------------------------------基金---------------------------------------------------------
select a.*,a.rowid from hs_asset.ofstockholder a where fund_company='01' and branch_no='223'--基金账户表
select a.*,a.rowid from hs_user.ofstkconfig a where fund_company='01' and fund_code='202001'--基金代码允许业务表
select a.codesimple_name,a.en_other_flag,a.*,a.rowid from hs_user.ofstkcode a where fund_company='01' and fund_code='202024'
select a.branch_no,a.*,a.rowid from hs_ofund.ofstockreal a where fund_company='01' and fund_account='00042'
select a.*,a.rowid from hs_user.ofagencyno a where fund_company='01'--销售商号
select a.holder_status,a.*,a.rowid from hs_asset.ofstockholder a where fund_account='00042'--基金账户
select a.* from hs_user.ofstkcode a 
-----------------------------------------------------------------------------------------------------
select * from hs_arch.scansubtask where scantask_id='2017121200000709';



select a.*,a.rowid from  hs_acpt.bopbusindata a where a.acpt_id= '2017101000000010';

select a.*, a.rowid from hs_user.stkcode;

select a.en_change_code,a.charge_type,a.prod_status,a.*, a.rowid from hs_prod.prodcode a where a.prodta_no = '99' and prod_code='990001';

select a.*, a.rowid from hs_prod.prodcode a where a.prod_type = '5';

select a.*, a.rowid from  hs_asset.eligproduct a where prodta_no='D01';
select a.*, a.rowid from  hs_asset.eligriskmatch a where prodta_no='!';

select * from hs_asset.ofecontract where fund_account = '3004146' for update

select a.* from hs_prod.prodbankmholder  a where fund_account = '004307021' for update;

select * from hs_user.sysarg for update
select a.*,a.rowid from hs_user.sysconfig a where config_no='1249'

select * from hs_user.hsmenu  where menu_id like '73110%' for update

select a.* from hs_prod.prodsecumholder  a where client_id='004307021' for update

select a.* from hs_prod.prodcasharg a for update

select a.* from hs_prod.prodarg a where prodta_no='99' for update 

select a.* from hs_prod.prodexchdate a where prodta_no='99' for update

select a.* from hs_prod.prodfundaccount a for update

select a.* from hs_asset.eligproduct a where prodta_no='98' for update

select a.* from hs_prod.prodseats a for update

select a.* from hs_asset.fundaccount a where fund_account='18' for update

select a.* from hs_asset.client a where client_id='003005444' for update

select a.* from hs_prod.secumreal a where  fund_account='004307021' for update

select a.* from hs_prod.prodtransferboard a for update

select a.* from hs_user.ofstkcode a for update //基金代码信息

select a.* from hs_prod.prodsecumholder a where fund_account='3004146'  for update

select a.* from hs_acpt.boptpl a where acpt_busin_type='1012' for update //武汉78

select a.* from hs_prod.secumentrust a where fund_account='004307021' and business_flag='44053' for update
---------------------------产品确权---------------------------------------
select a.*,a.rowid from Prodprice a where prod_code='990001'-- for update
-----------------------------份额冻结---------------------------------------------
select a.*,a.rowid from hs_asset.secumholder a where fund_account='00042' and prodta_no='99'
------------------------------红冲蓝补------------------------ -----------------------------
select a.*,a.rowid from hs_prod.prodsecumholder a where fund_account='00042' and prodta_no='99'
select a.secum_account,a.trans_account,a.*,a.rowid from hs_asset.secumholder a where fund_account='00042' and prodta_no='99' --or client_id='99999';--证券理财账户
---------------------------------转托管---------------------------------------------------
select a.trans_account,a.secum_account,a.*,a.rowid from hs_prod.prodsecumholder a where fund_account='00042' and prodta_no='99'
---------------------------------电子合同签署---------------------------------------------------------
select a.prod_type,a.prod_code,a.*,a.rowid from hs_asset.ofecontractjour a where prodta_no='01' and prod_code='202024';
select a.position_str,a.prod_type,a.prod_code,a.*,a.rowid from hs_asset.ofecontract a  where prodta_no='01' and prod_code='202024';
select a.client_rights,a.*,a.rowid from hs_asset.fundaccount a where fund_account='00042';--资产账户
select a.ta_ctrlstr,a.*,a.rowid from hs_prod.prodarg a where prodta_no='99';--产品参数
-------------------------------------资管份额转让------------------------------------------------------------------
select a.prod_type_ass,a.*,a.rowid from hs_prod.prodcode a where prod_code='999999' and prodta_no='99'
select a.operator_no,a.entrust_price,a.entrust_amount,a.entrust_no,a.position_str,a.branch_no,a.fund_account,a.client_id,a.prod_prop,a.entrust_status,a.prod_code,a.prodta_no,a.*,a.rowid from hs_prod.prodtransferboard a  where init_date='20180521' and fund_account='00042'-- and fund_account='00042'  --产品份额转让信息where 
select a.*,a.rowid from hs_prod.prodcasharg a where prodta_no='99'--现金产品参数
select a.*,a.rowid from hs_user.FUNCTIONTOMENU a where menu_id='73110404'--菜单功能对照
select a.*,a.rowid from hs_user.hsfunction a where function_id='632218'--功能表
select a.trans_account,a.contact_id_no,a.position_str,a.bank_no,a.pay_kind,a.unit_flag,a.*,a.rowid from hs_prod.prodsecumholder a where prodta_no='99' and fund_account='00042'--证券理财账户信息
select a.*,a.rowid from hs_prod.prodarg a where prodta_no='99'--产品参数
select a.en_pay_kind,a.en_entrust_way,a.prodcode_ctrlstr,a.*,a.rowid from hs_prod.prodcode a where prod_code='420003' --or prod_code='888888'--产品代码
select a.sell_unit,a.buy_unit,a.*,a.rowid from hs_user.stkcode a where stock_code='600570'--证券代码表
select a.codesimple_name,a.en_other_flag,a.*,a.rowid from hs_user.ofstkcode a where fund_company='01' and fund_code='202024'
select a.branch_no,a.*,a.rowid from hs_prod.secumreal a where prodta_no='98'--可用份额
select a.branch_no,a.*,a.rowid from bankmreal a where fund_account='00042' and prodta_no='B88'--可用份额
select a.*,a.rowid from hs_fund.fundreal a where fund_account='11100018' ----可用资金
select a.en_prod_prop,a.*,a.rowid from hs_prod.prodexchtime a where prodta_no='99' and prodtime_kind='0'
select a.join_exserial_no,a.scantask_id,a.*,a.rowid from  hs_acpt.bopform a where client_id = '00042' and acpt_id = '2018050900003762'
select a.*,a.rowid from hs_prod.secumentrust a where fund_account='00042' and entrust_no='31'
select a.econtract_type,a.remark,a.trans_account,a.prod_account,a.prodta_no,a.prod_code,a.econtract_id,a.prod_type,a.*,a.rowid from hs_asset.ofecontract a where fund_account='00042'--电子合同
select a.*,a.rowid from  hs_acpt.bopbusindata a where a.acpt_id= '2018050300003514';--
select a.finance_type,a.*,a.rowid from hs_asset.eligproduct a where prodta_no='99' or prodta_no='B88'
select a.*,a.rowid from hs_asset.eligriskmatch a
----------------------------------------证券理财回访确认------------------------------------------------------------------
--回访委托查询：根据
select a.curr_date,a.curr_time,a.prod_code,a.prod_revisit_status,a.prod_revisit_status,a.branch_no,a.entrust_no,a.*,a.rowid from hs_prod.secumentrust a where entrust_no='6' entrust_status = '0' and invpay_status = '2' and prod_revisit_status in ('1','4') --and init_date='20180515'
select a.entrust_status,a.prod_revisit_status,a.invpay_status, a.prod_code,a.position_str,a.allot_no,a.*,a.rowid from hs_prod.secumentrust a where init_date='20180522' and  entrust_status = '0' and invpay_status = '2' and prod_revisit_status in ('1','4')
--回访成功后：插入回访流水，更新回访状态、申报日期和委托状态
select a.*,a.rowid from hs_prod.prodrevisitjour a
--证券理财账户表
select a.unit_flag,a.pay_kind,a.trans_account,a.secum_account,a.pay_account,a.*,a.rowid from prodsecumholder a where fund_account='1110001818' and prodta_no='17' --and trans_account='605000000051'
select a.cooling_period,a.*,a.rowid from hs_prod.prodcode a where prod_code='420002'
--数据字典
select a.report_date,a.prod_revisit_status,a.entrust_no,a.entrust_status,a.*,a.rowid from hs_prod.secumentrust a where init_date='20180515' and entrust_no='2'
---------------------------------证券理财回冲蓝补---------------------------------------------------------------------------------------
--蓝补+，无此记录的时候，插入一条记录
select a.prod_cost_price,a.current_amount,a.enable_amount,a.frozen_amount,a.*,a.rowid from hs_prod.secumreal a where prodta_no='17' and prod_code='000758' and fund_account='11100018'--份额变动表（可用份额）
--份额蓝补，当前份额+
select a.prod_cost_price,a.current_amount,a.*,a.rowid from hs_asset.secumshare a where prodta_no='FLJ' and prod_code='56' and fund_account='1110422'--份额表
------------------------------------现金宝撤单-----------------------------------------------------------------------------------------------
select a.business_flag,a.entrust_status,a.fund_account,a.prodta_no,a.prod_code,a.init_date,a.*,a.rowid from hs_prod.secumentrust a where business_flag='44022' and prodta_no='17'
------------------------------------------现金宝触发------------------------------------------------------------------------------------------
select a.*,a.rowid from hs_prod.prodexchtime a where prodtime_kind = '6' order by end_time desc
update hs_prod.prodexchtime a set end_time='70000' where prodtime_kind = '6'
select a.*,a.rowid from hs_asset.client a where client_id='212212'
select a.fundacct_status,a.*,a.rowid from hs_asset.fundaccount a where fund_account='1110001818'
select a.*,a.rowid from hs_prod.prodcashacct a where fund_account='1110001818'
----------------------------------------------资金快取------------------------------------------------------------------------------------
select a.entrust_status,a.entrust_amount,a.remark,a.trans_account,a.business_flag,a.*,a.rowid from hs_prod.secumentrust a where fund_account='11100018' 
------------------------------------------------tty-----------------------------------------------------------------
select a.*,a.rowid from hs_prod.secumentrust a where init_date='20180517' and prod_code='000314'
----------------------------------------------------------------------------------------------------------------------
select a.stock_account,a.* from hs_arch.scansubtask a --where a.sub_op_type='1414z'

select * from bopepaperarg a where acpt_id=2018010900000044

select a.* from hs_acpt.boptpl a for update

select a.* from hs_arch.scansubtask a where init_date='20180130'--  sub_op_type='1402z' and fund_account='004307021' for update

select a.*,a.rowid from hs_asset.eligtestjour a where paper_type = '7' and prodta_no='B88' and client_id='004307021' for update
delete hs_asset.eligtestjour a where paper_type = '7' and prodta_no='B88'
select a.* from hs_his.his_eligtestjour a where paper_type = '7' for update

select a.* from hs_prod.prodallowbusin a where prodta_no='1'


select a.*,a.rowid from hs_prod.prodpreentrust a
select a.*,a.rowid from hs_prod.secumentrust a
select a.prod_status,a.*,a.rowid from hs_prod.prodcode a where prod_code='A66666'
update hs_prod.prodcode a set prod_code='A66666' where prod_code='A66666'

hs_user.functiontomenu
hs_user.hsmenu

select a.rowid,a.prodta_no,a.*,b.question_kind,b.question_type,b.question_content, (a.order_no||a.paper_type||a.organ_flag) as position_str, b.tradeindex_type
                          from hs_asset.eligpaperquestrel a,hs_asset.eligquestion b
                          where (a.paper_type in ('w','x','7'))
                            and (a.organ_flag = '0') and a.question_no = b.question_no
                            and a.delete_flag = '0'
                            and b.delete_flag = '0'
                            order by a.order_no,a.paper_type,a.organ_flag asc
select a.enable_flag,a.delete_flag,a.prodta_no,a.*,a.rowid from hs_asset.eligpaper a where paper_type in ('w','x','7') and organ_flag='0' and delete_flag='0' and prodta_no in ('76','B88','90','20','42') --调查试卷表
select a.*,a.rowid from hs_user.functiontomenu a where menu_id = 73110216 or menu_id = 73110601 or menu_id = 73110602
select a.role_rights,a.*,a.rowid from hs_user.hsmenu a where menu_id = 73110216 or menu_id = 73110601 or menu_id = 73110602
----------------------------------------------------------------
select a.*,a.rowid from hs_prod.prodcode a where prod_code='990001' --prodta_no='999999'
update hs_prod.prodcode set prod_invest_term = '2'
delete hs_prod.prodcode where prod_code<>'999185'
select a.*,a.rowid from hs_prod.PRODALLOWBUSIN a 
delete hs_prod.PRODALLOWBUSIN where prod_code<>'CQ158A'
---------------------------------------------------------------产品参数------------------------------
select a.*,a.rowid from hs_prod.prodbfare a where prodta_no='LP'--比例费用设置
select a.prod_back_n,a.*,a.rowid from hs_prod.prodcode a where prod_code='121212' or prod_code='121213'


select a.fund_name,a.*,a.rowid from hs_user.OfStkCode a where fund_code='519015'
