# Bob - CI/CD Pipeline Management System [WIP]

A centralized platform for managing CI/CD pipelines across GitHub Actions, Jenkins, Codemagic, and Fastlane, built with Serverpod.

## Features

- **Multi-Platform Support**: GitHub Actions, Jenkins, Codemagic, Fastlane
- **Pipeline Configuration**: Upload, manage, and version control CI/CD configs
- **Deployment Management**: Automated deployments to AWS and GCP
- **Analytics Dashboard**: Monitor pipeline performance and deployment metrics
- **Mobile & Web Apps**: Flutter-based interfaces for pipeline management

## Quick Start

### Prerequisites
- Dart SDK 3.5.0+
- Flutter 3.24.0+ (via FVM)
- Docker
- PostgreSQL 13+

### Setup

```bash
# Clone and setup
git clone <repository-url>
cd bob_app

# Install tools
dart pub global activate fvm melos
fvm install 3.24.0 && fvm use 3.24.0
melos bootstrap

# Start database
cd apps/bob_be/bob_be_server
docker compose up -d

# Generate code and run migrations
melos run generate:all
melos run dev:server-migrate

# Start servers
melos run dev:server-run-with-migrations  # Backend
melos run dev:frontend                     # Frontend
```

Access at:
- **API**: http://localhost:8080
- **Web App**: http://localhost:3000

## Configuration

Create `bob_be_server/config/passwords.yaml`:
```yaml
development:
  database: 'your-db-password'
production:
  database: 'your-prod-password'
```

## Deployment

### Google Cloud Platform
```bash
cd apps/bob_be/bob_be_server/deploy/gcp/terraform_gce
# Edit config.auto.tfvars
terraform init && terraform apply
```

### GitHub Actions
Push to `deployment-gcp-production` or `deployment-gcp-staging` branch

## Development

### Key Commands
```bash
melos run generate:all              # Generate Serverpod code
melos run dev:server-run           # Start backend
melos run dev:frontend             # Start frontend  
melos run dev:server-migrate       # Create DB migration
```

### Project Structure
```
bob_app/
├── apps/bob_be/           # Serverpod backend + Flutter mobile
├── apps/bob_fe/           # Flutter web frontend
└── packages/              # Shared packages
```
