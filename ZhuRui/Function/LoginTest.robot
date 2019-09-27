*** Settings ***
Library           Selenium2Library
Resource          ../业务关键字.txt

*** Test Cases ***
Loginsuccess
    [Documentation]    用户名和密码正确
    Login    dJ@dmin    abc123@Gwssi    #登录
    判断验证text    管理员（韶关）    xpath=html/body/div[1]/nav/div/ul/ul/span[1]    #验证
    关闭浏览器

Nulluser
    [Documentation]    用户名为空，密码正确
    Login    ${EMPTY}    abc123@Gwssi
    判断验证text    账号登录    xpath=html/body/article/div/div[2]/h4
    关闭浏览器

Nullpwd
    [Documentation]    用户名正确，密码为空
    Login    dJ@dmin    ${EMPTY}
    判断验证text    账号登录    xpath=html/body/article/div/div[2]/h4
    关闭浏览器

Pwdfail
    [Documentation]    用户名正确，密码错误
    Login    dJ@dmin    abc123@gwssk
    判断验证text    账号登录    xpath=html/body/article/div/div[2]/h4
    关闭浏览器

Userfail
    [Documentation]    用户名错误，密码正确
    login    dJ@dmim    abc123@Gwssi
    判断验证text    账号登录    xpath=html/body/article/div/div[2]/h4
    关闭浏览器
