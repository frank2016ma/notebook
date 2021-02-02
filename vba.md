# VBA(For Excel)

## Excel 对象

**单元格里的数据类型系统是根据数据内容确定的**, 比如：你将 A 列单元格格式设为保留两位的数值型, 当你在 A1 输入 5 时, 它就显示为 5.00, 如果输入 ABC, 它就不会变成数值型, 而是文本型, 如果将文本改为数字后, 又回到你设置的保留两位小数格式所以单元格设置格式只能对能转换的数据有效(当你设置为文本型后，所有输入字符都能转换为文本，可以理解为文本型才是单元格真正能设置的格式)

### Range

#### 常用函数

- AutoFit
  must be entire row or column
- AutoFill (Destination, Type)
- FillDown
- Merge (Across)
- ColumnDifferences(Comparison)
- RowDifferences(Comparison)
- Copy([Destination])
- PasteSpecial([Paste As XlPasteType = xlPasteAll], [Operation As XlPasteSpecialOperation = xlPasteSpecialOperationNone], [SkipBlanks], [Transpose])
  XlPasteType:

  | Name                                | Value | Description                                                       |
  | ----------------------------------- | ----- | ----------------------------------------------------------------- |
  | xlPasteAll                          | -4104 | Everything will be pasted.                                        |
  | xlPasteAllExceptBorders             | 7     | Everything except borders will be pasted.                         |
  | xlPasteAllMergingConditionalFormats | 14    | Everything will be pasted and conditional formats will be merged. |
  | xlPasteAllUsingSourceTheme          | 13    | Everything will be pasted using the source theme.                 |
  | xlPasteColumnWidths                 | 8     | Copied column width is pasted.                                    |
  | xlPasteComments                     | -4144 | Comments are pasted.                                              |
  | xlPasteFormats                      | -4122 | Copied source format is pasted.                                   |
  | xlPasteFormulas                     | -4123 | Formulas are pasted.                                              |
  | xlPasteFormulasAndNumberFormats     | 11    | Formulas and Number formats are pasted.                           |
  | xlPasteValidation                   | 6     | Validations are pasted.                                           |
  | xlPasteValues                       | -4163 | Values are pasted.                                                |
  | xlPasteValuesAndNumberFormats       | 12    | Values and Number formats are pasted.                             |

  Operation
  SkipBlanks
  True to have blank cells in the range on the clipboard not be pasted into the destination range. The default value is False.
  Transpose
  True to transpose rows and columns when the range is pasted. The default value is False.

- Range.Insert(Shift, CopyOrigin)
  Shift:
  xlShiftToRight 向右移动单元格
  xlShiftDown 向下移动单元格
  CopyOrigin:
  xlFormatFromLeftOrAbove 从上方和/或左侧单元格复制格式
  xlFormatFromRightOrBelow 从下方和/或右侧单元格复制格式
- Range.Replace(What, Replacement, [LookAt], [SearchOrder], [MatchCase], [MatchByte], [SearchFormat], [ReplaceFormat])

#### 引用单元格

- A1 表示法
  Range("A1")
  Range("A1:B5")
  Range("A1:B5,C1:D5")
  Range("A:A")
  Range("1:1")
  Range("A:C")
  Range("1:5")
  Range("1:1,3:3,8:8")
  Range("A:A,C:C,F:F")
- 索引编号(适合用于循环)
  Cells(6, 1)
- 快捷表示法
  [A1:B5]
- 相对引用
  Offset(Row, Col)
  Range(xx).count 单元格数
  range 表示连续的区域有两种表达:

1. range("起始单元格","结束单元格")
2. range("起始单元格:结束单元格")
   Range 表示非连续的区域:
   Range("A1:A2, B3:B4").Value = 10

