--------------------------------------------------BOPϵͳ��ʼ��----------------------------------------------------------------
select a.*,a.rowid from hs_acpt.boparg a;
select a.*,a.rowid from hs_arch.archarg a;
select a.*,a.rowid from hs_user.sysarg a;
select a.*,a.rowid from hs_prod.prodarg a;
select a.menu_site,a.*,a.rowid from  hs_user.hsmenu a where menu_id like '7311%'  and (menu_caption like '%�ֽ�%')
select a.*,a.rowid from  hs_user.hsmenu a where (http_address like '%secumBusinWithdraw%') and menu_id like '72%'---acct--ofund--
select a.*,a.rowid from  hs_user.hsmenu a where (menu_caption like '%�ͻ�������������%') and menu_id like '73%'---acct--ofund--
select a.*,a.rowid from  hs_user.hsmenu a where (menu_caption like '%֤ȯ��Ʒֺ�����%') 
select a.*,a.rowid from  hs_user.hsmenu a where (menu_caption like '%˽ļ��ͬ����%')---acct--ofund--
select a.*,a.rowid from  hs_user.hsmenu a where (menu_caption like '%%')---acct--ofund--
select a.*,a.rowid from  hs_user.hsmenu a where (menu_caption like '%��������ʾ����%')---acct--trade--
select a.*,a.rowid from hs_acpt.bopform a where acpt_id='2018070400000224'
select count(*) from hs_user.hsmenu a
--begin--------------------------------------------------�˵���-------------------------------------------------
select a.*, a.rowid from hs_user.hsmenu a where (menu_caption like '%֤ȯ��Ʋ�Ʒ�Ϲ�%') or (menu_caption like '%��Ʒ����ƥ�����%') or (menu_caption like '%֤ȯ��Ʋ�Ʒת��%') or
(menu_caption like '��ƷȷȨ') or (menu_caption like '%����ȷȨ%') or (menu_caption like '%��Ʋ�Ʒҵ�񳷵�%') or (menu_caption like '%֤ȯ��Ʒֺ�����%')--�˵�
select a.*, a.rowid from hs_user.hsmenu a where menu_id='73050101' or (menu_caption like '%�ط�ȷ��%')
select a.*, a.rowid from hs_user.hsmenu a where (menu_caption like '%˽ļ��ͬȡ��%') or (menu_caption like '%��ƷԤԼ����%')-- 
select a.*, a.rowid from hs_user.hsmenu a where (menu_caption like '%�ֽ��˻�%') or (menu_caption like '%��ƷԤԼ����%')
select a.*,a.rowid from hs_user.FUNCTIONTOMENU a where menu_id = '70000101' or (menu_id like '%731106%') or menu_id = '73110501' or menu_id = '73110217' or menu_id = '73110216'
--------------------------------------------------------------------------------------------------------------------
select a.*,a.rowid from hs_acpt.bopcategory a where acpt_category_no='1018'
select a.*,a.rowid from hs_acpt.bopcategory a where acpt_category_name like '%˽ļ��ͬ����%' or acpt_category_no='2038'--����ϵͳҵ�����ű�
select a.*,a.rowid from hs_acpt.boptpl a where menu_id='73041202' and  acpt_busin_type='2038' or remark like '%������Ϣ����%'--����ϵͳҵ�����ű�������
select a.*, a.rowid from hs_user.hsmenu a where  (menu_caption like '%��������%')
select a.*, a.rowid from hs_user.hsmenu a where  menu_id='380146' or (menu_id like '%731106%')
select a.*,a.rowid from hs_user.FUNCTIONTOMENU a where menu_id = 1112 and function_id like '6%' or menu_id='73041202'  
------------------------------------------------------�����������ͱ�----------------------------------------------------------------------------------
select a.*,a.rowid from hs_acpt.boptpl a where remark in ('֤ȯ��Ʋ�Ʒ�Ϲ�','֤ȯ��Ʋ�Ʒ�깺','��Ʋ�Ʒ�Ϲ�','��ƷԤԼ�Ϲ�','��ƷԤԼ�깺','��Ʋ�Ʒ����','��Ʋ�Ʒ�Ϲ�','��Ʋ�Ʒ�깺')--����ϵͳҵ�����ű�������
select a.*,a.rowid from hs_arch.scanoptype a where sub_op_type='1317z' or sub_op_type='1421z'--��������
select a.*,a.rowid from hs_user.sysarg a---
select a.*,a.rowid from hs_user.sysconfig a where config_no='40045'
select a.client_rights,a.*,a.rowid from hs_asset.client a where client_id='00042'
select a.prod_type,a.*,a.rowid from hs_prod.prodarg a where prodta_no in('D05','D07');
select a.*,a.rowid from hs_user.sysdictionary a where dict_entry='41153'
--end-------------------------------------------------�������Ϣ-----------------------------------------------------------
select a.*,a.rowid from hs_user.hsmenu a where menu_caption like '%��Ʋ�Ʒ%'
--UF��800016--���쳣������dealAcptError.vm(ҵ��ƽ̨������)-����bopform����acpt_form_status״̬Ϊ7�ļ�¼
select a.client_name,a.id_kind,a.id_no,a.organ_flag,a.branch_no,a.join_exserial_no,a.acpt_form_status,a.*,a.rowid from  hs_acpt.bopform a where acpt_id = '2018070300000012' or  acpt_id = '2018052400004684';--���̱�
select a.*,a.rowid from hs_acpt.bopform a where acpt_busin_type='2014' or acpt_busin_type='2038'
--UF:800022����������ͼ��ѯ-�������������������--����������������Դ
select a.* from hs_acpt.bopvtodotask a where fund_account in('19057','00042','99999'); 
--UF:800142--���������ѯ����������-������������������ or ���� --��ǰ����˵������Ա�ɲ�����
select a.op_level,a.*,a.rowid from hs_acpt.bopoperatortask a,hs_acpt.bopform b where a.acpt_id=b.acpt_id and a.auditor_no='99999' and a.acpt_id='2018022600001797'--
--����ҵ�����ݱ�BOP�������ġ����ֶΡ���ֻ���Ӧ�˵���������Ϣ������Param_data
select a.*,a.rowid from  hs_acpt.bopbusindata a where a.acpt_id= '2018073100000612';
--begin------------------------------------------------������ر�-----------------------------------------------------
select a.*,a.rowid from hs_asset.client a where client_id='00042';-- or client_id='99999';--�ͻ���
select a.*,a.rowid from hs_asset.fundaccount a where client_id='00042' and fund_account='00042'
select a.*,a.rowid from hs_prod.prodbankmholder a where client_id='00042'
select a.rowid,a.* from hs_asset.bankmholder a where client_id='00042'
select a.organ_flag,a.paper_type,a.corp_risk_level,a.rowid,a.* from hs_asset.eligrisklevelquota a where prodta_no='B88' --eligrisklevelquota
select a.rowid,a.* from hs_asset.bankmholder a where client_id='00042' and open_date=open_date 
select a.prod_code,a.*,a.rowid from hs_prod.secumreal a

