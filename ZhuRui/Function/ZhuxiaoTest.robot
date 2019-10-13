*** Settings ***
Resource          ../流程关键字.txt
Library           Selenium2Library
Resource          ../业务关键字.txt
Resource          ../清算组与注销.txt

*** Test Cases ***
Cunxurunshengban
    [Documentation]    传入参数
    ...    存续入口到申请信息页面：用户名、密码、主体名称、注销登记入口的元素、申请人身份证号码
    ...    填写注销信息：公告日期
    存续入口到申请信息页面    adminCJL    abc123@Gwssi    韶关新悦化工有限公司    xpath=.//div/div/div/div/div[2]/div/p[2]/span[3]/entry/a    440223198011035465
    填写注销信息    2019-10-05
