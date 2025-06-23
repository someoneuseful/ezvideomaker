# 🚀 EzClickVideoMaker - AI Video Creation App

**Transform your images and stories into engaging videos with AI-powered voice narration!**

## 🎯 INSTANT LAUNCH

### Option 1: One-Click Launch
**Linux/Mac:**
```bash
chmod +x START.sh
./START.sh
```

**Windows:**
```cmd
START.bat
```

### Option 2: Manual Launch
```bash
npm install
npm run dev
```

**🌐 Open:** http://localhost:5173

## ✨ Features

- 📸 **Multi-Image Upload** - Drag & drop 1-10 images
- 🎙️ **28+ AI Voices** - 9 languages available
- 📝 **Story Integration** - Add custom narratives
- 📱 **Mobile Responsive** - Works on all devices
- 🔐 **User Management** - Registration & profiles
- 💳 **Subscription Plans** - Tiered pricing
- 📊 **Analytics Dashboard** - Usage tracking
- 🎨 **Modern UI** - Clean, intuitive design

## 🛠️ Tech Stack

- **Frontend:** React 18 + TypeScript + Vite
- **UI:** Tailwind CSS + Shadcn/ui
- **Backend:** Supabase (Database + Edge Functions)
- **State:** React Query + Context API
- **Routing:** React Router v6
- **Forms:** React Hook Form + Zod

## 📦 Quick Commands

```bash
npm run dev      # Start development server
npm run build    # Build for production
npm run preview  # Preview production build
npm run lint     # Run ESLint
```

## 🚀 Deployment

### Vercel (Recommended)
1. Connect GitHub repository
2. Auto-deploy on push
3. Environment variables in dashboard

### Netlify
1. Build command: `npm run build`
2. Publish directory: `dist`
3. Add environment variables

### Manual
1. Run `npm run build`
2. Upload `dist/` folder to web server

## 🔧 Environment Setup

1. Copy `.env.example` to `.env.local`
2. Add your Supabase credentials:
```env
VITE_SUPABASE_URL=your_supabase_url
VITE_SUPABASE_ANON_KEY=your_supabase_key
```

## 📱 App Flow

1. **Register** - Fill user form
2. **Upload** - Add 1-10 images
3. **Story** - Write your narrative
4. **Voice** - Select AI voice
5. **Generate** - Create video
6. **Download** - Get your video

## 🎨 UI Components

- Modern card-based layout
- Drag & drop file uploads
- Responsive image galleries
- Voice selection dropdown
- Progress indicators
- Toast notifications
- Modal dialogs
- Loading states

## 📊 Analytics

- User registration tracking
- Video generation metrics
- Feature usage analytics
- Performance monitoring
- Error tracking

## 🔐 Security

- Row Level Security (RLS)
- JWT authentication
- CORS protection
- Input validation
- XSS prevention

## 📞 Support

**Email:** Ezclickvideomaker@gmail.com

## 📄 Documentation

- [Quick Start Guide](QUICK_START.md)
- [Launch Codes](LAUNCH_CODES.md)
- [Deployment Guide](DEPLOYMENT_GUIDE.md)
- [Testing Instructions](TESTING_INSTRUCTIONS.md)
- [GitHub Setup](GITHUB_SETUP.md)

## 🏗️ Project Structure

```
src/
├── components/          # Reusable UI components
├── pages/              # Route components
├── hooks/              # Custom React hooks
├── lib/                # Utilities & configurations
├── contexts/           # React contexts
└── types/              # TypeScript definitions
```

## 🎯 Status

- ✅ **Frontend:** Complete & Functional
- ✅ **Backend:** Supabase Integrated
- ✅ **Database:** Tables Created
- ✅ **Functions:** Edge Functions Deployed
- ✅ **UI:** Responsive Design
- ✅ **Testing:** Ready for QA

---

**🚀 Ready to Launch!** The app is fully functional and ready for testing and deployment.