select a.*,a.rowid from hs_asset.eligpaper a where paper_type in ('7') and organ_flag='0' and delete_flag='0' and prodta_no='B88'
select a.question_no,a.delete_flag,a.*,a.rowid from hs_asset.eligquestion a where question_no in ('0','664','671','678')--�ʵ��������



select a.risk_level,a.*,a.rowid from hs_asset.fundaccount a where client_id='00042';--1100=0--�˻���
select a.* from hs_asset.client a where client_id='00042'--1100=0--�˻���
select a.corp_risk_level,a.*,a.rowid from hs_asset.client a where client_id='00042'--1100=1--�ͻ���
select a.*,a.rowid from hs_prod.prodbankmholderup a

select a.*,a.rowid from hs_prod.prodbankmholderup a where client_id='00042'
select a.bankm_account,a.trans_account,a.fund_account,a.tarisk_level,a.*,a.rowid from hs_prod.prodbankmholder a where client_id='00042' or client_id='99999'--��������˻���Ϣ��
select a.client_rights,a.*,a.rowid from hs_asset.fundaccount a where fund_account='00042' or client_id='00042' or client_id='99999';--�ʲ��˻���
select a.prodta_no,a.fund_account,a.*,a.rowid from hs_asset.bankmholder a order by a.prodta_no,a.fund_account--  where fund_account='00042' or client_id='00042' or client_id='99999';
select a.*,a.rowid from hs_prod.bankmentrust a
select a.*,a.rowid from hs_asset.secumholder a where fund_account='00042' and prodta_no='42' --or client_id='99999';--֤ȯ����˻�
--end-----------------------------------------------------------------------------------------------------------------
select a.*,a.rowid from hs_prod.secumreal a where fund_account='99999'or fund_account='00042';--���÷ݶ�
select a.*,a.rowid from hs_fund.fundreal a where fund_account='99999' or fund_account='00042';--���ý��
select a.co_serial_no,a.*,a.rowid from hs_prod.secumentrust a where allot_no='606000000201804200000008'
----------------------------------------------ת�ý���------------------------------------------------------------------------------------------
select a.prod_prop,a.*,a.rowid from hs_prod.prodentrust a--����ί�б�
select a.prod_invest_term,a.*,a.rowid from hs_prod.prodcode a 
select a.*,a.rowid from hs_prod.prodentrust a--����ί�б�
select a.*,a.rowid from hs_asset.eligpaperquestrel a where paper_type='7' and prodta_no='D01' and organ_flag='0' and question_no=95;
select a.*,a.rowid from hs_asset.eligpaper where question_no=948 

