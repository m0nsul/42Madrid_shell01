# 42Madrid_shell01

## ex02

```sh
find . -type f -name "*.sh" -exec basename {} .sh \;
````

Se buscan los ficheros (```type f```) cuyo nombre acabe por '.sh' y se ejecuta el comando basename para cada resultado.
Basename recibe como argumento el nombre del fichero, y se pone como suffix .sh para que no imprima la extensión. El ```\;``` es ara finalizar el comando.

## ex03

```sh
find . -type f -o -type d | wc -l
````
Se buscan elementos de tipo fichero o directorio y se filtra el resultado por wc para contar las lineas del resultado.


## ex04

```sh
ifconfig -a | awk '/ether / {print $2}'  | awk '!x[$0]++'
````
Se lista la config de todos (-a) los interfaces. 
Se filtra con awk las lineas que contienen la cadena ```'ether '``` y con  ``` {print $2}``` se imprime la columna 2 del resultado.
```awk '!x[$0]++'``` elimina los resultados repetidos. Humíldemente explicado: recibe cada uno de los elementos y va creando un array con los elementos que no existan ya en dicho array.

## ex05

```sh
echo '42' > \"\\\?\$\*\'MaRViN\'\*\$\?\\\"
````
Se envía la cadena '42' al fichero.
Ya que el nombre del fichero contiene caracteres especiales, se hace necesario escapar cada uno de estaos caracteres con ```\``` para que se tomen como literal.