```vb
Sub rangeTest()
    Debug.Print Range("a1: c5").Address
    ' $A$1:$C$5
End Sub
Sub rangeTest()
    Dim num1 As Integer
    Dim letter1 As String
    Dim num2 As Integer
    Dim letter As String
    Let num1 = 1
    Let letter1 = "a"
    Let letter2 = "c"
    Let num2 = 5
    Range(Range(letter1 & num1), Range(letter2 & num2)).Select
End Sub
' 变量选择
Sub rangeTest()
    Dim num As Integer
    Dim letter As String
    Let letter = "a"
    Let num = 5
    Range(letter & num).Select
End Sub
```

#### Files in a Dictionary

```vb
Dim directory$
directory = "D:\test\"
filename = Dir(directory & "*.xl??")
Do While filename <> ""
    Workbooks.Open(directory & filename)
Loop
```

### Cells

在不使用对象识别符的情况下，使用此属性将返回一个 Range 对象，它代表**活动工作表**中所有的单元格

### Selection

在不使用对象识别符的情况下，使用此属性等效于使用 Application.Selection(Object)
使用 Add 添加工作表/工作簿时候, 可以不指定新增的位置,使用一个对象来表示这个新增的表, 同时重命名(中英文环境新增表名字不一样,工作表 1/sheet1)

### Style

Style 对象包含样式的所有属性（字体、数字格式、对齐方式，等等） 有几种内置样式，包括“常规”、“货币”和“百分比” 同时对多个单元格修改单元格格式属性时，使用 Style 对象是快捷高效的方法

### AutoFilter

> When using AutoFilter with dates, the format should be consistent with English date separators ("/") instead of local settings ("."). A valid date would be "2/2/2007", whereas "2.2.2007" is invalid.
> expression An expression that returns a Range object.
> expression.AutoFilter(Field, Criteria1, Operator, Criteria2, SubField, VisibleDropDown)
> Field
> Theinteger offset of the field on which you want to base the filter (from the left of the list; the leftmost field is field one).
> Criteria1
> The criteria (a string; for example, "101"). Use "=" to find blank fields, "<>" to find non-blank fields, and "><" to select (No Data) fields in data types. If this argument is omitted, the criteria is All. If Operator is xlTop10Items, Criteria1 specifies the number of items (for example, "10")|
> Operator

| Name              | Value | Description                                                             |
| ----------------- | ----- | ----------------------------------------------------------------------- |
| xlAnd             | 1     | Logical AND of Criteria1 and Criteria2                                  |
| xlBottom10Items   | 4     | Lowest-valued items displayed (number of items specified in Criteria1)  |
| xlBottom10Percent | 6     | Lowest-valued items displayed (percentage specified in Criteria1)       |
| xlFilterCellColor | 8     | Color of the cell                                                       |
| xlFilterDynamic   | 11    | Dynamic filter                                                          |
| xlFilterFontColor | 9     | Color of the font                                                       |
| xlFilterIcon      | 10    | Filter icon                                                             |
| xlFilterValues    | 7     | Filter values                                                           |
| xlOr              | 2     | Logical OR of Criteria1 or Criteria2                                    |
| xlTop10Items      | 3     | Highest-valued items displayed (number of items specified in Criteria1) |
| xlTop10Percent    | 5     | Highest-valued items displayed (percentage specified in Criteria1)      |

> Criteria2
> The second criteria (a string). Used with Criteria1 and Operator to construct compound criteria. Also used as single criteria on date fields filtering by date, month or year. Followed by an Array detailing the filtering Array(Level, Date). Where Level is 0-2 (year,month,date) and Date is one valid Date inside the filtering period.

### FormatConditions

Methods:

- **Add(Type, Operator, Formula1, Formula2)**
- AddAboveAverage
- AddColorScale
- AddDataBar
- AddIconSetCondition
- AddTop10
- AddUniqueValues
- Delete
- Item

Properties:

- Application
- Count
- Creator
- Parent

## VBA 对象

### 时间

DateDiff(interval, date1, date2 [,firstdayofweek[, firstweekofyear]])
Interval - 一个必需的参数 它可以采用以下值

