### shell  学习记录
> #! 是一个约定的标记，它告诉系统这个脚本需要什么解释器来执行，即使用哪一种 Shell。

运行 Shell 脚本有两种方法：
1. 作为可执行程序
````
chmod +x ./test.sh  #使脚本具有执行权限
./test.sh  #执行脚本
````

注意，一定要写成 ./test.sh，而不是 test.sh，运行其它二进制的程序也一样，直接写 test.sh，linux 系统会去 PATH 里寻找有没有叫 test.sh 的，而只有 /bin, /sbin, /usr/bin，/usr/sbin 等在 PATH 里，你的当前目录通常不在 PATH 里，所以写成 test.sh 是会找不到命令的，要用 ./test.sh 告诉系统说，就在当前目录找。

2. 作为解释器参数

这种运行方式是，直接运行解释器，其参数就是 shell 脚本的文件名，如：

````
/bin/sh test.sh
/bin/php test.php
````
这种方式运行的脚本，不需要在第一行指定解释器信息，写了也没用。

- 变量定义
````
your_name="runoob.com"
````
> 注意，变量名和等号之间不能有空格; 

  - 命名只能使用英文字母，数字和下划线，首个字符不能以数字开头。
  - 中间不能有空格，可以使用下划线（_）。
  - 不能使用标点符号。
  - 不能使用bash里的关键字（可用help命令查看保留关键字）。  - 

将目录的文件名循环出来：
````
for file in `ls /etc`
或
for file in $(ls /etc)
````
使用一个定义过的变量，只要在变量名前面加美元符号即可，如：
````
your_name="qinjx"
echo $your_name
echo ${your_name}
````

只读变量：
> 使用 readonly 命令可以将变量定义为只读变量，只读变量的值不能被改变。

````
#!/bin/bash
myUrl="http://www.google.com"
readonly myUrl
myUrl="http://www.runoob.com"
````
删除变量：
> 使用 unset 命令可以删除变量。语法：

````
unset variable_name
````
**变量被删除后不能再次使用。unset 命令不能删除只读变量。**

变量类型：
- 1) 局部变量 局部变量在脚本或命令中定义，仅在当前shell实例中有效，其他shell启动的程序不能访问局部变量。
- 2) 环境变量 所有的程序，包括shell启动的程序，都能访问环境变量，有些程序需要环境变量来保证其正常运行。必要的时候shell脚本也可以定义环境变量。
- 3) shell变量 shell变量是由shell程序设置的特殊变量。shell变量中有一部分是环境变量，有一部分是局部变量，这些变量保证了shell的正常运行。
  
Shell 注释：
> 以 # 开头的行就是注释，会被解释器忽略。
> 多行注释还可以使用以下格式：
````
:<<EOF
注释内容...
注释内容...
注释内容...
EOF
````
EOF 也可以使用其他符号:
````
:<<'
注释内容...
注释内容...
注释内容...
'

:<<!
注释内容...
注释内容...
注释内容...
!
````

Shell 传递参数:

在执行 Shell 脚本时，向脚本传递参数，脚本内获取参数的格式为：$n。n 代表一个数字，1 为执行脚本的第一个参数，2 为执行脚本的第二个参数，以此类推.

![图片](./)

Shell 数组

数组中可以存放多个值。Bash Shell 只支持一维数组（不支持多维数组），初始化时不需要定义数组大小.
    
    array_name=(value1 ... valuen)
    my_array=(A B "C" D)

    读取数组
    ${array_name[index]}
    获取数组中的所有元素：使用@ 或 * 可以获取数组中的所有元素。
    #!/bin/bash
    # author:菜鸟教程
    # url:www.runoob.com

    my_array[0]=A
    my_array[1]=B
    my_array[2]=C
    my_array[3]=D

    echo "数组的元素为: ${my_array[*]}"
    echo "数组的元素为: ${my_array[@]}"

### Shell 基本运算符

Shell 和其他编程语言一样，支持多种运算符，包括：

- 算数运算符
- 关系运算符
- 布尔运算符
- 字符串运算符
- 文件测试运算符

> 原生bash不支持简单的数学运算，但是可以通过其他命令来实现，例如 awk 和 expr，expr 最常用。
> 
>expr 是一款表达式计算工具，使用它能完成表达式的求值操作。

