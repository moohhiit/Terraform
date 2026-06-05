# Terraform

> Manage cloud instances and Supabase infrastructure using Terraform configurations.

![GitHub stars](https://img.shields.io/github/stars/moohhiit/Terraform?style=for-the-badge&logo=github) ![GitHub forks](https://img.shields.io/github/forks/moohhiit/Terraform?style=for-the-badge&logo=github) ![GitHub issues](https://img.shields.io/github/issues/moohhiit/Terraform?style=for-the-badge&logo=github) ![Last commit](https://img.shields.io/github/last-commit/moohhiit/Terraform?style=for-the-badge&logo=github)

## 📑 Table of Contents

- [Description](#description)
- [Key Features](#key-features)
- [Use Cases](#use-cases)
- [Quick Start](#quick-start)
- [Project Structure](#project-structure)
- [Contributing](#contributing)

## 📝 Description

This project provides Terraform configurations designed to automate the provisioning and management of cloud infrastructure. It organizes infrastructure components into structured directories, addressing the automation of instance launches and provisioning setups. This structured approach helps ensure reproducible and maintainable cloud resources. Second, the codebase is organized into dedicated modules targeting distinct infrastructure responsibilities. These include setups for launching virtual instances, managing instance variables, handling instance provisioning steps, and configuring Supabase database infrastructure. By isolating these components, the project enables modular management of environment setups.

## ✨ Key Features

- **☁️ Supabase Infrastructure Provisioning** — Provides configurations for setting up and managing Supabase infrastructure.
- **🖥️ Automated Instance Launching** — Defines configurations to automate the launching and initial provisioning of virtual instances.
- **⚙️ Parameterized Variable Structures** — Utilizes dedicated variable files to allow customizable and flexible instance deployment configurations.

## 🎯 Use Cases

- Automating the lifecycle and provisioning of virtual machine instances using Terraform.
- Setting up the underlying cloud infrastructure required to run Supabase deployments.
- Organizing multi-component cloud infrastructure into modular, directory-based configurations.

## ⚡ Quick Start

```bash

# 1. Clone the repository
git clone https://github.com/moohhiit/Terraform.git

# See the Development Setup section below
```

## 📁 Project Structure

```
.
├── Exe1
│   └── getinfo.tf
├── LaunchedInstance
│   ├── Instance.tf
│   ├── KeyPair.tf
│   ├── SecGroup.tf
│   ├── devkey
│   ├── devkey.pub
│   ├── instanceID.tf
│   └── provider.tf
├── LaunchedInstanceProvisioning
│   ├── Instance.tf
│   ├── KeyPair.tf
│   ├── SecGroup.tf
│   ├── devkey
│   ├── devkey.pub
│   ├── instanceID.tf
│   ├── provider.tf
│   ├── vars.tf
│   └── web.sh
├── LaunchedInstanceVar
│   ├── Instance.tf
│   ├── KeyPair.tf
│   ├── SecGroup.tf
│   ├── devkey
│   ├── devkey.pub
│   ├── instanceID.tf
│   ├── provider.tf
│   └── vars.tf
└── SupabseInfra
    ├── instance.tf
    ├── keypair.tf
    ├── provider.tf
    ├── secgroup.tf
    ├── supabase
    ├── supabase.pub
    ├── supabase.sh
    └── vars.tf
```

## 👥 Contributing

Contributions are welcome! Here's the standard flow:

1. **Fork** the repository
2. **Clone** your fork: `git clone https://github.com/moohhiit/Terraform.git`
3. **Branch**: `git checkout -b feature/your-feature`
4. **Commit**: `git commit -m 'feat: add some feature'`
5. **Push**: `git push origin feature/your-feature`
6. **Open** a pull request

Please follow the existing code style and include tests for new behavior where applicable.