| Enumeration value       | String value | Unit of time difference |
| ----------------------- | ------------ | ----------------------- |
| DateInterval.Day        | "d"          | Day                     |
| DateInterval.DayOfYear  | "y"          | Day                     |
| DateInterval.Hour       | "h"          | Hour                    |
| DateInterval.Minute     | "n"          | Minute                  |
| DateInterval.Month      | "m"          | Month                   |
| DateInterval.Quarter    | "q"          | Quarter                 |
| DateInterval.Second     | "s"          | Second                  |
| DateInterval.Weekday    | "w"          | Week                    |
| DateInterval.WeekOfYear | "ww"         | Calendar week           |
| DateInterval.Year       | "yyyy"       | Year                    |

## 语法

Option Explicit 语句在模块级别中使用，强制显示声明模块中的所有变量。
Option Explicit 语句必须写在模块的所有过程之前。
当加上 On Error Resume Next 语句后，如果后面的程序出现"运行时错误"时，会继续运行，不中断
当加上 On Error Goto 0 语句后，如果后面的程序出现"运行时错误"时，会显示"出错信息"并停止程序的执行
如果模块中使用了 Option Explicit，
则必须使用 Dim、Private、Public、ReDim 或 Static 语句来显式声明所有的变量。
调用函数/过程时, 可以加括号或者不加
调用过程时
如果无参数, 则不加括号
如果有参数, 则必须加括号
如果调用时用**括号包住单个参数, 则该参数强行按值传递**
**不用 call 不加括号的调用, 形参与实参是传值而不是传引用**

> 如果调用时用括号包住单个参数, 则该参数强行按值传递
> 數組必須用 dim 或 global 來定義
> Debug.Print
> 使用了 Call 语句, 则参数要放在圆括号中

### 数据类型

| 数据类型 | 字符 |
| -------- | ---- |
| Integer  | %    |
| Long     | &    |
| Double   | #    |
| String   | $    |

<!-- - 工程浏览器 Ctrl+R -->
<!-- - 属性窗口 F4 -->
<!-- - 代码窗口 F7 -->

```vb
Sub Main()
    HouseCalc 99800, 43100
    Call HouseCalc(380950, 49500)
End Sub
Sub HouseCalc(price As Single, wage As Single)
' 此处 wage 和 price 不需要再在函数内部定义(类似于Java的this)
' 可以直接用
    If 2.5 * wage <= 0.8 * price Then
        MsgBox "You cannot afford this house."
    Else
        MsgBox "This house is affordable."
    End If
End Sub
```

### 数组

Timer(返回一个 double 值,从 0 点到现在结果的秒数)
' BirthDay is an array of dates with indexes from 1 to 10.
Dim BirthDay(1 To 10)As Date
' A is a three element list by default indexed 0 to 2
A = Array(10, 20, 30)
MyWeek = Array("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")

### 单元格

合并单元格 mergecells

### 字符串

Boolean String.isNullOrEmpty("xxx")

## 常用内置函数

### 字符串函数

Len: 字符串长度
Join: 数组 To 字符串
Split: 字符串 To 数组
Left, Right, Mid: 截取子字符串
Ucase, Lcase: 大小写转换
StrReverse

### 日期/时间函数

### 转换函数

Asc(String): 返回字符串中第一个字母对应的字符代码
Chr(Long): 返回字符代码对应的字符
Val(String): 以适当类型的数值格式返回字符串中包含的数字
CBool, CInt, CStr, CLng, Dbl

### 验证函数

- isNumeric
- isDate
- isNull
- isEmpty
- isArray
- isError

## 代码片段

