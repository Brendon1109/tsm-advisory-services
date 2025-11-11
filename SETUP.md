# Quick Setup Guide for TSM Advisory Services Website

## 🚀 Getting Started

### Step 1: Update Contact Information
Before deploying, update the contact information in `index.html`:

1. Open `index.html` in a text editor
2. Search for and replace:
   - `[Your Address Here]` → Your actual address
   - `[City, State, ZIP]` → Your city, state, and ZIP code
   - `[Your Phone Number]` → Your actual phone number
   - Update WhatsApp number in `href="https://wa.me/1234567890"`
   - Verify email address is correct

### Step 2: Create GitHub Repository

1. Go to https://github.com/Brendon1109
2. Click "New" to create a new repository
3. Name it: `tsm-advisory-services`
4. Make it public
5. Don't initialize with README (we already have one)
6. Click "Create repository"

### Step 3: Deploy to GitHub

**Option A: Using PowerShell Script (Recommended for Windows)**
1. Right-click on `deploy.ps1`
2. Select "Run with PowerShell"
3. Enter your GitHub username when prompted: `Brendon1109`

**Option B: Manual Git Commands**
```powershell
git init
git add .
git commit -m "Initial commit: TSM Advisory Services website"
git branch -M main
git remote add origin https://github.com/Brendon1109/tsm-advisory-services.git
git push -u origin main
```

### Step 4: Enable GitHub Pages

1. Go to your repository: https://github.com/Brendon1109/tsm-advisory-services
2. Click "Settings" tab
3. Scroll down to "Pages" in the left sidebar
4. Under "Source", select "Deploy from a branch"
5. Choose "main" branch and "/ (root)" folder
6. Click "Save"

### Step 5: Access Your Website

Your website will be available at:
**https://brendon1109.github.io/tsm-advisory-services**

(It may take a few minutes to become available)

## 🎨 Customization Options

### Colors
Edit `styles.css` to change colors:
- Primary blue: `#2563eb`
- Gradient: `#667eea` to `#764ba2`

### Content
- Update company description in the hero section
- Modify service descriptions
- Add testimonials or case studies
- Include company logo

### Features Already Included
- ✅ Responsive design (mobile-friendly)
- ✅ Contact form with email integration
- ✅ WhatsApp integration
- ✅ Click-to-call phone numbers
- ✅ Smooth scrolling navigation
- ✅ Professional animations
- ✅ SEO-friendly structure

## 📞 Contact Integration

The website includes:
- **Email**: Clicking email addresses opens the default email client
- **Phone**: Clicking phone numbers initiates calls on mobile devices
- **WhatsApp**: Pre-filled messages for easy customer contact
- **Contact Form**: Collects inquiry details and opens email client

## 🔧 Technical Details

- Built with vanilla HTML, CSS, and JavaScript
- No external dependencies except Font Awesome and Google Fonts
- Fast loading and optimized for all devices
- Cross-browser compatible

## 📱 Mobile Features

- Hamburger menu for mobile navigation
- Touch-friendly buttons and links
- Optimized text sizes and spacing
- Swipe-friendly service cards

## 🚀 Next Steps

1. **Test the website** locally by opening `index.html` in a browser
2. **Update contact details** with real information
3. **Deploy to GitHub** using the provided scripts
4. **Share the website URL** with clients and partners
5. **Monitor performance** and gather feedback

## 💡 Tips

- The website is designed to be professional and trustworthy
- All services are clearly displayed with modern icons
- The color scheme conveys trust and expertise
- Call-to-action buttons are strategically placed

## 🆘 Need Help?

If you encounter any issues:
1. Check that Git is installed on your computer
2. Ensure you have push access to the GitHub repository
3. Verify all contact information is correctly formatted
4. Test the website locally before deploying

Happy launching! 🎉