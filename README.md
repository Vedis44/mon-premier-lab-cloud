# ☁️ Mon premier lab Cloud

[![Test de l'Infrastructure Docker](https://github.com/Vedis44/mon-premier-lab-cloud/actions/workflows/ci.yml/badge.svg)](https://github.com/Vedis44/mon-premier-lab-cloud/actions/workflows/ci.yml)

Projet d'initiation à l'Infrastructure as Code (IaC) et à l'automatisation CI/CD. L'objectif de ce dépôt est de valider les concepts fondamentaux d'administration système, de conteneurisation et d'automatisation avant d'aborder des architectures Cloud plus complexes.

## 🛠️ Stack Technique

- **Conteneurisation :** Docker & Docker Compose
- **Infrastructure as Code (IaC) :** Terraform (Provider Docker local)
- **Intégration Continue (CI) :** GitHub Actions

## 📂 Architecture du dépôt

- `serveur-web-nginx/` : Déploiement d'un serveur web léger via `docker-compose`.
- `infra-terraform/` : Provisioning automatisé de conteneurs Nginx en utilisant le langage déclaratif HCL (Terraform).
- `.github/workflows/` : Pipeline d'intégration continue validant l'intégrité du code (Linting et tests de démarrage) à chaque push.

## 🚀 Guide d'utilisation (Déploiement Terraform)

Voici comment déployer l'infrastructure localement sur votre machine.

### Prérequis
- Docker et Terraform installés sur la machine hôte.

### Commandes de déploiement

1. **Cloner le dépôt et se placer dans le répertoire cible :**
   ```bash
   git clone git@github.com:Vedis44/mon-premier-lab-cloud.git
   cd mon-premier-lab-cloud/infra-terraform
   ```

2. **Initialiser l'environnement Terraform :**
   ```bash
   terraform init
   ```

3. **Vérifier le plan d'exécution :**
   ```bash
   terraform plan
   ```

4. **Appliquer l'infrastructure :**
   ```bash
   terraform apply
   ```
   *(Le serveur web sera accessible sur `http://localhost:8081`)*

### Nettoyage

Pour détruire les ressources créées et libérer l'environnement local :
```bash
terraform destroy
```
