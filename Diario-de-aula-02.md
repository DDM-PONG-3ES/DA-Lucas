# Diário de Aula - 13/03/2025

Na vida, é importante saber o nome das coisas por 2 motivos importantes:

- **Denota conhecimento técnico**: Por saber o nome e conseguir explicar do que se trata aquele nome.
- **Ponto de partida**: Caso você não saiba explicar, sabendo o nome você já tem o ponto de partida e sabe como buscar informações.

## Fundamentos do Flutter

- **Multiplataforma**: Desenvolvimento para Android, iOS, web e desktop.
- **Widgets**: Tudo é um widget, estrutura a UI.
- **Hot Reload**: Atualizações em tempo real.
- **Estilos de Design**: Material e Cupertino.

## Fundamentos do Dart

- **Orientado a Objetos**: POO moderna.
- **Sintaxe Clara**: Fácil de aprender.
- **Tipagem Estática Opcional**: Inferência de tipo e `dynamic`.
- **Compilação Flexível**: Para JavaScript ou código nativo.

## Flutter

O Flutter é um framework que utiliza a linguagem de programação Dart.

### Vantagem estratégica do Flutter (além das já apresentadas inicialmente na aula):

- **Hot Reload**: O recurso no Flutter que permite que o aplicativo seja atualizado automaticamente ao salvar o código.
- **Tipagem Estática Opcional**: Em Flutter, você não precisa definir o tipo de retorno de função, tendo tipagem estática opcional.

## Boas Práticas de Flutter e Dart

### 1. Uso de `var`
- Utilize `var` quando a variável for inicializada imediatamente. O Dart infere automaticamente o tipo, tornando o código mais conciso.
- Se a variável não for inicializada, declare explicitamente o tipo para evitar que seja definida como `dynamic`.

### 2. Nomenclatura
- Use nomes descritivos para variáveis, funções e classes.
- Siga as convenções:
  - Variáveis e funções: `lowerCamelCase`.
  - Classes: `UpperCamelCase`.

### 3. Tratamento de Erros
- Sempre valide entradas do usuário para evitar falhas no programa.
- Utilize blocos `try/catch` para capturar exceções específicas
  
### 4. Imutabilidade
- Prefira usar `final` ou `const` sempre que possível para variáveis cujo valor não muda após a inicialização.

### 5. Modularidade
- Divida seu código em classes ou arquivos separados para facilitar a manutenção e reutilização.
- Exemplo:
- Crie uma classe específica para representar dados complexos (ex.: Cliente).
- Separe widgets personalizados em arquivos próprios.

  
