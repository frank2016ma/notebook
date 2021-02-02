# 语法

** 指数运算
// 整除运算
字符串拼接 +
print()

缩进 4个空格

使用`";"`号将两个或多个逻辑行合并成一个物理行。
代码编辑器中显示的代码，每一行内容是一个物理行。
Python解释器对代码进行解释，一个语句是一个逻辑行。

python用单引号和双引号来表示字符串
当你用单引号' '定义字符串的时候，它就会认为你字符串里面的双引号" "是普通字符，从而不需要转义。反之当你用双引号定义字符串的时候，就会认为你字符串里面的单引号是普通字符无需转义。

括号`()`和管道符号`|`在正则表达式中有特殊的含义, 需要转义
`phoneNumRegex = re.compile(r'(\(\d\d\))')`

name = 'Runoob'
f'Hello {name}'  # 替换变量

f'{1+2}'         # 使用表达式
'3'

w = {'name': 'Runoob', 'url': 'www.runoob.com'}
f'{w["name"]}: {w["url"]}'
'Runoob: www.runoob.com'

- constants defined to be false: None and False.
- zero of any numeric type: 0, 0.0, 0j, Decimal(0), Fraction(0, 1)
- empty sequences and collections: '', (), [], {}, set(), range(0)

```python
>>> board
[['', '', ''], ['', '', ''], ['', '', '']]
>>> board[0]
['', '', '']
>>> board[0][0]
''
>>> board[0][0] = "X"
>>> board
[['X', '', ''], ['X', '', ''], ['X', '', '']]
```

运算符的优先级会影响表达式的求值顺序, 而在 Python 中 == 运算符的优先级要高于 not 运算符.
所以 not x == y 相当于 not (x == y), 同时等价于 not (True == False), 最后的运算结果就是 True.
之所以 x == not y 会抛一个 SyntaxError 异常, 是因为它会被认为等价于 (x == not) y, 而不是你一开始期望的 x == (not y).
解释器期望 not 标记是 not in 操作符的一部分 (因为 == 和 not in 操作符具有相同的优先级), 但是它在 not 标记后面找不到 in 标记, 所以会抛出 SyntaxError 异常.



在迭代时修改对象是一个很愚蠢的主意!!!

consume
Non-greedy
equivalent to

python2中`print`和`exec`是关键字
python3中是函数

>>> (0.1 + 0.2) > 0.3
True

python3 没有`long`类型, `int`型不限制大小
python3 不支持字符串与数字比较大小

section 部分, 章节, 切分
interpreter 解释器
principal 主要的
mutable 可变的
immutable 不可变的
literal 字面的
Fraction(1, 2) 分数()几分之几

