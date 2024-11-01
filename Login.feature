            #language: pt

            Funcionalidade: Login do Usuario

            Contexto:
            Dado que o usuário está na página de login

            Cenario: Login com dados válidos
            Quando o usuário insere dados válidos de "usuário" e "senha"
            E clica no botão "Entrar"
            Entao o usuário é direcionado para a tela de checkout

            Cenario: Login com dados inválidos
            Quando o usuário insere <usuario> e <senha> inválidos
            E clica no botão "Entrar"
            Entao o sistema exibe uma mensagem de alerta "Usuário ou senha inválidos"

            Exemplos:
            | usuário          | senha          |
            | usuário_inválido | senha_inválida |
            | válido           | senha_inválida |
            | usuário_inválido | válido         |
            

