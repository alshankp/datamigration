# 🧰 Magento Database Migration and Backup Using Ansible, Docker, and Multipass VM (LEMP Stack)

This project automates the **export**, **transfer**, **import**, and **backup** of a Magento MySQL database using:

- 🐳 Docker (Magento container)
- 🧑‍💻 Ansible
- 🧱 Multipass Ubuntu VM (with LEMP stack)
- 🔒 SSH (for remote automation)

It’s **designed for beginners** with step-by-step instructions to get started from scratch.

---

## 🚀 What You’ll Achieve

✅ Export Magento DB from Docker on **Local Machine**  
✅ Transfer DB dump to **Multipass VM**  
✅ Import it into MySQL (on VM)  
✅ Backup the DB again from VM and copy it back to **Local Machine**

---

## 📦 Tools Required on Local Machine

| Tool      | Purpose                            |
|-----------|-------------------------------------|
| Docker    | Runs the Magento MySQL container    |
| Multipass | Creates the Ubuntu VM               |
| Ansible   | Automates provisioning & DB tasks   |
| SSH       | Enables secure access to VM         |
| Git       | (Optional) Version control          |

---

## 🏗 Folder & File Setup

### 📍 On Local Machine

**Main project folder:**

```bash
/home/alshan/work/ansible/lemp_poc



📁 Folder Structure
🔹 Local Host (Ubuntu - /home/alshan/work/ansible/lemp_poc/)

/home/alshan/work/ansible/lemp_poc/
├── backup_magento.yml          # ▶️ Playbook 2: Backup DB from VM
├── export_magento_db.sh        # 🐳 Dumps Magento DB from Docker and transfers to VM
├── fetch_backup_from_vm.sh     # 📥 Fetches backup .gz from VM to local
├── hosts.ini                   # 📋 Ansible inventory (points to VM)
├── import_magento.yml          # ▶️ Playbook 1: Imports Docker DB into VM MySQL
├── index.php                   # 🌐 Sample PHP page for Nginx
├── lemp.yml                    # 🧱 Sets up LEMP stack in VM
├── nginx_default.conf          # ⚙️ Nginx config file for PHP site
└── README.md                   # 📘 Project documentation (you just created)

📁 Additional folder on local:
├── /home/alshan/backup/
│   └── magento_warden.sql.gz   # 📦 DB backup fetched from VM (after Playbook 2)



Multipass VM (lemp) — Ubuntu 24.04
/home/ubuntu/
└── work/
    └── ansible/
        └── lemp_poc/

/tmp/

