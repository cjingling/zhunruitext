*** Settings ***
Suite Setup
Resource          ../业务关键字.txt
Library           Selenium2Library

*** Test Cases ***
Sucess
    [Documentation]    验证身份号码查询出正确的姓名
    Login    nx@Gwssi    123456    #登录
    点击功能树    #点击存续主体
    功能树进入办理业务    南雄市三本化学科技有限公司    xpath=.//div/div/div/div/div[2]/div/p[2]/span[1]/entry/a    #点击变更登记
    输入身份证查询    440223198011035465    #输入正确的身份证
    判断验证value    叶连秀    name=linkman

Error
    [Documentation]    验证输入错误的位数身份证
    刷新页面
    功能树进入办理业务    南雄市荣达建筑材料有限公司    xpath=.//div/div/div/div/div[2]/div/p[2]/span[1]/entry/a    #点击变更登记 \
    输入身份证查询    4213235235523    #输入位数错误身份证
    判断验证text    暂无该证件号码的信息    xpath=html/body/div[1]/div/div/div/div/span

Null
    [Documentation]    验证没有输入身份证
    刷新页面
    功能树进入办理业务    南雄市荣达建筑材料有限公司    xpath=.//div/div/div/div/div[2]/div/p[2]/span[1]/entry/a    #点击变更登记 \
    输入身份证查询    ${EMPTY}    #输入身份为空
    判断验证text    身份证号码不能为空    xpath=html/body/div[1]/div/div/div/div/span
    关闭浏览器
