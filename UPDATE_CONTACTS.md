# Contact Information Update Instructions

## 📋 Where to Update Contact Details

You need to update the following placeholders in `index.html` with the actual contact information from your PDF:

### 1. Address (Lines 247-248)
**Find this:**
```html
<p>[Your Address Here]<br>[City, State, ZIP]</p>
```
**Replace with your actual address from the PDF**

### 2. Phone Number (Lines 256-257)
**Find this:**
```html
<a href="tel:+1234567890">[Your Phone Number]</a>
```
**Replace with:**
- `+1234567890` → your actual phone number (for tel: link)
- `[Your Phone Number]` → your actual phone number (display text)

### 3. WhatsApp Number (Line 275)
**Find this:**
```html
<a href="https://wa.me/1234567890" target="_blank">Message Us</a>
```
**Replace `1234567890` with your actual WhatsApp number**

### 4. Email (Optional - Line 264)
**Currently set to:**
```html
<a href="mailto:info@tsmadvisory.com">info@tsmadvisory.com</a>
```
**Update if you have a different email address**

### 5. Footer Contact Information (Around lines 335-340)
**Find and update these placeholders:**
```html
<p><i class="fas fa-phone"></i> [Your Phone Number]</p>
<p><i class="fas fa-envelope"></i> info@tsmadvisory.com</p>
<p><i class="fas fa-map-marker-alt"></i> [Your Address]</p>
```

## 🔍 How to Find and Replace

1. Open `index.html` in a text editor (like Notepad++, VS Code, or even Notepad)
2. Use Ctrl+F to search for the bracketed placeholders: `[Your Address Here]`, `[Your Phone Number]`, etc.
3. Replace each placeholder with the actual information from your PDF
4. Save the file

## 📱 Phone Number Format Tips

- For `tel:` links, use international format: `+1234567890` or `+27123456789`
- For WhatsApp links, use the same format without the `+`: `1234567890`
- For display text, you can format it however you prefer: `(123) 456-7890` or `+1 234 567 8900`

## ✅ Quick Checklist

- [ ] Update address in contact section
- [ ] Update phone number in contact section
- [ ] Update WhatsApp number
- [ ] Update phone number in footer
- [ ] Update address in footer
- [ ] Verify email address is correct
- [ ] Test all links work correctly

Once you've updated these details, your website will have all the correct contact information from your PDF!