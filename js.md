# js

js是解释型语言, 不支持I/O, 比如网络, 存储和图形等, 但这些都可以由它的宿主环境提供

当浏览器处理一个 HTML 文档，并在文档中遇到 `<script>` 标签时，就会在继续构建 DOM 之前运行它。这是一种防范措施，因为脚本可能想要修改 DOM，甚至对其执行 `document.write` 操作，所以 `DOMContentLoaded` 必须等待脚本执行结束。

`console.assert(expression, message)`

> 当`expression` 为 `false` 时, 控制台输出`message`

HTML 页面的生命周期包含三个重要事件：

- `DOMContentLoaded` —— 浏览器已完全加载 HTML，并构建了 DOM 树，但像 `<img>` 和样式表之类的外部资源可能尚未加载完成。
- `load` —— 浏览器不仅加载完成了 HTML，还加载完成了所有外部资源：图片，样式等。
- `beforeunload/unload` —— 当用户正在离开页面时。

当整个页面，包括样式、图片和其他资源被加载完成时，会触发 `window` 对象上的 `load` 事件。可以通过 `onload` 属性获取此事件。

冒泡事件, `event.target` 父元素上的处理程序始终可以获取事件实际发生位置的详细信息, 注意区分 `this ` 和`event.target` 的区别

## 函数

( function(){…} )()和( function (){…} () )是两种javascript立即执行函数的常见写法

1. 函数声明：function fnName () {…};
使用function关键字声明一个函数，再指定一个函数名，叫函数声明。
2. 函数表达式 var fnName = function () {…};
使用function关键字声明一个函数，但未给函数命名，最后将匿名函数赋予一个变量，叫函数表达式，这是最常见的函数表达式语法形式。
3. 匿名函数：function () {};
使用function关键字声明一个函数，但未给函数命名，所以叫匿名函数，匿名函数属于函数表达式，匿名函数有很多作用，赋予一个变量则创建函数，赋予一个事件则成为事件处理程序或创建闭包等等。

```js
function sayHi() {
  alert( "Hello" );
}
alert( sayHi ); // 显示函数代码
```
最后一行代码并不会运行函数，因为 sayHi 后没有括号。在其他编程语言中，只要提到函数的名称都会导致函数的调用执行，但 JavaScript 不是这样。
在 JavaScript 中，函数是一个值，所以我们可以把它当成值对待。上面代码显示了一段字符串值，即函数的源码。

============================

在某种意义上说一个函数是一个特殊值，我们可以像 sayHi() 这样调用它。
但它依然是一个值，所以我们可以像使用其他类型的值一样使用它。
我们可以复制函数到其他变量：
```js
function sayHi() {   // (1) 创建
  alert( "Hello" );
}
let func = sayHi;    // (2) 复制
```
func(); // Hello     // (3) 运行复制的值
sayHi(); // Hello    //     这里也能运行
解释一下上段代码发生的细节：
(1) 行声明创建了函数，并把它放入到变量 sayHi。
(2) 行将 sayHi 复制到了变量 func。请注意：sayHi 后面没有括号。如果有括号，func = sayHi() 会把 sayHi() 的调用结果写进func，而不是 sayHi 函数 本身。
现在函数可以通过 sayHi() 和 func() 两种方式进行调用。

<!-- 一般来说, 完整的js包括以下几个部分:

- ECMAScript
- 文档对象模型(DOM)
- 浏览器对象模型(BOM)

js常用来完成以下任务:

- 嵌入动态文本与HTML页面
- 对浏览器时间做出相应
- 读写HTML元素
- 在数据被提交到服务器之前验证数据
- 控制cookie, 包括创建和修改等 -->

## 数据类型

js有 8 种数据类型：

number — 可以是浮点数，也可以是整数，
bigint — 用于任意长度的整数，
string — 字符串类型，
boolean — 逻辑值：true/false，
null — 具有单个值 null 的类型，表示“空”或“不存在”，
undefined — 具有单个值 undefined 的类型，表示“未分配（未定义）”，
object 和 symbol — 对于复杂的数据结构和唯一标识符，我们目前还没学习这个类型。

js是弱类型的, 变量可以被隐式地转换成另一种类型
二元操作符 + 会把两个操作数转换为字符串, 除非两个操作数都为数字类型
二元操作符 - 会把两个操作数转换为数字类型

