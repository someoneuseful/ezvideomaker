# GitHub Repository Setup Guide

## Repository Creation

1. **Create New Repository on GitHub:**
   - Go to https://github.com/new
   - Repository name: `ezclickvideomaker`
   - Description: `AI-powered video creation app with photo upload and voice narration`
   - Set to Public or Private as needed
   - Don't initialize with README (we have existing files)

2. **Connect Local Repository:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit: EzClickVideoMaker app"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/ezclickvideomaker.git
   git push -u origin main
   ```

## Repository Structure

Your repository will contain:

```
ezclickvideomaker/
├── public/                 # Static assets
├── src/
│   ├── components/        # React components
│   ├── pages/            # Page components
│   ├── contexts/         # React contexts
│   ├── hooks/            # Custom hooks
│   ├── lib/              # Utilities
│   └── main.tsx          # App entry point
├── package.json          # Dependencies
├── vite.config.ts        # Build configuration
├── tailwind.config.ts    # Styling configuration
├── README.md             # Project documentation
├── DEPLOYMENT_GUIDE.md   # Deployment instructions
├── TESTING_INSTRUCTIONS.md # Testing guide
└── GITHUB_SETUP.md       # This file
```

## Environment Variables Setup

1. **Create Repository Secrets:**
   - Go to Settings > Secrets and variables > Actions
   - Add these secrets:
     - `VITE_SUPABASE_URL`: Your Supabase project URL
     - `VITE_SUPABASE_ANON_KEY`: Your Supabase anonymous key

2. **Local Development:**
   ```bash
   cp .env.example .env.local
   # Edit .env.local with your credentials
   ```

## GitHub Actions (Optional)

Create `.github/workflows/deploy.yml` for automatic deployment:

```yaml
name: Deploy to Production

on:
  push:
    branches: [ main ]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-node@v3
        with:
          node-version: '18'
      - run: npm install
      - run: npm run build
        env:
          VITE_SUPABASE_URL: ${{ secrets.VITE_SUPABASE_URL }}
          VITE_SUPABASE_ANON_KEY: ${{ secrets.VITE_SUPABASE_ANON_KEY }}
```

## Branch Protection (Recommended)

1. Go to Settings > Branches
2. Add rule for `main` branch:
   - Require pull request reviews
   - Require status checks to pass
   - Require branches to be up to date

## Collaboration Setup

1. **Add Collaborators:**
   - Settings > Collaborators
   - Add team members with appropriate permissions

2. **Issue Templates:**
   Create `.github/ISSUE_TEMPLATE/bug_report.md`
   Create `.github/ISSUE_TEMPLATE/feature_request.md`

## Repository Settings

### General
- Enable Issues
- Enable Projects
- Enable Wiki (optional)
- Enable Discussions (optional)

### Security
- Enable Dependabot alerts
- Enable Dependabot security updates
- Enable Dependabot version updates

## Quick Commands

```bash
# Clone repository
git clone https://github.com/YOUR_USERNAME/ezclickvideomaker.git

# Setup for development
cd ezclickvideomaker
npm install
cp .env.example .env.local
# Edit .env.local with your Supabase credentials
npm run dev

# Build for production
npm run build

# Run tests
npm run lint
```

## Next Steps

1. **Test the Application:**
   - Follow TESTING_INSTRUCTIONS.md
   - Verify all features work

2. **Deploy to Production:**
   - Follow DEPLOYMENT_GUIDE.md
   - Choose hosting platform (Vercel, Netlify, etc.)

3. **Monitor and Maintain:**
   - Set up error tracking
   - Monitor performance
   - Regular dependency updates

## Support

For GitHub setup issues:
- Check GitHub documentation
- Contact: Ezclickvideomaker@gmail.com
- Visit: https://ezclickvideomaker.com