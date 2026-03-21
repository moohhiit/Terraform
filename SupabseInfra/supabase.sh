#!/bin/bash
set -e

echo "🚀 Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "📦 Installing dependencies..."
sudo apt install -y curl git unzip tar docker.io docker-compose

echo "🔧 Enabling Docker service..."
sudo systemctl enable docker
sudo systemctl start docker

echo "🐳 Checking Docker installation..."
docker --version
docker-compose --version

echo "⬇️ Downloading Supabase CLI..."
curl -sLo supabase.tar.gz https://github.com/supabase/cli/releases/latest/download/supabase_linux_amd64.tar.gz

echo "📂 Extracting Supabase CLI..."
tar -xzf supabase.tar.gz

echo "📌 Moving Supabase binary to /usr/local/bin..."
sudo mv supabase /usr/local/bin/

echo "🧾 Verifying Supabase installation..."
supabase --version

echo "📁 Creating Supabase project directory..."
mkdir -p ~/supabase-project && cd ~/supabase-project

echo "⚙️ Initializing Supabase project..."
supabase init

echo "▶️ Starting Supabase services..."
supabase start

echo "✅ Supabase is running!"
echo "API: http://localhost:54321"
echo "Studio: http://localhost:54323"
echo "Postgres: localhost:54322"