var 声明的变量没有块级作用域，它们仅在当前函数内可见，或者全局可见（如果变量是在函数外声明的）。
var 变量声明在函数开头就会被处理（脚本启动对应全局变量）。

## 常用

我们使用浏览器作为工作环境，所以基本的 UI 功能将是：

prompt(question[, default])
提出一个问题，并返回访问者输入的内容，如果他按下「取消」则返回 null。
confirm(question)
提出一个问题，并建议用户在“确定”和“取消”之间进行选择。选择结果以 true/false 形式返回。
alert(message)
输出一个 消息。

## HTML DOM 对象

- DOM Document

在HTML文档中，元素的id是唯一的，也就是说，一个页面只有唯一的id名
document.querySelector(CSS selectors)
document.getElementById()

| 集合      | 描述                                     |
| --------- | ---------------------------------------- |
| all[]     | 提供对文档中所有 HTML 元素的访问。       |
| anchors[] | 返回对文档中所有 Anchor 对象的引用。     |
| applets   | 返回对文档中所有Applet 对象的引用。      |
| forms[]   | 返回对文档中所有 Form 对象引用。         |
| images[]  | 返回对文档中所有 Image 对象引用。        |
| links[]   | 返回对文档中所有 Area 和 Link 对象引用。 |

| 方法                   | 描述                                                                     |
| ---------------------- | ----------------------------------------------------------------------- |
| close()                | 关闭用 document.open() 方法打开的输出流，并显示选定的数据。                    |
| getElementById()       | 返回对拥有指定 id 的第一个对象的引用。                                        |
| getElementsByName()    | 返回带有指定名称的对象集合。                                                 |
| getElementsByTagName() | 返回带有指定标签名的对象集合。                                               |
| write()                | 向文档写 HTML 表达式 或 JavaScript 代码。                                   |
| writeln()              | 等同于 write() 方法，不同的是在每个表达式之后写一个换行符。                      |

- DOM Element

```js
.style.display = 'none'
document.getElementById(id).style.visibility = "hidden";
document.getElementById(id).style.visibility = "visible";
**Note** The difference between style.visibility and style.display is when using visibility:hidden unlike display:none, the tag is not visible, but space is allocated for it on the page. The tag is rendered, it just isn't seen on the page.

When removing an element with standard JavaScript, you must go to its parent first:

var element = document.getElementById("element-id");
element.parentNode.removeChild(element);
element.remove()

element.style["background-color"] = color;
setTimeout(function(){
    element.style["background-color"] = "white"
},200);
```

- DOM Attribute
- DOM Event

monitorEvents() 方法让开发者工具记录特定目标的日志信息。第一个参数是监听的对象。如果第二个参数没有提供参数，则所有事件都返回。为了具体说明你要监听的事件，你需要提供一个字符串或者一个字符串数组作为第二个参数。

```js
// 监听页面 body 的点击事件
monitorEvents(document.body, "click");
// 停止对 body 对象的监听
unmonitorEvents(document.body);
```

js中函数可以作为参数传递

```js
function say (value) {
    alert(value);
}
function execute (someFunction, value) {
    someFunction(value);
}
execute(say, 'hi js.');

function execute (someFunction, value) {
    someFunction(value);
}
execute(function(value){alert(value);}, 'hi js.');
// 第一段代码是将say方法作为参数传递给execute方法
// 第二段代码则是直接将匿名函数作为参数传递给execute方法
```

<!-- ## AJAX

AJAX 是一种在无需重新加载整个网页的情况下，能够更新部分网页的技术。
XMLHttpRequest 术语缩写为XHR，中文可以解释为可扩展超文本传输请求。
XMLHttpRequest 对象可以在不向服务器提交整个页面的情况下，实现局部更新网页。
XMLHttpRequest的对象用于客户端和服务器之间的异步通信。
它执行以下操作：
在后台从客户端发送数据
从服务器接收数据
更新网页而不重新加载。 -->

<!-- ## JavaScript 对象
- JS Array
- JS Boolean
- JS Date
- JS Math
- JS Number
- JS String
- JS RegExp
- JS Functions
- JS Events

## Browser 对象

