# Scalar
Perl 认为数字和字符串是一种东西，都叫做标量（Scalar）。  
注意区别标量数据和标量变量，前者不可变而后者保存前者可变。  

无论是整数还是浮点数，Perl 都将其作为双精度浮点数处理。  
浮点或整数值可以带 E 或 e 表示 10 的几次幂，如：  
1.25, -25.5e10, 1.2E-2, 2_345_987  
如上，对于过长的数字，Perl 支持*_*作为位分隔符。  
八、十六或二进制的数字使用前缀*0*或*0o*，*0x*和*0b*。  

Perl 会自动根据操作符号匹配数据类型，如数字后接如下符号：  
* `+` 的数字操作符情况下，数字会作为数字类型处理  
* `.` 的字符串操作符情况下，数字会作为字符串类型处理  
在数字操作符情况下，Perl 会最大能力匹配数字类型，例如：  
* `123abc456def` 会被识别为数字 123  
* `abc` 会被识别为 0 因为其中不包含任何数字  
例如 0 开头表示 8 进制数就不支持自动匹配，只支持显式数字：  
* `0377` 这是 8 进制下的 255，因为是显式数字  
* `'0377'` 这在自动匹配状况下会成为十进制的 377  

要显式转换字符串成数字，可用 `hex()` 或 `oct()` 方法。  
注意 `hex()` 方法只转换 16 进制数，只支持 `0x` 前缀。  
而 `oct()` 方法可以支持其他进制的数字，只要前缀正确。  
只是 `hex()` 和 `oct()` 分别默认转换 16 和 8 进制数。  
另外这两个方法只支持转换字符串，直接转换数字会有意外结果。  

在执行以上自动匹配时，Perl 可以对意外情况提供警告信息：  
例如将 `123abc` 自动匹配为数字 `123` 时可以警告。  
开启默认关闭的 Perl 的内置警报功能有如下三种方式：  
* 在程序头部添加声明 `use warnings;`
* 运行程序时使用命令 `$ perl -w my_program`
* 在程序顶部添加开关 `#!/usr/bin/perl -w`
可以使用声明 `use diagnostics;` 获得更多调试详情。  
建议使用如下方式从程序外部选择性的开关调试信息：  
* `$ perl -Mdiagnostics ./my_program`  

加减乘除和求模对应的操作符是：+，-，*，/，和%  
求模操作只针对整数有效，所以浮点数会自动转换为整数处理。  
因为整数和浮点数都作为浮点数处理，所以10/3得到3.3333...  
一个意外的结果是 -10%3 会得到 2 因为 -10 比 -12 大 2  
上式如果想得到 -1 的结果应该用计算式 -10%-3 不讲道理。  

Perl 支持在字符串类型变量中保存任何原始二进制数据，比如：  
你可以读取图像文件的原始二进制数据，处理并写回到图像文件。  
Perl 支持 Unicode 但并不主动识别程序中的 Unicode 字符。  
如涉及 Unicode 建议在程序头部添加 `use utf8;` 的声明。  

单引号字符直接量不会转译字符串中的\n或变量标识符，除了：  
* \' - 会转译为 ' 因为字符串用单引号包裹
* \\ - 因为反斜杠本身标志转译，所以会转译为 \
除了单引号 ‘ 和反斜杠 \ 之外，单引号内的字符串不解释。  
双引号内的字符串支持解释，如断行 \n 和制表 \t 等符号。  
另外，如果字符串中带有变量，必须用双引号才能解释变量值。

字符串可以用 . 连接，用 x 复制，数字也会作为字符串处理。  
Perl 会尝试理解用户输入，如 12fred34 * 3 相当于 12 * 3  
而 "z".5*7 相当于 "z".(5*7) 即 "z".35 结果是 "z35"  

变量存储数据，使用前缀 `$` 标识，名称第一位不可以是数字。  
Perl 对大小写敏感，所以变量 $Fred 和 $fred 是不同变量。  
变量名要易读并服从规范，例如 $a_good_name 或 $aGoodName  
二元赋值操作符做相应操作并赋值新值给变量自己，如 += 或 .=  

特殊语言的字符可以通过`chr()`和`ord()`函数来转换和表示。  
* `chr()`或`\x{}`可以将16进制的字符代码转换为字符  
* `ord()`可以将特殊字符转换成16进制的字符代码  

各种操作符的优先级不容易掌握，用小括号可以减少错误和困扰。  
数字和字符串使用不同但意义类似的比较操作符，对比如下：  
* 数字：== / != /  < / >  / <= / >=  
* 字符：eq / ne / lt / gt / le / ge  
注意字符的大小比较实际是比较字符在代码表中的顺序先后。  

Perl 没有单独的布尔型数据类型，而是使用如下规则：  
* undef 值为假，即未初始化的变量为假  
* 0 为假，其他任何数字为真  
* 空字符串' '和'0'为假，其他字符串为真  

读取用户输入的方法是 <STDIN> 注意它一般包含结尾的换行符。  
读取输入并同时移除结尾换行符的方法：chomp($text=<STDIN>)  
如果chomp成功移除了输入变量结尾的换行符则返回1否则返回0  

undef是一种特殊的数据类型，所有未初始化的变量拥有该值。  
根据上下文语义，未初始化的变量可以自动变成字符串或数字类型。  
defined()函数可以用来判断一个变量是否没初始化，即undef  
如果需要把某个变量放回到未初始化状态，可以给它赋值undef  