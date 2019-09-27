*** Settings ***
Library           Selenium2Library
Resource          ../流程关键字.txt
Resource          ../业务关键字.txt
Resource          ../主要人员界面.txt
Resource          ../清算组.txt

*** Test Cases ***
Cunxurunshengban
    [Documentation]    传入参数
    ...    存续入口到申请信息页面：用户名、密码、主体名称、备案登记入口的元素、申请人身份证号码
    ...    注：在存续入口进行记得修改备案项代码
    存续入口到申请信息页面    dJ@dmin    abc123@Gwssi    珠海市付款商贸有限公司    xpath=.//div/div/div/div/div[2]/div/p[2]/span[2]/entry/a    440223198011035465
    存续：业务办理到申请信息    备案登记    css=input[value='70']    #71：章程；90：章程修正案；70：董监事；73：清算组；78：联络员；79：财务负责人

Daibanrunshengban
    [Documentation]    传入参数：用户名、密码、主体名称
    待办入口到申请信息页面    dJ@dmin    abc123@Gwssi    珠海市金湾区而是正餐服务有限公司

Zhuyaorenyuanbeian
    [Documentation]    传入参数：主要人员的身份证号码、主要人员的职位代码
    ...    存续：业务办理到申请信息：备案项的元素
    添加主要人员    440229197304144212    董事

Qingsuanbeuan
    [Documentation]    传入参数
    ...    添加时间：清算组日期
    Repeat Keyword    2    添加清算组成员    #循环添清算组成员
    添加时间    2019-09-19