-------------------------------------------------------------------------�ʵ���-----------------------------------------------------------------------
select a.pf_risk_level,a.*,a.rowid from hs_asset.clientprefer a where client_id='00042'
select a.prod_name,a.prod_status,a.prodrisk_level,a.*,a.rowid from hs_prod.prodcode a where prod_code='420001'
select a.prod_name,a.prod_status,a.prodrisk_level,a.*,a.rowid from hs_prod.prodcode a where prod_code='990001'

select a.*,a.rowid from hs_asset.ofriskmatch 
select a.*,a.rowid from hs_user.SYSDICTIONARY where dict_entry=''
select a.prodrisk_level,a.ipo_begin_date,a.ipo_end_date,a.presell_end_date,a.presell_begin_date,a.presell_begin_time,a.presell_end_time,a.*,a.rowid from hs_prod.prodcode a where prod_code='990001'
select a.*,a.rowid from hs_user.sysconfig a where config_no='1249'
select a.pf_risk_level,a.birthday,a.en_invest_kind,a.client_income_type,a.en_maxdeficit_rate,a.asset_balance,a.corp_risk_level,a.prof_flag,a.en_invest_term,a.*,a.rowid from hs_asset.clientprefer a where client_id='00042' --or  client_id='123324'  --�ͻ��ʵ���ƫ�ñ�en_invest_kind�� 1630003 У������check_str 
---------prof_flag:רҵͶ���߱�־0-��רҵ��1-רҵ---------
select a.*,a.rowid from hs_user.sysconfig a where config_no in('1214','1249');
select a.prodrisk_level,a.low_corp_risk_level,a.invest_type,a.*,a.rowid from hs_asset.eligproduct a where (prodta_no='99' and prod_code in ('990001')) or (prodta_no='17' and prod_code ='ZJ0001') --and prod_code ='103'--���Ա�elig_ctrlstr��BOP�ʵ��Կ��ƴ�
select a.prodrisk_level,a.prod_invest_term,a.*,a.rowid from hs_prod.prodcode a where (prodta_no='99' and prod_code in ('990001','106')) or (prodta_no='17' and prod_code ='ZJ0001')--���Ա�prod_elig_ctrlstr��
select a.*,a.rowid from hs_prod.prodriskmatch a--���յȼ�ƥ���-en_prodrisk_level��������յȼ� �Ƿ�  ����prodrisk_level���յȼ�
select a.*,a.rowid from hs_asset.eligrisklevelquota a where prodta_no='B88'--�ʵ��Է��յȼ���ֵ���ձ�
select a.corp_risk_level,a.*,a.rowid from hs_asset.client a where client_id='212212' or client_id='123324';
--�ͻ���--corp_risk_level�ͻ����յȼ�ΪĬ����0ʱ����40041������δ0���ͻ����յȼ�Ϊ��Ĭ���Ͳ�������ί�У���select a.en_prodrisk_level,a.*,a.rowid from hs_asset.eligriskmatch a --where prodta_no='LP';--�ʵ��Է��յȼ�ƥ���
�������µ��ʵ�������
select a.corp_end_date,a.*,a.rowid from hs_asset.clientprefer a where client_id='123324'
--corp_end_date�ͻ����յ������Ƿ�ȵ��콻��ʱ��С����40040=0����ڿͻ����յȼ����ڲ��������ί�У��ͻ����յȼ����� ע����������˽ļУ���¹棬��ȡrisk_end_date���ղ���������
-------------------------------------�ʾ�������---------------------------------------------------------------------------------------
select a.paper_answer,a.*,a.rowid from hs_asset.eligtestjour a where  prodta_no = '' and paper_type='7' in ('D01','D02','B88') order by a.prodta_no-- init_date='20180123'--�ʵ��Բ�����¼��
select a.prodta_no,a.*,a.rowid from hs_asset.eligrisklevelquota a where prodta_no in ('42','90','D01','D02','D03','B88')--���յȼ���ֵ���ձ�
select a.enable_flag,a.delete_flag,a.prodta_no,a.*,a.rowid from hs_asset.eligpaper a where paper_type in ('w','x','7') and organ_flag='0' and delete_flag='0' and prodta_no in ('77','B88','90','20','42') --�����Ծ��
select a.*,a.rowid from hs_asset.eligpaper a where enable_flag='0'   prodta_no='42'

