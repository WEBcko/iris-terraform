# IRIS Terraform Project 🚀

Este projeto automatiza o provisionamento de infraestrutura e aplicações usando **Terraform**, **Ansible**, **Docker Compose** e **CI/CD com GitHub Actions**.

---

## 🗂 Estrutura do Projeto

```
iris-terraform-main/
├── terraform/                # Infraestrutura como código com Terraform
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── ansible/                  # Provisionamento de software
│   ├── inventory.ini
│   └── playbook.yml
├── .github/workflows/        # Pipelines CI/CD
│   ├── pipeline-stage.yml
│   └── pipeline-production.yml
├── docker-compose.yml        # Orquestração local dos containers
├── nginx.conf                # Configuração do proxy reverso (Nginx)
└── README.md
```

---

## 🌐 Requisitos

- [Terraform](https://www.terraform.io/downloads)
- [Ansible](https://docs.ansible.com/)
- [Docker & Docker Compose](https://docs.docker.com/)
- Acesso a provedor de nuvem (como AWS, GCP, etc.)
- GitHub com Actions ativado

---

## ⚙️ Uso com Terraform

1. Configure suas variáveis no arquivo `terraform/variables.tf` ou via CLI.
2. Inicialize o Terraform:

```bash
cd terraform
terraform init
```

3. Visualize o plano de execução:

```bash
terraform plan
```

4. Aplique a infraestrutura:

```bash
terraform apply
```

---

## 🤖 Deploy com Ansible

Após a criação da infraestrutura, execute o Ansible:

```bash
cd ansible
ansible-playbook -i inventory.ini playbook.yml
```

---

## 🐳 Ambiente Local com Docker

Para rodar localmente:

```bash
docker-compose up -d
```

A aplicação ficará disponível via NGINX no `localhost` com as configurações definidas em `nginx.conf`.

---

## 🚀 CI/CD com GitHub Actions

Este projeto possui dois fluxos de trabalho automatizados:

- `pipeline-stage.yml`: para ambientes de staging
- `pipeline-production.yml`: para produção

Eles são executados automaticamente em *push* para os respectivos branches.

---

## 📦 Variáveis do Terraform

Edite o arquivo `terraform/variables.tf` para definir:

- Provedor
- Região
- Nome das instâncias
- Tags, etc.

---

## 📤 Saídas do Terraform

Veja as saídas com:

```bash
terraform output
```

---
