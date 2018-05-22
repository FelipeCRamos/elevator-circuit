# Elevator Circuit

### Objetivos

O dado projeto tem como objetivo implementar um circuito para controle de um elevador em um prédio de 15 andares.

### Interface I/O

+ Teclado numérico

### Output
+ Controle da porta (Aberta/Fechada)
+ Controle do motor (Ligado/Desligado)
+ Display de 8 segmentos (andar atual)

### Workflow
1. É feita a entrada no input, simplesmente setando o andar que deseja ir com `1` e os demais com `0`.
  Ex: Se deseja ir ao andar 4, iremos deixar os inputs da seguinte maneira:

  ``````
  input(0) = 0
  input(1) = 0
  input(2) = 0
  input(3) = 0
  input(4) = 1
  input(5) = 0
  input(6) = 0
  ...
  ``````

2. O input é então codificado para um número de 4 bits, e depois comparado com o andar atual para saber se é necessária alguma ação por parte da porta/motor do elevador.

3. Caso input ≠ andar atual, as portas irão se fechar e o motor será ligado.

4. A cada andar percorrido, o elevador irá checar se o andar atual = andar selecionado (_input_).****

   **Caso verdadeiro**: O motor será desligado e o elevador abrirá sua porta.

   **Caso falso**: O motor continuará ligado e o elevador continuará com a porta fechada.

5. O andar atual é mostrado no display de 8 segmentos a cada vez que muda o andar.

#### Lógica do display

O display de 8 segmentos é básicamente um display simples de 7 segmentos com um segmento a mais, representando o algarismo `1` das dezenas (necessário para formar os números ≥ 10).   

### Diagrama de funcionamento
![Diagrama de funcionamento do projeto](Diagrama de funcionamento-1.jpg)

## Autores:
O projeto foi desenvolvido pela dupla constituida pelos alunos:

+ Felipe Ramos
+ Paulo Augusto

para matéria de Circuitos Lógicos na [UFRN](ufrn.br).