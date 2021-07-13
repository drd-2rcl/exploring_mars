# ExploringMars

Olá, seja bem-vindo(a).

Após fazer o download do projeto, execute o seguinte comando para entrar no console interativo do elixir:

```elixir
iex -S mix
```

Basta chamar o módulo principal no console `ExploringMars.call` e serão solicitadas as informações de área, posição e direção cardinal. Serão solicitados duas vezes as posições e os comandos, em seguida sairão os dois resultados das movimentações da sonda com base nos valores inseridos.

Conforme o exemplo dado por vocês:

```elixir
- Entrada de Teste:
5 5
12N
LMLMLMLMM
33E
MMRMMRMRRM

- Saída esperada:
1 3 N
5 1 E
```

Para rodar os testes execute no seu terminal:

```elixir
mix test
```

Agradeço a oportunidade :D.
