        #language: pt

        Funcionalidade: Tela de cadastro - Checkout

        Contexto:
        Dado que o usuário está na página de cadastro

        Cenario: Cadastro com todos os dados obrigatórios preenchidos
        Quando o usuário preenche todos os campos obrigatórios marcados com asterisco
        E clica no botão "Cadastrar"
        Entao o sistema cadastra o usuário com sucesso

        Cenario: Cadastro com e-mail inválido
        Quando o usuário preenche todos os campos obrigatórios
        E insere um e-mail no formato inválido "email_invalido"
        E clica no botão "Cadastrar"
        Entao o sistema exibe uma mensagem de erro "Formato de e-mail inválido"

        Cenario: Cadastro com campos obrigatórios vazios
        Quando o usuário deixa o campo "<campo_vazio>" vazio
        E tenta cadastrar
        Entao o sistema exibe uma mensagem de alerta "Por favor, preencha todos os campos obrigatórios"

        Examples:
            | campo_vazio |
            | Nome        |
            | E-mail      |
            | Senha       |
