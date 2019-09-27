*** Settings ***
Resource          ../流程关键字.txt

*** Test Cases ***
Cunxurunshengban
    存续入口到申请信息页面    dJ@dmin    abc123@Gwssi    珠海市金湾区而是正餐服务有限公司    xpath=.//div/div/div/div/div[2]/div/p[2]/span[2]/entry/a    440223198011035465
