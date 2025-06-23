# Testing Instructions for EzClickVideoMaker

## Quick Start Testing

### 1. Setup
```bash
git clone <your-repo-url>
cd ezclickvideomaker
npm install
cp .env.example .env.local
# Add your Supabase credentials to .env.local
npm run dev
```

### 2. Open Application
- Navigate to `http://localhost:5173`
- Application should load with user registration form

## Core Feature Testing

### User Registration
1. Fill out the registration form with:
   - Username: test_user
   - Full Name: Test User
   - Email: test@example.com
2. Click "Get Started"
3. Should proceed to main application

### Image Upload Testing
1. Click "Click to upload images" in the first card
2. Select 1-10 image files (JPG, PNG)
3. Verify images appear as thumbnails
4. Test removing images with X button
5. Try uploading more than 10 images (should show error)

### Story Input Testing
1. Enter text in the "Tell Your Story" textarea
2. Try different story lengths
3. Verify character input works properly

### Voice Selection Testing
1. Click on voice dropdown in "Choose Your Voice" section
2. Browse available voices
3. Select different voices and languages
4. Verify selection updates properly

### Video Generation Testing
1. Complete all previous steps
2. Click "Create Video" button
3. Button should show "Creating Video..." state
4. Wait for completion (mock response)
5. Verify success/error handling

## Browser Testing

### Desktop Browsers
- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)

### Mobile Testing
- Chrome Mobile
- Safari Mobile
- Test responsive design
- Test touch interactions

## Feature-Specific Tests

### Subscription System
1. Navigate through pricing plans
2. Test modal interactions
3. Verify plan selection

### Navigation
1. Test sidebar toggle
2. Test mobile navigation
3. Verify all links work

### Error Handling
1. Test with no internet connection
2. Test with invalid inputs
3. Verify error messages display

## Performance Testing

### Build Testing
```bash
npm run build
npm run preview
```
- Verify production build works
- Check for console errors
- Test loading times

### Code Quality
```bash
npm run lint
```
- Verify no linting errors
- Check TypeScript compilation

## Expected Behavior

✅ **Working Features:**
- User registration flow
- Image upload (up to 10 files)
- Story text input
- Voice selection dropdown
- Responsive design
- Error handling and toasts
- Navigation and routing

⚠️ **Mock Features:**
- Video generation (returns mock response)
- Payment processing (UI only)
- User authentication (local state)

## Common Issues

1. **Build Errors:**
   - Ensure Node.js 18+
   - Clear node_modules and reinstall

2. **Environment Issues:**
   - Check .env.local file exists
   - Verify Supabase credentials

3. **Upload Issues:**
   - Check file types (images only)
   - Verify file size limits

## Reporting Issues

When reporting bugs, include:
- Browser and version
- Steps to reproduce
- Expected vs actual behavior
- Console error messages
- Screenshots if applicable

Contact: Ezclickvideomaker@gmail.com