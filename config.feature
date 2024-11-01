            #language: pt

            Funcionalidade: Configurar produto

            Contexto:
            Dado que o usuário está na página de seleção de produtos

            Cenario: Seleção de cor, tamanho e quantidade são obrigatórios
            Quando o usuário tenta adicionar o produto ao carrinho sem selecionar cor, tamanho ou quantidade
            Entao o sistema exibe uma mensagem "Selecione cor, tamanho e quantidade para continuar"

            Cenario: Limite de quantidade permitida por venda
            Quando o usuário seleciona <quantidade> unidades do produto
            Entao o sistema deve permitir a adição ao carrinho apenas se a quantidade for menor ou igual a 10

            Exemplos:
            | quantidade |
            | 1          |
            | 5          |
            | 10         |
            | 11         |
        *Deve falhar pois excede o total permitido

        Cenario: Limpar seleção e voltar ao estado original
        Dado que o usuário selecionou cor, tamanho e quantidade
        Quando o usuário clica no botão "limpar"
        Entao a seleção de cor, tamanho e quantidade volta ao estado original
        E  o sistema exibe uma mensagem "Seleção limpa com sucesso"


