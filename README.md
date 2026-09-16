# ExpenseFlow Pro - Money In + Out + Investments
Generic Expense Tracker for 1000 users, ready for Play Store.

## Features
- Money In (Salary, Freelance, Gift, etc) + Money Out (24 categories)
- Investments: Gold, Bitcoin/Crypto, SIP, Stocks, FD, RD, Property
- Future Plans: SIP calendar, FD/RD maturity tracker
- Supabase backend with RLS, 1000 users scalable
- GitHub + Vercel ready

## Setup - Supabase (2 min)
1. supabase.com -> New Project
2. SQL Editor -> Paste supabase.sql -> Run
3. Auth -> Providers -> Enable Google + Email
4. Settings -> API -> Copy URL + anon key

## GitHub Setup (2 min)
Option A - Website:
1. github.com -> New Repo -> expenseflow -> Public
2. Upload all files from this folder (drag & drop)
3. Commit

Option B - Terminal:
```bash
git clone https://github.com/YOUR_USERNAME/expenseflow.git
cd expenseflow
# copy files here
git add .
git commit -m "ExpenseFlow with Investments"
git push origin main
```

## Vercel Live (1 min) - WITHOUT GitHub also works
**With GitHub (Recommended):**
1. vercel.com -> Add New Project -> Import from GitHub -> Select expenseflow repo
2. Settings -> Environment Variables -> Add:
   - VITE_SUPABASE_URL
   - VITE_SUPABASE_ANON_KEY
3. Deploy -> Live link: https://expenseflow-xxx.vercel.app

**Without GitHub (Direct Upload):**
1. vercel.com -> New Project -> Browse -> Upload index.html
2. Deploy -> Live

Auto-deploy: Every GitHub push = auto Vercel deploy.

## Play Store Cost
- Android: $25 one-time (unlimited apps)
- iOS: $99/year
- Supabase Free: 500MB, 50k users - enough for 1000 users
- Vercel/GitHub: Free

## Files
- index.html - Main app (single file, no build needed)
- supabase.sql - Database schema
- vercel.json - Vercel config
- .env.example - Env template
- README.md - This guide