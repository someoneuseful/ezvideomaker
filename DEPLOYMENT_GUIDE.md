# Deployment Guide for EzClickVideoMaker

## Prerequisites

- Node.js 18+ and npm
- Git repository access
- Supabase account with project setup

## Environment Setup

1. **Clone the repository:**
   ```bash
   git clone <your-github-repo-url>
   cd ezclickvideomaker
   ```

2. **Install dependencies:**
   ```bash
   npm install
   ```

3. **Environment variables:**
   Create `.env.local` file:
   ```
   VITE_SUPABASE_URL=your_supabase_project_url
   VITE_SUPABASE_ANON_KEY=your_supabase_anon_key
   ```

## Local Development

```bash
# Start development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## Production Deployment

### Option 1: Vercel (Recommended)
1. Connect your GitHub repository to Vercel
2. Add environment variables in Vercel dashboard
3. Deploy automatically on push

### Option 2: Netlify
1. Connect repository to Netlify
2. Build command: `npm run build`
3. Publish directory: `dist`
4. Add environment variables

### Option 3: Manual Deployment
```bash
npm run build
# Upload dist/ folder to your hosting provider
```

## Testing the Application

1. **Local Testing:**
   - Run `npm run dev`
   - Open `http://localhost:5173`
   - Test user registration
   - Test image upload
   - Test video generation

2. **Production Testing:**
   - Test on multiple devices
   - Verify all features work
   - Check responsive design
   - Test payment integration

## Troubleshooting

- **Build errors:** Check Node.js version (18+)
- **Supabase errors:** Verify environment variables
- **Upload issues:** Check file size limits
- **Voice selection:** Ensure API endpoints are accessible

## Support

For deployment issues, contact: Ezclickvideomaker@gmail.com