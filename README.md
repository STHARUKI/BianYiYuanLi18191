#### 编译原理18191大作业

###### 第一部分 词法分析器

使用说明：

- 在词法分析器lex.yy.exe目录新建文本文档，将想要进行词法分析的文本复制到文本文档中，如下（例：ex.txt）

  ```
  void main() {
      int i=2;
      int j=4;
      int result=0;
      while(i <=j) {
          12313afdjkdas;
          result=result+j;
          i++;
  }
      return result;
  }
  ```

- 在词法分析器lex.yy.exe目录下打开命令行窗口，键入如下命令

  *其中，re.txt为存储词法分析输出结果的文本文档，若未指定，则会输出到命令行窗口；ex.txt 为存储要识别代码的文本文档*

  ```
  >lex.yy.exe >re.txt < ex.txt
  ```

- 将在命令行输出错误信息，在re.txt中输出词法分析结果

  ```
  re.txt:
  <$ID,Pointer to void's symbol table entry>
  <$ID,Pointer to main's symbol table entry>
  <$LPAR,->
  <$RPAR,->
  <$LSPAR,->
  <$INT,->
  <$ID,Pointer to i's symbol table entry>
  <$ASSIGN,->
  <$INTNUMBER,2>
  <$END,->
  <$INT,->
  <$ID,Pointer to j's symbol table entry>
  <$ASSIGN,->
  <$INTNUMBER,4>
  <$END,->
  <$INT,->
  <$ID,Pointer to result's symbol table entry>
  <$ASSIGN,->
  <$INTNUMBER,0>
  <$END,->
  <$WHILE,->
  <$LPAR,->
  <$ID,Pointer to i's symbol table entry>
  <$EQUALANDSMALL,->
  <$ID,Pointer to j's symbol table entry>
  <$RPAR,->
  <$LSPAR,->
  <$END,->
  <$ID,Pointer to result's symbol table entry>
  <$ASSIGN,->
  <$ID,Pointer to result's symbol table entry>
  <$ADD,->
  <$ID,Pointer to j's symbol table entry>
  <$END,->
  <$ID,Pointer to i's symbol table entry>
  <$ADD,->
  <$ADD,->
  <$END,->
  <$PSPAR,->
  <$RETURN,->
  <$ID,Pointer to result's symbol table entry>
  <$END,->
  <$PSPAR,->
  ```

  ```
  cmd
  ERROR! Unable to find a matching rule for 12313afdjkdas
  ```

  ​













