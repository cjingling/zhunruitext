*** Settings ***
Library           Selenium2Library
Resource          ../业务关键字.txt
Resource          ../流程关键字.txt
Resource          ../变更备案业务关键字.txt
Library           AutoItLibrary

*** Test Cases ***
Cunxurunshengban
    [Documentation]    传入参数
    ...    存续入口到申请信息页面：用户名、密码、主体名称、变更登记入口的元素、申请人身份证号码
    ...    存续：业务办理到申请信息：无效参数
    存续入口到申请信息页面    adminCJL    abc123@Gwssi    翁源县润林林业有限公司    xpath=.//div/div/div/div/div[2]/div/p[2]/span[1]/entry/a    440223198011035465
    存续：业务办理到申请信息    变更登记    无效

Daibanrunshengban
    [Documentation]    传入参数：用户名、密码、主体名称
    待办入口到申请信息页面    adminCJL    abc123@Gwssi    翁源县迅联科技有限公司

Domchange
    #Execute Javascript    js="var q=document.documentElement.scrollTop=0"
    变更标签
