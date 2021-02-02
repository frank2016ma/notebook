# Chrome

<!-- ui-grid-row ng-star-inserted -->
<!-- ng-star-inserted -->

## Chrome devtools

Ctrl + Shitf + C
Ctrl + Shitf + I

getEventListener(targetNode)
点击展开 “Event Listeners” 选项。在那里你会找到所有注册在元素上的事件监听列表。

### Console API 和 Conmmand Line API

console.table()
console.dir(object) 命令将会以一个可扩展的 JavaScript 对象形式列出所有提供的对象的所有属性
console.dir()

capture node screenshot

capture full size screenshot

在控制台输入document.body.contentEditable="true"或者document.designMode = 'on'实现对网页的编辑

在控制台选择元素
DevTools控制台支持一些变量和函数来选择DOM元素：

$()–document.querySelector()的简写，返回第一个和css选择器匹配的元素。例如$(‘div’)返回这个页面中第一个div元素
$$()–document.querySelectorAll()的简写，返回一个和css选择器匹配的元素数组。
$0-$4–依次返回五个最近你在元素面板选择过的DOM元素的历史记录，$0是最新的记录，以此类推。

使用多个插入符进行选择
当编辑一个文件的时候，你可以按住Ctrl（cmd），在你要编辑的地方点击鼠标，可以设置多个插入符，这样可以一次在多个地方编辑。
选择下一个匹配项
当在Sources标签下编辑文件时，按下Ctrl + D (Cmd + D) ，当前选中的单词的下一个匹配也会被选中，有利于你同时对它们进行编辑。

## table

table.rows : <tr>元素的集合

tr.cell: 给定<tr>中<td>和<th>单元格的集合

## Chrome extensions

Chrome 插件是一个用 Web 技术开发、用来增强浏览器功能的软件，它其实就是一个由 HTML、CSS、JS、图片等资源组成的一个.crx 后缀的压缩包.
Chrome 插件没有严格的项目结构要求，只要保证本目录有一个 manifest.json 即可manifest_version、name、version

```js
document.querySelector("body > ui-app > ng-component > mat-sidenav-container > mat-sidenav-content > div > div > div > ng-component > ui-grid > div > div > ui-grid-filters > ui-grid-search > div > button > span > mat-icon > svg")

document.querySelector("#mat-input-1")

textInput 
TextEvent {isTrusted: true, data: "TE_Pilotrun_All_Bugs_Export_WKSF230", view: Window, detail: 0, sourceCapabilities: null, …}
bubbles: true
cancelBubble: false
cancelable: true
composed: true
currentTarget: null
data: "TE_Pilotrun_All_Bugs_Export_WKSF230"
defaultPrevented: false
detail: 0
eventPhase: 0
isTrusted: true
path: (24) [input#mat-input-1.mat-input-element.mat-form-field-autofill-control.cdk-text-field-autofill-monitor…, div.mat-form-field-infix, div.mat-form-field-flex, div.mat-form-field-wrapper, mat-form-field.mat-form-field.ng-tns-c21-4.mat-primary.mat-form-field-type-mat-input.mat-form-field…, form.ng-untouched.ng-pristine.ng-valid, div.layout-row.layout-align-v-end.layout-align-h-center.search-box-container, ui-grid-search.ng-star-inserted, ui-grid-filters.layout-row.ng-star-inserted, div.ui-grid-header.layout-row.layout-align-v-start.layout-align-h-center.layout-wrap.ng-star-insert…, div.ui-grid, ui-grid, ng-component.ng-star-inserted, div.flex-95, div.layout-row.layout-align-v-center.layout-align-h-start, div.mat-content, mat-sidenav-content.mat-drawer-content.mat-sidenav-content.ng-star-inserted, mat-sidenav-container.mat-drawer-container.mat-sidenav-container.mat-drawer-transition, ng-component.ng-star-inserted, ui-app.en, body.light, html, document, Window]
returnValue: true
sourceCapabilities: null
srcElement: input#mat-input-1.mat-input-element.mat-form-field-autofill-control.cdk-text-field-autofill-monitored
target: input#mat-input-1.mat-input-element.mat-form-field-autofill-control.cdk-text-field-autofill-monitored
timeStamp: 2268725.395000016
type: "textInput"
view: Window {window: Window, self: Window, document: document, name: "", location: Location, …}
which: 0
__proto__: TextEvent
```

## TamperMonkey

grant 指定脚本运行所需权限，如果脚本拥有相应的权限，就可以调用油猴扩展提供的API与浏览器进行交互。如果设置为none的话，则不使用沙箱环境，脚本会直接运行在网页的环境中，这时候无法使用大部分油猴扩展的API。如果不指定的话，油猴会默认添加几个最常用的API
require 如果脚本依赖其他js库的话，可以使用require指令，在运行脚本之前先加载其他库，常见用法是加载jquery
