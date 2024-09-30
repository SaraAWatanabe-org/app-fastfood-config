# Repositório para provisionamento de infraesturura para o projeto Fastfood

## Este repositório contém arquivos Terraform para provisionamento de infraestutura EKS na AWS.


## Iniciando

Enviar modificações para a branch main requer:

- Um PR aprovado (por membros do time e alguns serviços automatizados);
No merging todas as mudanças serão automaticamente integradas pelo Github Actions.

## Como Executar 
Para executar localmente, siga as instruções abaixo:

### Clonando o Repositório e Criando infraestrutura

1. Clone o repositório executando o comando:  
`git clone https://github.com/SaraAWatanabe-org/infra-fastfood.git`

2. Certifique-se que suas credenciais AWS esteja configuradas corretamente. [Mais Informações](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

3. Execute o comando para baixar as dependências necessárias:
`terraform init`

4. caso tenha feito alguma alteração, execute os comando para formatar e validar os arquivos:
`terraform fmt`
`terraform validate`

5. Execute o comando para criar um arquivo plan.out, contendo o planejamento do que será provisionado:
`terraform plan -out plan.out" `

6. Execute o comando para criar a infraestrutura:
`terraform apply plan.out" `

7. Após infraestrutura criada, você pode subir os demais arquivos .yaml.

8. Utilize o seguinte comando para apagar a infraestrutura na AWS se necessário:
`terraform destroy -var-file="variables.tfvars" `

