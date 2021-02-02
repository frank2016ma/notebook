# Dot Net

## C sharp

```c#
console.writeline();
```

```c#
var students = new Dictionary<int, String>()
{
    { 111, "frank"},
    { 222, "jerry"},
    { 333, "may"}
}
```

### System.xml.linq(XDocument better than XmlDocument)

difference:

```C#
XmlDocument doc = new XmlDocument();
XmlElement root = doc.CreateElement("root");
root.SetAttribute("name", "value");
XmlElement child = doc.CreateElement("child");
child.InnerText = "text node";
root.AppendChild(child);
doc.AppendChild(root_;)

XDocument doc = new XDocument(
    new XElement("root",
    new XAttribute("name", "value"),
    new XElement("child", "text node")
)
```

XObject -> XContainer

- XML 的设计宗旨是传输数据，而不是显示数据
- XML 标签没有被预定义您需要自行定义标签
- 在 HTML 中，某些元素不必有一个关闭标签
- 在 XML 中，省略关闭标签是非法的所有元素都必须有关闭标签
- XML 标签对大小写敏感
- XML 属性值必须加引号

一个元素可以包含：

其他元素
文本
属性
或混合以上所有...

XML 元素必须遵循以下命名规则：

名称可以包含字母、数字以及其他的字符
名称不能以数字或者标点符号开始
名称不能以字母 xml（或者 XML、Xml 等等）开始
名称不能包含空格

最佳命名习惯
使名称具有描述性使用下划线的名称也很不错：<first_name>、<last_name>

名称应简短和简单，比如：<book_title>，而不是：<the_title_of_the_book>

避免 "-" 字符如果您按照这样的方式进行命名："first-name"，一些软件会认为您想要从 first 里边减去 name

避免 "." 字符如果您按照这样的方式进行命名："first.name"，一些软件会认为 "name" 是对象 "first" 的属性

避免 ":" 字符冒号会被转换为命名空间来使用（稍后介绍）

|        |     |                |
| ------ | --- | -------------- |
| &lt;   | <   | less than      |
| &gt;   | >   | greater than   |
| &amp;  | &   | ampersand      |
| &apos; | '   | apostrophe     |
| &quot; | "   | quotation mark |

| 类                         | 说明                                                                  |
| -------------------------- | --------------------------------------------------------------------- |
| Extensions                 | 包含 LINQ to XML 扩展方法                                             |
| XAttribute                 | 表示一个 XML 属性                                                     |
| XCData                     | 表示一个包含 CDATA 的文本节点                                         |
| XComment                   | 表示一个 XML 注释                                                     |
| XContainer                 | 表示可包含其他节点的节点                                              |
| XDeclaration               | 表示一个 XML 声明                                                     |
| XDocument                  | 表示 XML 文档                                                         |
| XDocumentType              | 表示 XML 文档类型定义 (DTD)                                           |
| XElement                   | 表示一个 XML 元素                                                     |
| XName                      | 表示 XML 元素或特性的名称                                             |
| XNamespace                 | 表示一个 XML 命名空间 无法继承此类                                    |
| XNode                      | 表示 XML 树中节点的抽象概念(元素、注释、文档类型、处理指令或文本节点) |
| XNodeDocumentOrderComparer | 包含用于比较节点的文档顺序的功能 无法继承此类                         |
| XNodeEqualityComparer      | 比较节点以确定其是否相等 无法继承此类                                 |
| XObject                    | 表示 XML 树中的节点或特性                                             |
| XObjectChangeEventArgs     | 提供有关 Changing 和 Changed 事件的数据                               |
| XProcessingInstruction     | 表示 XML 处理指令                                                     |
| XStreamingElement          | 表示支持延迟流输出的 XML 树中的元素                                   |
| XText                      | 表示一个文本节点                                                      |

XDocument class overview
The XDocument class contains the information necessary for a valid XML document, which includes an XML declaration, processing instructions, and comments.
You only have to create XDocument objects if you require the specific functionality provided by the XDocument class. In many circumstances, you can work directly with XElement. Working directly with XElement is a simpler programming model.
XDocument derives from XContainer, so it can contain child nodes. However, XDocument objects can have only one child XElement node. This reflects the XML standard that there can be only one root element in an XML document.

