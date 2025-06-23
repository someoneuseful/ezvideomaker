# Deployment Guide for EzClickVideoMaker

## Prerequisites

- Supabase project set up with database tables
- Domain name configured (ezclickvideomaker.com)
- SSL certificate for HTTPS
- Environment variables configured

## Supabase Setup

### 1. Database Schema

Create the following tables in your Supabase project:

```sql
-- Users table (extends Supabase auth.users)
CREATE TABLE public.profiles (
  id UUID REFERENCES auth.users ON DELETE CASCADE,
  email TEXT,
  full_name TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  PRIMARY KEY (id)
);

-- Subscriptions table
CREATE TABLE public.subscriptions (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id UUID REFERENCES auth.users ON DELETE CASCADE,
  plan_type TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'active',
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  expires_at TIMESTAMP WITH TIME ZONE
);

-- Videos table
CREATE TABLE public.videos (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id UUID REFERENCES auth.users ON DELETE CASCADE,
  title TEXT,
  story TEXT,
  voice_id TEXT,
  status TEXT DEFAULT 'processing',
  video_url TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);
```

### 2. Storage Buckets

Create storage buckets:
- `user-images` - for uploaded photos
- `generated-videos` - for processed videos

### 3. Row Level Security (RLS)

Enable RLS on all tables and create appropriate policies.

## Deployment Options

### Option 1: Vercel (Recommended)

1. Connect your GitHub repository to Vercel
2. Configure environment variables in Vercel dashboard
3. Deploy automatically on push to main branch

### Option 2: Netlify

1. Connect repository to Netlify
2. Set build command: `npm run build`
3. Set publish directory: `dist`
4. Configure environment variables

### Option 3: Traditional Hosting

1. Build the project: `npm run build`
2. Upload `dist` folder to your web server
3. Configure web server for SPA routing

## Environment Variables for Production

```
VITE_SUPABASE_URL=https://your-project.supabase.co
VITE_SUPABASE_ANON_KEY=your-anon-key
VITE_APP_NAME=EzClickVideoMaker
VITE_APP_URL=https://ezclickvideomaker.com
VITE_SUPPORT_EMAIL=Ezclickvideomaker@gmail.com
```

## Post-Deployment Checklist

- [ ] SSL certificate is active
- [ ] Domain redirects to HTTPS
- [ ] All environment variables are set
- [ ] Supabase connection is working
- [ ] User registration/login works
- [ ] File uploads work
- [ ] Email notifications work
- [ ] Payment processing works (if implemented)
- [ ] Analytics tracking works (if implemented)

## Monitoring and Maintenance

- Monitor Supabase usage and limits
- Set up error tracking (Sentry recommended)
- Monitor application performance
- Regular security updates
- Backup database regularly

## Support

For deployment issues, contact: Ezclickvideomaker@gmail.com