select a.question_no,a.delete_flag,a.*,a.rowid from hs_asset.eligquestion a where question_no in ('663','664','671','678')--�ʵ��������
select a.question_no,a.prodta_no,a.delete_flag,a.*,a.rowid from hs_asset.eligpaperquestrel a where organ_flag='0' and prodta_no in ('76','77','B88') and question_no in ('6','7','8','9')--�𰸱�
select a.*,a.rowid from hs_his.his_eligtestjour a where prodta_no='B88'--�ʵ���������ʷ��
------------------------------------------ԤԼҵ����ر�---------------------------------------------------------------------
select a.*,a.rowid from hs_prod.prodpreentrust a where prodta_no='D01' and init_date='20180205'--ԤԼί�б�

-----------------------------------------------������-------------------------------------------------------------------------------
select a.prod_status,a.prodta_no,a.prod_code,a.prod_status,a.*,a.rowid from hs_prod.PRODCODE a where prodta_no='42' order by a.prod_type,a.prodta_no,a.prod_code;  --and prod_code in ('999772','999773','999774','999775','999770','999763','999798');--�����2��3�Ϲ�
select a.prod_status,a.*,a.rowid from hs_prod.prodallowbusin a where prodta_no='42' order by a.prodta_no,a.prod_code,a.prod_status;--����ҵ���

--------------------------------------------------�ʵ���-----------------------------------------------------------------------------
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
---------��Ŀ
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
														
--D03-----------��ѯ�Ծ��
select a.prodta_no,a.*,a.rowid,daily_permit_times, eligpaper_version
        from hs_asset.eligpaper a
       where  organ_flag = '0'   
         and delete_flag = '0'
				  and ((prodta_no= 'B88') or (prodta_no= '42'))
					and paper_type in ('w','x')                          
													
----D03						--------��ֵ���ձ�							
select a.rowid,a.*,corp_risk_level,corp_risk_level as risk_level,corp_risk_level as pf_risk_level,risk_valid,advance_month,invest_advice	          
	  	       from  hs_asset.eligrisklevelquota a
			   where (100 > min_value) 
			     and (100 <= max_value)
					 and (paper_type in ('x'))
			     and ('w'!='7' or prodta_no = '42') 
			     and ('w'!='o' or prodta_no = '42') 
			     and (organ_flag = '0')



select a.*,a.rowid from hs_asset.bankmholder a where fund_account='99999' or fund_account='00042';--��������˻�
select a.*,a.rowid from hs_asset.trustholder a where fund_account='99999' or fund_account='00042';--��������˻�
select a.secumclient_rights,a.open_date,a.prodta_no,a.*,a.rowid from hs_asset.secumholder a where fund_account='00042'--֤ȯ����˻�
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