```vb
Sub Test()
    Debug.Print Date
    Debug.Print time
    Debug.Print Now
End Sub
Sub demo()
    ActiveCell.FormulaR1C1 = "print"
    Range("A2").Select
End Sub
Sub demo()
    Worksheets(1).Cells(1,1).Value = 24
    Worksheets(1).Cells.Item(1,2).Value = 42
    ActiveSheet.Cells(2,1).Formula = "Sum(B1:B5)"
End Sub
Function Main() As String
    On Error GoTo errorHandle:
    ' call the function(s)
    vba
    ' ########
errorHandle:
    If Err.Number > 0 Then
        demo = Err.Description
    Else
        demo = "OK"
    End If
    Debug.Print demo
End Function
Function WorksheetExists() As Boolean
    '// add declarations
    On Error GoTo catchError
exitFunction:
    Exit Function
catchError:
    '// add error handling
    GoTo exitFunction
End Function
```

The following code example copies the **formulas** in cells A1:D4 on Sheet1 into cells E5:H8 on Sheet2.

```vb
Worksheets("Sheet1").Range("A1:D4").Copy destination:=Worksheets("Sheet2").Range("E5")
Worksheets("Sheet2").Range("E5").PasteSpecial Paste:=xlPasteValues
Function PasteSpecial([Paste As XlPasteType = xlPasteAll], [Operation As XlPasteSpecialOperation = xlPasteSpecialOperationNone], [SkipBlanks], [Transpose])
```

## 11/26/2020

Set is used to assign a reference to an object
**Dim** and **Private** work the same, though the common convention is to use **Private** at the module level, and **Dim** at the Sub/Function level. **Public** and **Global** are nearly identical in their function, however **Global** can only be used in standard modules, whereas **Public** can be used in all contexts (modules, classes, controls, forms etc.) **Global** comes from older versions of VB and was likely kept for backwards compatibility, but has been wholly superseded by **Public**.

## 12/4/2020

```vb
Sub demo()
    Dim rng As Range
    Set rng = ThisWorkbook.Worksheets(1).Range("A20")
    With Workbooks("tracking list").Worksheets(3)
        .Cells.AutoFilter Field:=6, Criteria1:="Frank"
        With .AutoFilter.Range
            .Range(.Rows(2), .Rows(.Rows.Count)).Copy rng
        End With
    End With
End Sub
```

Worksheets("Sheet1").Activate
MsgBox "The selection object type is " & TypeName(Selection)
Application.Wait(Time) As Boolean
LastRow = ActiveSheet.range("A" & Rows.Count).End(xlUp).Row
this approach will skip any hidden

```vb
'//get the last row of the worksheet
with sheets("sheet1")
    if application.worksheetfunction.CountA(.cells) <> 0 Then
        LastRow = .Cells.Find(What:="*", Lookat:=xlPart, LookIn:=xlFormulas, SearchOrder:=xlByRows, SearchDirection:=xlPrevious, MatchCase:=false).row
    else
        LastRow = 1
    End if
End with
```

> Excel2007+ has 1048576 rows
> .text & .value & .value2**VBA.VarType()**
> .Text gives you a string representing what is dilplayed on the screen for the cell
> using .text is usually a bad idea because you could get ####
> .value2 gives you the underlying value of the cell
> could be empty, string, error, number(double) or boolean
> .value gives you the same as .value2 except if the cell was formatted as currency or date it gives you a VBA currency or vba date
> using .value or text if usually a bad idea because you may not get the real value from the cell, and they are slower than .value2

## Autofilter

```vb
Sub demo()
    Dim rng As Range
    Set rng = ThisWorkbook.Worksheets(1).Range("A20")
    With Workbooks("tracking list").Worksheets(3)
        .Cells.AutoFilter Field:=6, Criteria1:="Frank"
        With .AutoFilter.Range
            .Range(.Rows(2), .Rows(.Rows.Count)).Copy rng
        End With
    End With
End Sub
```

## Word

Application
Document
Characters
words
sentences

`Function InStr(Start, String, String2)`

```vb
for each doc in documents
    if instr(1, doc.name, "sample.doc", 1) then
        doc.activate
        docFound = True
        exit for
    else
        docFound = false
    end if
next doc
if docFound = false Then
    documents.open filename:="Sample.doc"
```
