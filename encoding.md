#

## ASCII

單字節
可表示 128 種字符

## GB2312

包含了 ASCII
中文

## GBK

一個漢字兩個字節
包含了 GB2312

## GB18030

包含了 GBK
添加了少數民族的字

## Big5

只是業界標準

## UTF-8

## ANSI

在简体中文 Windows 操作系统中，ANSI 编码代表 GB2312 编码；在繁体中文 Windows 操作系统中，ANSI 编码代表 Big5；

## Unicode 字符集

**Unicode 是【字符集】**
UTF-16 LE、UTF-16 BE 、**UTF-8**都是 Unicode 编码的实现形式

UTF-8 最大的一个特点,就是它是一种变长的编码方式。它可以使用 1~4 个字节表示一个符号,根据不同的符号而变化字节长度。

Unicode 是【字符集】
UTF-8 是【編碼規則】

字符集：為每一個字符分配一個唯一的 ID（碼位）
編碼規則：將碼位轉換爲字節序列的規則（編碼/解碼 可以理解爲 加密/解密 的過程）

ANSI 和 ASCII 区别

ANSI 码（American National Standards Institute）

美国国家标准学会的标准码

ASCII 码(America Standard Code for Information Interchange）美国信息交换标准码
是基于拉丁字母的一套电脑编码系统，主要用于显示现代英语和其他西欧语言。它是现今最通用的单字节编码系统，并等同于国际标准 ISO/IEC 646。

ANSI 码仅在前 126 个与 ASCII 码相同。

在简体中文 Windows 操作系统中，ANSI 编码代表 GBK 编码；在英文 Windows 操作系统中，ANSI 编码代表 ASCII 编码；在繁体中文 Windows 操作系统中，ANSI 编码代表 Big5；在日文 Windows 操作系统中，ANSI 编码代表 Shift_JIS 编码。

Unicode 和 UTF-8 区别

Unicode is charset。
UTF-8 is encoding。

unicode 是一个字符集，utf8 是在这个字符集基础上的一种具体的编码方案为更好的存储和传输，其他还有 UTF-16，UTF-32 等。

ASCII 码跟 Unicode 没有本质的区别。只不过 Unicode 表示范围比 ASCII 大。ASCII 可以表示 127 个英文字母，其中每个英文字母都有一个十进制编码，并且通过这个十进制编码转化成二进制数（编码）存入到内存当中（占 1 字节）。
而在 Unicode 中，英文字母的编码与其在 ASCII 中没有不同。只是 Unicode 每个字符占 2 个字节，于是转化为二进制时就变成‘000000 ASCII’。
同时 Unicode 支持中文字符以及其他字符的表示。这种非 ASCII 字符占用的内存更多一些。
而 UTF-8 则是在 Unicode 的基础上进行的再编码。其中对于字母的编码与 Unicode 和 ASCII 一致。
文本文档是用 UTF-8 编码保存的。这样可以最大限度的节省空间。但是当你对这个文本文档进行操作的时候，计算机是先把 UTF-8 转化为 Unicode 然后放到内存中，让用户进行操作，操作完成后在内存中还是 Unicode 模式。当你需要保存的时候在转化为 UTF-8 格式保存（节省空间）。

## XAML

**WPF（Windows Presentation Foundation）**是微软推出的基于 Windows 的用户界面框架，属于.NET Framework 3.0 的一部分。它提供了统一的编程模型、语言和框架，真正做到了分离界面设计人员与开发人员的工作；同时它提供了全新的多媒体交互用户图形界面。

**微软基础类库（英语：Microsoft Foundation Classes，简称 MFC）**是微软公司提供的一个类库（class libraries），以 C++类的形式封装了 Windows API，并且包含一个应用程序框架，以减少应用程序开发人员的工作量。其中包含大量 Windows 句柄封装类和很多 Windows 的内建控件和组件的封装类。

句柄（Handle）是一个是用来标识对象或者项目的标识符，可以用来描述窗体、文件等，值得注意的是句柄不能是常量
在程序设计中，句柄是一种特殊的智能指针，当一个应用程序要引用其他系统（如数据库、操作系统）所管理的内存块或对象时，就要使用句柄
应用程序总是通过调用 Windows API 获得一个句柄
从数据类型上来看它只是一个 16 位的无符号整数。


#32768 :The class for a menu.
#32769 :The class for the desktop window.
#32770 :The class for a dialog box.
#32771 :The class for the task switch window.
#32772 :Windows NT/2000: The class for icon titles.

JSON 数据结构中的 Value 可以是 String、number、object、array、boolean（true/false）,null 这几种数据类型。

为什么只能用 config("name")获取, 而不能用 config.name?

因为编写时候并不知道 config 里面有什么, 除非事先定义一个对象, 和 config 文件中的 json 一一对应, 如下:

```c#
public class Account
{
    public string Email { get; set; }
    public bool Active { get; set; }
    public DateTime CreatedDate { get; set; }
    public IList<string> Roles { get; set; }
}
```

```c#
string json = @"{
  'Email': 'james@example.com',
  'Active': true,
  'CreatedDate': '2013-01-20T00:00:00Z',
  'Roles': [
    'User',
    'Admin'
  ]
}";

Account account = JsonConvert.DeserializeObject<Account>(json);

Console.WriteLine(account.Email);
// james@example.com
```

## DIFF

> &lt; stands for the less-than sign: <
> &gt; stands for the greater-than sign: >
> &le; stands for the less-than or equals sign: ≤
> &ge; stands for the greater-than or equals sign: ≥

| 縮寫 | 全拼                         | 中文           |
| ---- | ---------------------------- | -------------- |
| OA   | Office Automation            | 辦公自動化     |
| SOP  | Standart Operation Procedure | 標準作業流程   |
| QAS  | Quality Assurance System     | 質量保證系統   |
| UAT  | User Acceptance Test         | 用戶驗收測試   |
| PRD  | Production System            | 生產系統       |
| PIC  | Person In Charge             | 負責人         |
| PMO  | Project Management Office    | 项目管理办公室 |
