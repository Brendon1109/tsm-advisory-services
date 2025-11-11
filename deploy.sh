#!/bin/bash

# TSM Advisory Services Website Deployment Script
# This script helps deploy the website to GitHub Pages

echo "🚀 TSM Advisory Services Website Deployment"
echo "==========================================="

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Initialize git repository if not already initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
fi

# Add all files
echo "📁 Adding files to Git..."
git add .

# Commit changes
echo "💾 Committing changes..."
git commit -m "Initial commit: TSM Advisory Services website"

# Add remote origin (update this with your GitHub username)
echo "🔗 Adding GitHub remote..."
read -p "Enter your GitHub username: " github_username
git remote add origin https://github.com/${github_username}/tsm-advisory-services.git

# Create main branch if needed
git branch -M main

# Push to GitHub
echo "⬆️ Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Deployment completed successfully!"
echo ""
echo "📋 Next steps:"
echo "1. Go to https://github.com/${github_username}/tsm-advisory-services"
echo "2. Go to Settings > Pages"
echo "3. Select 'Deploy from a branch'"
echo "4. Choose 'main' branch and '/ (root)' folder"
echo "5. Click Save"
echo ""
echo "🌐 Your website will be available at:"
echo "https://${github_username}.github.io/tsm-advisory-services"
echo ""
echo "⚠️ Don't forget to:"
echo "- Update contact information in index.html"
echo "- Replace placeholder text with actual company details"
echo "- Add your company logo if available"