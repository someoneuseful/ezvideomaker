# Quick Start Guide - EzClickVideoMaker

## 🚀 Get Running in 5 Minutes

### 1. Clone & Setup
```bash
git clone <your-repo-url>
cd ezclickvideomaker
npm install
```

### 2. Environment Setup
```bash
cp .env.example .env.local
```
Edit `.env.local` and add your Supabase credentials:
```
VITE_SUPABASE_URL=your_supabase_url
VITE_SUPABASE_ANON_KEY=your_supabase_key
```

### 3. Run Application
```bash
npm run dev
```
Open http://localhost:5173

### 4. Test Core Features
1. **Register:** Fill user form and click "Get Started"
2. **Upload Images:** Click upload area, select 1-10 images
3. **Add Story:** Type your story in the text area
4. **Select Voice:** Choose from dropdown menu
5. **Generate:** Click "Create Video" button

## 📱 What Works
- ✅ User registration flow
- ✅ Multi-image upload (drag & drop)
- ✅ Story text input
- ✅ Voice selection (28+ voices, 9 languages)
- ✅ Responsive design (mobile/desktop)
- ✅ Error handling & notifications
- ✅ Subscription UI
- ✅ Analytics tracking

## 🔧 Build Commands
```bash
npm run dev      # Development server
npm run build    # Production build
npm run preview  # Preview production build
npm run lint     # Code linting
```

## 🌐 Deploy Options
- **Vercel:** Connect GitHub repo, auto-deploy
- **Netlify:** Build: `npm run build`, Dir: `dist`
- **Manual:** Upload `dist/` folder after build

## 📧 Support
Ezclickvideomaker@gmail.com

---
**Ready to test!** The app is fully functional for development and testing.