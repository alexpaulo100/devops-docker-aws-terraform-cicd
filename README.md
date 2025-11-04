
<h1 align="center">🚀 DevOps Docker AWS Terraform CI/CD</h1>
<p align="center">Meu primeiro projeto prático DevOps completo — utilizando Docker, AWS, Terraform e pipeline CI/CD.</p>

<p align="center">
  <img src="https://img.shields.io/badge/IaC-Terraform-blueviolet"/>
  <img src="https://img.shields.io/badge/Cloud-AWS-orange"/>
  <img src="https://img.shields.io/badge/Container-Docker-blue"/>
  <a href="https://github.com/alexpaulo100/devops-docker-aws-terraform-cicd/actions/workflows/terraform.yaml">
    <img src="https://github.com/alexpaulo100/devops-docker-aws-terraform-cicd/actions/workflows/terraform.yaml/badge.svg"/>
  </a>
</p>


## ☁️ Descrição do Projeto

Este laboratório é uma jornada prática para aprender os fundamentos de **DevOps**, integrando **Docker**, **Terraform**, **AWS** e **GitHub Actions**.  
O projeto demonstra o ciclo completo de **containerização, provisionamento de infraestrutura e automação de deploy** em um ambiente real de nuvem.

Durante o desenvolvimento, foram abordados:

- **AWS:** Conceitos de EC2, IAM, VPC e Security Groups, criação de instâncias e configuração de acessos via CLI.  
- **Docker:** Diferença entre imagem e container, comandos essenciais (`build`, `run`, `push`, `pull`) e uso de registries como Docker Hub e ECR.  
- **Terraform:** Conceitos de Infrastructure as Code (IaC), uso de HCL, comandos (`init`, `plan`, `apply`, `destroy`) e versionamento de estado remoto em S3.  
- **GitHub Actions:** Criação de um pipeline CI/CD automatizado para executar o Terraform com segurança via OpenID Connect (OIDC).

---

## 🧩 Habilidades desenvolvidas

| Pilar | Ferramenta | Benefício |
|:------|:------------|:-----------|
| 🐳 **Containerização** | Docker | Elimina inconsistências entre ambientes |
| 🏗️ **Infraestrutura como Código (IaC)** | Terraform | Automatiza e versiona recursos de nuvem |
| ⚙️ **Integração Contínua / Entrega Contínua (CI/CD)** | GitHub Actions | Cria pipelines para deploys rápidos e confiáveis |
| 🔐 **Boas Práticas** | IAM, Secrets, State Locking | Garante segurança e governança do ambiente |

---

## 📦 Estrutura do Projeto
````bash
.
├── infra/ # Código Terraform para infraestrutura AWS
├── website/ # Aplicação containerizada em Docker
├── Dockerfile # Definição da imagem da aplicação
├── .github/workflows/ # Pipeline CI/CD com Terraform
└── README.md # Este arquivo

yaml
Copiar código
````

---

## 🧰 Tecnologias Utilizadas

- **AWS (EC2, VPC, IAM, Security Groups)**
- **Terraform**
- **Docker**
- **GitHub Actions**
- **Git**

---

## ⚙️ Como Executar o Projeto

### 🐳 1. Executar com Docker localmente

Certifique-se de ter o **Docker** instalado.  
Dentro da pasta `website`, execute os comandos:

```bash
# Construir a imagem
docker build -t website-app .

# Executar o container
docker run -d -p 8080:80 website-app
Acesse no navegador:
👉 http://localhost:8080

☁️ 2. Provisionar Infraestrutura na AWS com Terraform
Antes de iniciar, verifique se o AWS CLI está configurado e autenticado:

bash
Copiar código
aws configure
Em seguida, na pasta infra, execute:

bash
Copiar código
# Inicializa o Terraform e baixa dependências
terraform init

# Valida os arquivos
terraform validate

# Mostra o plano de execução
terraform plan

# Aplica as mudanças na AWS
terraform apply -auto-approve
💡 O estado remoto do Terraform é armazenado em um bucket S3 configurado previamente (terraform-state-alexsilva-us-east-2).

⚙️ 3. Executar o Pipeline CI/CD
O pipeline do GitHub Actions pode ser acionado manualmente:

Vá até a aba Actions no repositório.

Selecione o workflow “Terraform CI/CD”.

Clique em “Run workflow” e escolha:

apply: true para aplicar a infraestrutura.

destroy: true para destruir o ambiente.

O GitHub Actions cuidará de todo o processo, autenticando via OIDC e executando o Terraform dentro do pipeline.

📚 Conclusão
Este projeto consolida os fundamentos essenciais do ecossistema DevOps, unindo containerização, automação de infraestrutura e integração contínua em um único fluxo.
Ao final, você terá um pipeline completo e seguro, capaz de criar, provisionar e implantar aplicações automaticamente na nuvem AWS.

<p align="center">💻 Desenvolvido por <b>Alex Silva</b> — Desenvolvedor e Engenheiro de Dados apaixonado por DevOps e automação.</p>
