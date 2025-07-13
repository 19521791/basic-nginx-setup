# 🛠️ Ansible Nginx Setup

This repository provides a basic Ansible setup to configure **Nginx** servers for different environments (e.g., `development`, `staging`).  
It includes templated configuration files for multiple sites and uses standard Ansible role structure.

---

## 📂 Folder Structure

``` .
├── .gitignore
├── Makefile # (Optional) Commands shortcut
├── README.md
├── inventories/ 
  └── environment/ 
    └── hosts.ini # Define hosts ip 
├── playbook.yml # Main playbook entry 
└── roles/ 
  └── nginx/ 
    ├── handlers/ 
      └── main.yml # Handlers (e.g., reload Nginx) 
├── tasks/ 
  └── main.yml # Tasks to install & configure Nginx 
├── templates/ 
  ├── image-gallery.conf.j2 
  ├── portfolio.conf.j2 
  └── server.conf.j2 # Jinja2 templates for Nginx config 
└── vars/ 
  └── main.yml # Role variables
```


---

## 🚀 Quick Start

### 1. 🔧 Install dependencies

Make sure you have Ansible installed:

```bash
pip install ansible
```
### 2. ⚙️ Variables & Templates

Customize Nginx configuration for each site by editing:

- `roles/nginx/templates/*.j2` – Jinja2 templates for Nginx site configs

- `roles/nginx/vars/main.yml` – Site-specific variables like domain name, root path, etc.

### 3. Run

Ping all hosts to test connection:

```
ansible -i inventories/staging/hosts.ini all -m ping
```

Run the playbook:

```
ansible-playbook -i inventories/staging/hosts.ini playbook.yml
```

### 4. 🧾 Notes

- Current setup is tested on Ubuntu-based server.

- Make sure nginx is not pre-installed or conflicting before running this

### 5. 📚 Learning Goals

This repository is part of my DevOps learning journey — focusing on:

- Ansible role/playbook structure
- Automating Nginx site provisioning
- Organizing environments (e.g. staging)

### 6. 👨‍💻 Author

Douglus Nguyen
