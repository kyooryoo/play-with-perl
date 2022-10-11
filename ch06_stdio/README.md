# 标准输入输出
标准输入不仅包括键盘，也可以是指定的本地文件等其他资源。  

如果使用 `<STDIN>` 做为数据输入，注意不同上下文的结果。  
例如，对于变量上下文，读入的是包含断行符的行输入内容。  
而对于列表上下文，读入的是连续的行输入内容，直到 Ctrl+D  
所以 `$line = <\STDIN>` 和 `@lines = <STDIN>` 有不同。  

如果需要删除输入数据中的断行符，可以使用 *chomp* 方法。  
如要判断输入是否有效，可以用 `defined($line=<STDIN>)`  
当然以上判断的返回结果与 `<STDIN>` 相同，可替换使用。  

在没有指定读取数据的保存变量时，系统使用默认变量 *$_*  
所以 `<STDIN>` 会默认将读取数据保存到 *$_*  
而 *chomp* 的执行效果和 *chomp($_)* 是一样的。  

常用的行输入操作符除了 `<STDIN>` 还有功能更强大的 *<>*  
后者在运行程序时指定外部资源作为输入，如文件或键盘。  
例如 `./my_program.pl fred - barney betty`:  
* 程序会首先尝试逐行读取 *fred* 文件作为输入
* 接着尝试从键盘逐行读取输入，因为 *-* 参数
* 如果 *barney* 存在继续处理，否则打印警告
* 无论 *barney* 是否存在，继续处理 *betty*

实际上仍然是关于上下文的问题，Perl 还有如下原则：  
如果一个调用看起来像是函数，那就会被当作函数来对待。  
以 `print 2+3;` 和 `print (2+3)*4;` 为例：  
* 首先，他们的打印输出结果是一样的。
* `print (2+3)*4;` 在打印时会忽略 `*4` 部分。
* 在返回值中 `*4` 会起作用，即返回 *4*。  
所以，如果希望打印出 *20* 就需要额外的小括号。  

除了 *print* 还有支持带格式打印的 *printf* 方法。  
后者支持在字符串中带占位符：%s, %d, %g  
* %g 会自动匹配合适的数字类型的数据类型
* %d 表示十进制类型的整数，补充如下
+ 小数部分会做截取，而不是舍入操作。
* %s 表示以字符串类型替换给定值
* %f 标识以浮点类型替换给定值
+ 可用 %nd, %ns 或 %n.mf 控制字符位数，不足自动扩展
+ 实际的百分号用 %% 来表示

如果要格式化打印列表，可结合上下文获得列表元素数。  
具体动态构造格式的用例可以参考 printf 的示例程序。  