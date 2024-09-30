# Repositório para provisionamento de infraesturura para o projeto Fastfood

Este repositório contém arquivos Terraform para provisionamento de infraestutura na AWS.


Para rodar localmente, é necessário:

>>1. configurar as credenciais aws
```aws configure
AWS Access Key ID [None]: Valor
AWS Secret Access Key [None]: Valor
Default region name [None]: us-east-1
Default output format [None]: json

>>2. iniciar o Terraform
```terraform init
```sh

>>3. validar os aqruivos
```terraform validate
```sh

>>4. salvar o plano de provisionamento
```terraform plan --out plan.out
```sh

>>5. aplicar o plano
```terraform apply plan.out
```sh

>>6. atualizar o kubeconfig (arquivo de configurações)
```aws eks update-kubeconfig --region us-east-1 --name fastfood-cluster
```sh

>>7. acessar os nodes
```kubectl get nodes
```sh

>>8. subir os demais serviços
```kubectl apply --validate=false -f arquivo.yaml
```sh

>>9. destruir aks
```terraform apply --destroy
digitar: yes


