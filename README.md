# Sysadmin Final Project — Yandex Cloud + Terraform + Ansible

## Структура проекта

- `Terraform/` — манифесты для развёртывания 3 ВМ в Yandex Cloud
- `Ansible/` — playbook и роли для настройки машин

## Роли Ansible

- **common** — устанавливает hostname и стандартные пакеты (net-tools, dnsutils, wget, curl, mc, rsync)
- **proxy_nginx** — проксирующий Nginx: перенаправляет запросы с порта 3000 на порт 80 backend-машины
- **backend_nginx** — отдающий Nginx: страница "Hello from <hostname>!" с именем машины и группой

## Использование

```bash
# Terraform
cd Terraform && terraform init && terraform apply

# Ansible
cd Ansible && ansible-playbook -i inventory.ini site.yml
```

## Проверка

Открыть: `http://<IP proxy-nginx>:3000`
