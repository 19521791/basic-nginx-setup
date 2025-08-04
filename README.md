# 🛠️ Ansible Nginx Setup

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
