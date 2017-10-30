
print("**************************-- nil、boolean、number、string、userdata、function、thread和table。*******************************")

--type函数测试给定变量或者值的类型：
print(type("Hello world"))      --> string
print(type(10.4*3))             --> number
print(type(print))              --> function
print(type(type))               --> function
print(type(true))               --> boolean
print(type(nil))                --> nil
print(type(type(X)))            --> string


print("**************************nil（空）*******************************")
--1.1  nil 类型表示一种没有任何有效值，它只有一个值 -- nil，例如打印一个没有赋值的变量，便会输出一个 nil 值：

print(type(nil))

--1.2  对于全局变量和 table，nil 还有一个"删除"作用，给全局变量或者 table 表里的变量赋一个 nil 值，等同于把它们删掉
tab1 = { key1 = "val1", key2 = "val2", "val3" }
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end
 
tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end


print("**************************boolean（布尔）*******************************")
-- boolean 类型只有两个可选值：true（真） 和 false（假），Lua 把 false 和 nil 看作是"假"，其他的都为"真":
print(type(true))
print(type(false))
if false or nil then
    print("至少有一个是 true")
else
    print("false 和 nil 都为 false!")
end


print("**************************number（数字）*******************************")
--Lua 默认只有一种 number 类型 -- double（双精度）类型（默认类型可以修改 luaconf.h 里的定义）
print(type(2))
print(type(2.2))
print(type(0.2))
print(type(2e+1))
print(type(0.2e-1))
print(type(7.8263692594256e-06))


print("**************************string（字符串）*******************************")
-- 1.1字符串由一对双引号或单引号来表示。
s1 = "this is string"           --- string s1 = "this is string"  这种声明错了
print(s1)

-- 1.2 可以用 2 个方括号 "[[]]" 来表示"一块"字符串。   ----“一块”不能用“”取代
html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">菜鸟教程</a>
</body>
</html>
]]
print(html)

-- 1.3 在对一个数字字符串上进行算术操作时，Lua 会尝试将这个数字字符串转成一个数字:
print("2" + 6)
print("2" + "6")
print("2 + 6")
print("-2e2" * "6")

-- 1.4 字符串连接使用的是 ..            (注意)
print("a" .. 'b')
print(157 .. 428)

--1.4  使用 # 来计算字符串的长度，放在字符串前面
len = "ww.baidu.com"
print(#len)
print(#"www.runoob.com")


print("**************************table（表）*******************************")
-- table 的创建是通过"构造表达式"来完成
-- 创建一个空的 table
local tbl1 = {}
 
-- 直接初始表
local tbl2 = {"apple", "pear", "orange", "grape"}


--不同于其他语言的数组把 0 作为数组的初始索引，在 Lua 里表的默认初始索引一般以 1 开始

--table 不会固定长度大小，有新数据添加时 table 长度会自动增长，没初始的 table 都是 nil。

-- 更多的应用看 tabedemo.lua

print("**************************function（函数）*******************************")



print("**************************thread（线程）*******************************")



print("**************************userdata（自定义类型）*******************************")