- Window
alert()
confirm()
Window 对象表示一个浏览器窗口或一个框架。在客户端 JavaScript 中，Window 对象是全局对象，所有的表达式都在当前的环境中计算。也就是说，要引用当前窗口根本不需要特殊的语法，可以把那个窗口的属性作为全局变量来使用。例如，可以只写 document，而不必写 window.document。同样，可以把当前窗口对象的方法当作函数来使用，如只写 alert()，而不必写 Window.alert()。
- Screen
- Location

|          |                                               |
| -------- | --------------------------------------------- |
| hash     | 设置或返回从井号 (#) 开始的 URL（锚）       |
| host     | 设置或返回主机名和当前 URL 的端口号         |
| hostname | 设置或返回当前 URL 的主机名                 |
| href     | 设置或返回完整的 URL                      |
| pathname | 设置或返回当前 URL 的路径部分               |
| port     | 设置或返回当前 URL 的端口号                |
| protocol | 设置或返回当前 URL 的协议                   |
| search   | 设置或返回从问号 (?) 开始的 URL（查询部分） |

Location 对象是 Window 对象的一个部分，可通过 window.location 属性来访问。
Location 对象存储在 Window 对象的 Location 属性中，表示那个窗口中当前显示的文档的 Web 地址。它的 href 属性存放的是文档的完整 URL，其他属性则分别描述了 URL 的各个部分。这些属性与 Anchor 对象（或 Area 对象）的 URL 属性非常相似。当一个 Location 对象被转换成字符串，href 属性的值被返回。这意味着你可以使用表达式 location 来替代 location.href。
不过 Anchor 对象表示的是文档中的超链接，Location 对象表示的却是浏览器当前显示的文档的 URL（或位置）。但是 Location 对象所能做的远远不止这些，它还能控制浏览器显示的文档的位置。如果把一个含有 URL 的字符串赋予 Location 对象或它的 href 属性，浏览器就会把新的 URL 所指的文档装载进来，并显示出来。
除了设置 location 或 location.href 用完整的 URL 替换当前的 URL 之外，还可以修改部分 URL，只需要给 Location 对象的其他属性赋值即可。这样做就会创建新的 URL，其中的一部分与原来的 URL 不同，浏览器会将它装载并显示出来。例如，假设设置了Location对象的 hash 属性，那么浏览器就会转移到当前文档中的一个指定的位置。同样，如果设置了 search 属性，那么浏览器就会重新装载附加了新的查询字符串的 URL。
除了 URL 属性外，Location 对象的 reload() 方法可以重新装载当前文档，replace() 可以装载一个新文档而无须为它创建一个新的历史记录，也就是说，在浏览器的历史列表中，新文档将替换当前文档。 -->

三种在 JavaScript 中创建函数的方式：
```js

//函数声明：主代码流中的函数

function sum(a, b) {
  let result = a + b;

  return result;
}
// 函数表达式：表达式上下文中的函数

let sum = function(a, b) {
  let result = a + b;

  return result;
}
// 箭头函数：

// 表达式在右侧
let sum = (a, b) => a + b;

// 或带 {...} 的多行语法，此处需要 return：
let sum = (a, b) => {
  // ...
  return a + b;
}

// 没有参数
let sayHi = () => alert("Hello");

// 有一个参数
let double = n => n * 2;

```

**XPath**即为XML路径语言（XML Path Language），它是一种用来确定XML文档中某部分位置的语言。

interface HTMLElementTagNameMap

### 2021/1/21

element.appendChild()
createAttribute()
createElement()
createEvent()
createTextNode()
element.childNodes 返回所有的节点, 包括文本, 注释
element.children 只返回元素节点
如需循环子节点列表, 使用子节点的`nextSibling`属性比使用父节点的`childNodes`效率更高

element.addEventListener(event, function, useCapture)

element.innerHTML(含标签)
element.innerText
```html
<div id="d1">
  <p id="P1">HelloWorld</p>
</div>
```
```js
let content = document.getElementById("d1")
content.innerText //=> "HelloWorld"
content.innerHTML //=> "<p id="p1">HelloWorld</p>"
```

JS标准内置对象
Infinity
NaN(Not-A-Number)
underfined

严格相等操作符(===)
标准相等操作符(==)

```js
if(x === undefined){
  //some code
}
```
这里必须使用`===`而不是`==`因为后者会检查`x`是不是`null`

一个未被赋值的对象的类型是`undefined`

`new Function([arg1[,arg2[,...argN]]] functionBody)`



## VSCode

Fold All
Fold All Block Comments
Fold All Regions