------------------------------------ϵͳ���Ӳ���Ա----------------------------------------------------------
select a.*, a.rowid from hs_user.userright a where user_id='10565' or user_id='19057' or user_id='99999'--�û�Ȩ��
select a.*,a.rowid from hs_user.operators a where OPERATOR_no='10565' or OPERATOR_no='19057' or OPERATOR_no='99999' --����Ա
select a.*,a.rowid from hs_user.users a where user_id='10565' or user_id='14750' or user_id='99999'--�û�:����
------------------------------------------------------------------------------------------------------------
select a.join_exserial_no,a.scantask_id,a.*,a.rowid from  hs_acpt.bopform a where client_id = '00042' and acpt_id = '2018042600003277' ;--���̱�
select a.*,a.rowid from hs_arch.scansubtask a where scantask_id='2017121200000709'
--------------------------------------------------------------------------------------------------------------------
select a.scantask_id,a.*,a.rowid from  hs_acpt.bopform a where client_id = '00042' and acpt_id = '2018042600003277' ;--���̱�
select a.*,a.rowid from hs_arch.scansubtask a where scantask_id='2017121200000710'
-------------------------------------��Ʒ�����------------------------------------------------------
select a.organ_flag,a.*,a.rowid from hs_asset.client a where client_id='00042'
select a.client_rights,a.*,a.rowid from hs_asset.fundaccount a where fund_account='00042'
select a.*,a.rowid from hs_prod.prodcontrol a prodta_no='' and prod_code=''
select a.*,a.rowid from hs_prod.prodcashacct a where fund_account='1110422'
select a.trans_account,a.prodholder_status,a.*,a.rowid from hs_prod.prodsecumholder a where fund_account='00042' and prodta_no='99'
select a.co_serial_no,a.entrust_no,a.business_flag,a.invpay_status,a.entrust_status,a.*,a.rowid from hs_prod.secumentrust a where fund_account='00042' and prodta_no='99' and prod_code='990001' and init_date='20180423'
----------------------------------------����---------------------------------------------------------
select a.*,a.rowid from hs_asset.ofstockholder a where fund_company='01' and branch_no='223'--�����˻���
select a.*,a.rowid from hs_user.ofstkconfig a where fund_company='01' and fund_code='202001'--�����������ҵ���
select a.codesimple_name,a.en_other_flag,a.*,a.rowid from hs_user.ofstkcode a where fund_company='01' and fund_code='202024'
select a.branch_no,a.*,a.rowid from hs_ofund.ofstockreal a where fund_company='01' and fund_account='00042'
select a.*,a.rowid from hs_user.ofagencyno a where fund_company='01'--�����̺�
select a.holder_status,a.*,a.rowid from hs_asset.ofstockholder a where fund_account='00042'--�����˻�
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

select a.* from hs_user.ofstkcode a for update //���������Ϣ

select a.* from hs_prod.prodsecumholder a where fund_account='3004146'  for update

select a.* from hs_acpt.boptpl a where acpt_busin_type='1012' for update //�人78

