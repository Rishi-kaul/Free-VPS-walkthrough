# 🚀 Free Google Cloud RDP (Windows VPS) Setup Guide

A complete step-by-step guide to create a **free Remote Desktop (RDP) VPS** using Google Cloud Platform’s Free Tier, configure firewall rules, secure access, and optimize performance.

This repository is designed for:
- Beginners learning Cloud Infrastructure
- Students preparing for interviews
- Anyone who wants a free personal VPS for testing

---

## 📌 Features

- Create free GCP account
- Launch Windows / Linux VM
- Enable RDP (Remote Desktop)
- Configure Firewall Rules
- Secure the VM
- Automation Scripts
- Troubleshooting Guide
- Interview Q&A

---

## 🧱 Architecture Overview

User → Internet → GCP Firewall → Compute Engine VM → RDP Service

---

## 🆓 Free Tier Resources Used

- Compute Engine VM
- 1 f1-micro or e2-micro instance
- 30GB standard disk
- Static external IP

---

## 🛠 Requirements

- Google Account
- Credit/Debit Card (for verification)
- PC with Remote Desktop Client

---

## 🔹 Step 1: Create GCP Account

1. Visit: https://cloud.google.com
2. Sign up and activate Free Tier ($300 credit)
3. Open Google Cloud Console

---

## 🔹 Step 2: Create Virtual Machine

1. Go to Compute Engine → VM Instances  
2. Click Create Instance  
3. Configure:
   - Name: free-rdp
   - Region: us-central1
   - Machine type: e2-micro
   - Boot Disk:
        - Windows Server 2019 OR Ubuntu 22.04
   - Allow HTTP/HTTPS traffic

4. Click Create

---

## 🔹 Step 3: Set Windows Password

Compute Engine → VM → Set Windows Password

Save:
- Username
- Password
- External IP

---

## 🔹 Step 4: Open RDP Port (3389)

VPC Network → Firewall → Create Rule

- Name: allow-rdp
- Direction: Ingress
- Target: All instances
- Source IP: 0.0.0.0/0
- Protocols: TCP 3389

---

## 🔹 Step 5: Connect Using RDP

On Windows:

Enter VM External IP  
Enter Username & Password

---

## 🔹 Step 6: Basic Hardening (Important)

Inside VM:

- Enable Windows Firewall
- Change default username
- Set strong password
- Enable auto-updates

---

## 🔹 Step 7: Optional Linux RDP

Install Desktop:

sudo apt update
sudo apt install ubuntu-desktop -y
sudo apt install xrdp -y
sudo systemctl enable xrdp



Open Port 3389 in firewall.

---

## ⚙️ Automation

### Windows Startup Script
scripts/windows-startup.ps1



Creates user, enables RDP, configures firewall.

### Linux Startup Script
scripts/linux-startup.sh

Installs desktop and RDP automatically.

---

## 🔐 Security Best Practices

- Restrict firewall to your IP
- Disable password login (Linux)
- Enable 2FA on Google Account
- Take snapshots
- Monitor billing

More in: docs/security-best-practices.md

---

## 🧠 Interview Talking Points

- Difference between VM and VPS
- What is firewall rule?
- What is static IP?
- How cloud free tier works
- How to secure exposed services
- RDP vs SSH

---

## ❓ Common Interview Questions

**Q: Why choose e2-micro?**  
Low-cost, free-tier eligible, enough for testing.

**Q: How do you secure RDP?**  
Restrict IP, strong passwords, firewall, VPN.

**Q: What happens if free tier ends?**  
VM stops or billing starts.

---

## 📜 License

MIT License

---

## ⭐ Star this repo if helpful!