Extensions
Contains the LINQ to XML extension methods.
XAttribute
Represents an XML attribute.
XCData
Represents a text node that contains CDATA.
XComment
Represents an XML comment.
XContainer
Represents a node that can contain other nodes.
XDeclaration
Represents an XML declaration.
XDocument
Represents an XML document. For the components and usage of an XDocument object, see XDocument Class Overview.
XDocumentType
Represents an XML Document Type Definition (DTD).
XElement
Represents an XML element. See XElement Class Overview and the Remarks section on this page for usage information and examples.
XName
Represents a name of an XML element or attribute.
XNamespace
Represents an XML namespace. This class cannot be inherited.
XNode
Represents the abstract concept of a node (element, comment, document type, processing instruction, or text node) in the XML tree.
XNodeDocumentOrderComparer
Contains functionality to compare nodes for their document order. This class cannot be inherited.
XNodeEqualityComparer
Compares nodes to determine whether they are equal. This class cannot be inherited.
XObject
Represents a node or an attribute in an XML tree.
XObjectChangeEventArgs
Provides data for the Changing and Changed events.
XProcessingInstruction
Represents an XML processing instruction.
XStreamingElement
Represents elements in an XML tree that supports deferred streaming output.
XText
Represents a text node.

```xml
<Flowchart.Variables>
    <Variable x:TypeArguments="x:String" Name="tempString" />
    <Variable x:TypeArguments="x:String" Name="testString" />
    <Variable x:TypeArguments="x:String" Name="temp" />
    <Variable x:TypeArguments="sd:DataTable" Default="[New System.DataDataTable]" Name="ExtractDataTable" />
    <Variable x:TypeArguments="x:String" Name="jsonString" />
    <Variable x:TypeArguments="njl:JObject" Name="config" />
    <Variable x:TypeArguments="njl:JToken" Name="start" />
    <Variable x:TypeArguments="njl:JArray" Name="ary" />
    <Variable x:TypeArguments="s:DateTime" Name="d" />
</Flowchart.Variables>

<Sequence DisplayName="Data Scraping" sap:VirtualizedContainerService.HintSize="200,67.2" sap2010:WorkflowViewState.IdRef="Sequence_2">
        <Sequence.Variables>
          <Variable x:TypeArguments="sd:DataTable" Default="[New System.Data.DataTable]" Name="ExtractDataTable" />
        </Sequence.Variables>

<ui:BrowserScope Browser="{x:Null}" SearchScope="{x:Null}" TimeoutMS="{x:Null}" UiBrowser="{x:Null}" BrowserType="IE" DisplayName="Attach Browser '          Page'" sap2010:WorkflowViewState.IdRef="BrowserScope_1" InformativeScreenshot="b49a63170d5e001bec34c424ec625e0e" Selector="&lt;html title='已完成代碼項目調試進度 - 所有項目' /&gt;">
          <ui:BrowserScope.Body>
            <ActivityAction x:TypeArguments="x:Object">
              <ActivityAction.Argument>
                <DelegateInArgument x:TypeArguments="x:Object" Name="ContextTarget" />
              </ActivityAction.Argument>
              <Sequence DisplayName="Do" sap2010:WorkflowViewState.IdRef="Sequence_1">
<Assign sap:VirtualizedContainerService.HintSize="263.2,60" sap2010:WorkflowViewState.IdRef="Assign_1">
        <Assign.To>
          <OutArgument x:TypeArguments="s:DateTime">[d]</OutArgument>
        </Assign.To>
        <Assign.Value>
          <InArgument x:TypeArguments="s:DateTime" xml:space="preserve">[DateTime.Parse("2020/11/18  8:17:24PM")]</InArgument>
        </Assign.Value>
        <sap:WorkflowViewStateService.ViewState>
          <scg:Dictionary x:TypeArguments="x:String, x:Object">
            <x:Boolean x:Key="IsExpanded">True</x:Boolean>
          </scg:Dictionary>
        </sap:WorkflowViewStateService.ViewState>
      </Assign>
```

## vb

Chr(34) Quote
Chr(32) Space

```vb
' Mac
vbCr = chr(13)
' Linux
' \n
vbLf = chr(10)
' windows
' \r\n
vbcrlf = vbNewLine = chr(13) & chr(10)
```

```vb
Function Split(Expression As String, Optional Delimiter As String = " ", Optional Limit As Integer = -1, <OptionCompare> Optional Compare As CompareMethod = CompareMethod.Binary) As String()

Function Space(Number As Integer) As String

Function StrDup(Number As Integer, Character As String) As String

Function StrReverse(Expression As String) As String

Function GetChar(str As String, Index As Integer) As Char
```

### dictionary

```vb
array of String
Dim strs = {"jerry", "frank", "may", "wendy"}
Dim xxx = New List(Of String) From {"jerry", "frank", "may", "wendy"}

Dim dict = new Dictionary(Of Integer, String) From
{
    {1, "frank"},
    {2, "jerry"},
    {3, "wendy"},
    {4, "may"}
}
```