select a.* from hs_prod.secumentrust a where fund_account='004307021' and business_flag='44053' for update
---------------------------��ƷȷȨ---------------------------------------
select a.*,a.rowid from Prodprice a where prod_code='990001'-- for update
-----------------------------�ݶ��---------------------------------------------
select a.*,a.rowid from hs_asset.secumholder a where fund_account='00042' and prodta_no='99'
------------------------------�������------------------------ -----------------------------
select a.*,a.rowid from hs_prod.prodsecumholder a where fund_account='00042' and prodta_no='99'
select a.secum_account,a.trans_account,a.*,a.rowid from hs_asset.secumholder a where fund_account='00042' and prodta_no='99' --or client_id='99999';--֤ȯ����˻�
---------------------------------ת�й�---------------------------------------------------
select a.trans_account,a.secum_account,a.*,a.rowid from hs_prod.prodsecumholder a where fund_account='00042' and prodta_no='99'
---------------------------------���Ӻ�ͬǩ��---------------------------------------------------------
select a.prod_type,a.prod_code,a.*,a.rowid from hs_asset.ofecontractjour a where prodta_no='01' and prod_code='202024';
select a.position_str,a.prod_type,a.prod_code,a.*,a.rowid from hs_asset.ofecontract a  where prodta_no='01' and prod_code='202024';
select a.client_rights,a.*,a.rowid from hs_asset.fundaccount a where fund_account='00042';--�ʲ��˻�
select a.ta_ctrlstr,a.*,a.rowid from hs_prod.prodarg a where prodta_no='99';--��Ʒ����
-------------------------------------�ʹܷݶ�ת��------------------------------------------------------------------
select a.prod_type_ass,a.*,a.rowid from hs_prod.prodcode a where prod_code='999999' and prodta_no='99'
select a.operator_no,a.entrust_price,a.entrust_amount,a.entrust_no,a.position_str,a.branch_no,a.fund_account,a.client_id,a.prod_prop,a.entrust_status,a.prod_code,a.prodta_no,a.*,a.rowid from hs_prod.prodtransferboard a  where init_date='20180521' and fund_account='00042'-- and fund_account='00042'  --��Ʒ�ݶ�ת����Ϣwhere 
select a.*,a.rowid from hs_prod.prodcasharg a where prodta_no='99'--�ֽ��Ʒ����
select a.*,a.rowid from hs_user.FUNCTIONTOMENU a where menu_id='73110404'--�˵����ܶ���
select a.*,a.rowid from hs_user.hsfunction a where function_id='632218'--���ܱ�
select a.trans_account,a.contact_id_no,a.position_str,a.bank_no,a.pay_kind,a.unit_flag,a.*,a.rowid from hs_prod.prodsecumholder a where prodta_no='99' and fund_account='00042'--֤ȯ����˻���Ϣ
select a.*,a.rowid from hs_prod.prodarg a where prodta_no='99'--��Ʒ����
select a.en_pay_kind,a.en_entrust_way,a.prodcode_ctrlstr,a.*,a.rowid from hs_prod.prodcode a where prod_code='420003' --or prod_code='888888'--��Ʒ����
select a.sell_unit,a.buy_unit,a.*,a.rowid from hs_user.stkcode a where stock_code='600570'--֤ȯ�����
select a.codesimple_name,a.en_other_flag,a.*,a.rowid from hs_user.ofstkcode a where fund_company='01' and fund_code='202024'
select a.branch_no,a.*,a.rowid from hs_prod.secumreal a where prodta_no='98'--���÷ݶ�
select a.branch_no,a.*,a.rowid from bankmreal a where fund_account='00042' and prodta_no='B88'--���÷ݶ�
select a.*,a.rowid from hs_fund.fundreal a where fund_account='11100018' ----�����ʽ�
select a.en_prod_prop,a.*,a.rowid from hs_prod.prodexchtime a where prodta_no='99' and prodtime_kind='0'
select a.join_exserial_no,a.scantask_id,a.*,a.rowid from  hs_acpt.bopform a where client_id = '00042' and acpt_id = '2018050900003762'
select a.*,a.rowid from hs_prod.secumentrust a where fund_account='00042' and entrust_no='31'
select a.econtract_type,a.remark,a.trans_account,a.prod_account,a.prodta_no,a.prod_code,a.econtract_id,a.prod_type,a.*,a.rowid from hs_asset.ofecontract a where fund_account='00042'--���Ӻ�ͬ
select a.*,a.rowid from  hs_acpt.bopbusindata a where a.acpt_id= '2018050300003514';--
select a.finance_type,a.*,a.rowid from hs_asset.eligproduct a where prodta_no='99' or prodta_no='B88'
select a.*,a.rowid from hs_asset.eligriskmatch a
----------------------------------------֤ȯ��ƻط�ȷ��------------------------------------------------------------------
--�ط�ί�в�ѯ������
select a.curr_date,a.curr_time,a.prod_code,a.prod_revisit_status,a.prod_revisit_status,a.branch_no,a.entrust_no,a.*,a.rowid from hs_prod.secumentrust a where entrust_no='6' entrust_status = '0' and invpay_status = '2' and prod_revisit_status in ('1','4') --and init_date='20180515'
select a.entrust_status,a.prod_revisit_status,a.invpay_status, a.prod_code,a.position_str,a.allot_no,a.*,a.rowid from hs_prod.secumentrust a where init_date='20180522' and  entrust_status = '0' and invpay_status = '2' and prod_revisit_status in ('1','4')
--�طóɹ��󣺲���ط���ˮ�����»ط�״̬���걨���ں�ί��״̬
select a.*,a.rowid from hs_prod.prodrevisitjour a
--֤ȯ����˻���
select a.unit_flag,a.pay_kind,a.trans_account,a.secum_account,a.pay_account,a.*,a.rowid from prodsecumholder a where fund_account='1110001818' and prodta_no='17' --and trans_account='605000000051'
select a.cooling_period,a.*,a.rowid from hs_prod.prodcode a where prod_code='420002'
--�����ֵ�
select a.report_date,a.prod_revisit_status,a.entrust_no,a.entrust_status,a.*,a.rowid from hs_prod.secumentrust a where init_date='20180515' and entrust_no='2'
---------------------------------֤ȯ��ƻس�����---------------------------------------------------------------------------------------
--����+���޴˼�¼��ʱ�򣬲���һ����¼
select a.prod_cost_price,a.current_amount,a.enable_amount,a.frozen_amount,a.*,a.rowid from hs_prod.secumreal a where prodta_no='17' and prod_code='000758' and fund_account='11100018'--�ݶ�䶯�����÷ݶ
--�ݶ���������ǰ�ݶ�+
select a.prod_cost_price,a.current_amount,a.*,a.rowid from hs_asset.secumshare a where prodta_no='FLJ' and prod_code='56' and fund_account='1110422'--�ݶ��
------------------------------------�ֽ𱦳���-----------------------------------------------------------------------------------------------
select a.business_flag,a.entrust_status,a.fund_account,a.prodta_no,a.prod_code,a.init_date,a.*,a.rowid from hs_prod.secumentrust a where business_flag='44022' and prodta_no='17'
------------------------------------------�ֽ𱦴���------------------------------------------------------------------------------------------
select a.*,a.rowid from hs_prod.prodexchtime a where prodtime_kind = '6' order by end_time desc
update hs_prod.prodexchtime a set end_time='70000' where prodtime_kind = '6'
select a.*,a.rowid from hs_asset.client a where client_id='212212'
select a.fundacct_status,a.*,a.rowid from hs_asset.fundaccount a where fund_account='1110001818'
select a.*,a.rowid from hs_prod.prodcashacct a where fund_account='1110001818'
----------------------------------------------�ʽ��ȡ------------------------------------------------------------------------------------
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
select a.enable_flag,a.delete_flag,a.prodta_no,a.*,a.rowid from hs_asset.eligpaper a where paper_type in ('w','x','7') and organ_flag='0' and delete_flag='0' and prodta_no in ('76','B88','90','20','42') --�����Ծ��
select a.*,a.rowid from hs_user.functiontomenu a where menu_id = 73110216 or menu_id = 73110601 or menu_id = 73110602
select a.role_rights,a.*,a.rowid from hs_user.hsmenu a where menu_id = 73110216 or menu_id = 73110601 or menu_id = 73110602
----------------------------------------------------------------
select a.*,a.rowid from hs_prod.prodcode a where prod_code='990001' --prodta_no='999999'
update hs_prod.prodcode set prod_invest_term = '2'
delete hs_prod.prodcode where prod_code<>'999185'
select a.*,a.rowid from hs_prod.PRODALLOWBUSIN a 
delete hs_prod.PRODALLOWBUSIN where prod_code<>'CQ158A'
---------------------------------------------------------------��Ʒ����------------------------------
select a.*,a.rowid from hs_prod.prodbfare a where prodta_no='LP'--������������
select a.prod_back_n,a.*,a.rowid from hs_prod.prodcode a where prod_code='121212' or prod_code='121213'


select a.fund_name,a.*,a.rowid from hs_user.OfStkCode a where fund_code='519015'
