# TSM Advisory Services Website Deployment Script (PowerShell)
# This script helps deploy the website to GitHub Pages

Write-Host "🚀 TSM Advisory Services Website Deployment" -ForegroundColor Cyan
Write-Host "===========================================" -ForegroundColor Cyan

# Check if git is installed
try {
    git --version | Out-Null
    Write-Host "✅ Git is installed" -ForegroundColor Green
} catch {
    Write-Host "❌ Git is not installed. Please install Git first." -ForegroundColor Red
    Write-Host "Download from: https://git-scm.com/download/win" -ForegroundColor Yellow
    exit 1
}

# Initialize git repository if not already initialized
if (-not (Test-Path ".git")) {
    Write-Host "📦 Initializing Git repository..." -ForegroundColor Yellow
    git init
}

# Add all files
Write-Host "📁 Adding files to Git..." -ForegroundColor Yellow
git add .

# Commit changes
Write-Host "💾 Committing changes..." -ForegroundColor Yellow
git commit -m "Initial commit: TSM Advisory Services website"

# Add remote origin
Write-Host "🔗 Setting up GitHub remote..." -ForegroundColor Yellow
$githubUsername = Read-Host "Enter your GitHub username"

# Check if remote already exists
$remoteExists = git remote get-url origin 2>$null
if ($remoteExists) {
    Write-Host "⚠️ Remote origin already exists. Removing and re-adding..." -ForegroundColor Yellow
    git remote remove origin
}

git remote add origin "https://github.com/$githubUsername/tsm-advisory-services.git"

# Create main branch if needed
git branch -M main

# Push to GitHub
Write-Host "⬆️ Pushing to GitHub..." -ForegroundColor Yellow
try {
    git push -u origin main
    Write-Host "✅ Successfully pushed to GitHub!" -ForegroundColor Green
} catch {
    Write-Host "❌ Error pushing to GitHub. Make sure:" -ForegroundColor Red
    Write-Host "   1. You have created the repository on GitHub" -ForegroundColor Yellow
    Write-Host "   2. You have the correct permissions" -ForegroundColor Yellow
    Write-Host "   3. You are logged into Git" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "✅ Deployment completed!" -ForegroundColor Green
Write-Host ""
Write-Host "📋 Next steps:" -ForegroundColor Cyan
Write-Host "1. Go to https://github.com/$githubUsername/tsm-advisory-services" -ForegroundColor White
Write-Host "2. Go to Settings > Pages" -ForegroundColor White
Write-Host "3. Select 'Deploy from a branch'" -ForegroundColor White
Write-Host "4. Choose 'main' branch and '/ (root)' folder" -ForegroundColor White
Write-Host "5. Click Save" -ForegroundColor White
Write-Host ""
Write-Host "🌐 Your website will be available at:" -ForegroundColor Cyan
Write-Host "https://$githubUsername.github.io/tsm-advisory-services" -ForegroundColor Green
Write-Host ""
Write-Host "⚠️ Don't forget to:" -ForegroundColor Yellow
Write-Host "- Update contact information in index.html" -ForegroundColor White
Write-Host "- Replace placeholder text with actual company details" -ForegroundColor White
Write-Host "- Add your company logo if available" -ForegroundColor White

Write-Host ""
Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")