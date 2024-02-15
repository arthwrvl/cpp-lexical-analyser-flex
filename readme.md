# Analise Lexica de C++ com Flex

scanner para realizar a análise léxica da linguagem C++

### para rodar o scanner e gerar o arquivo executável
```flex cpp_scanner.l```


```gcc lex.yy.c -o parser```

### para rodar, basta abrir o cmd e executar o comando

```parser < program.cpp```

então o arquivo **program.cpp** será analisado
o resultado deve ser uma lista de tokens no formato 

**"TOKEN <TIPO, VALOR>"**