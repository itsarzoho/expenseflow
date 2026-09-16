# ExpenseFlow Pro - Final Updated Code for GitHub

## What Changed in This Update?
- ✅ 100% English (All Hindi removed)
- ✅ Email Login + SignUp
- ✅ Google Login (Continue with Google / Gmail Connect)
- ✅ Forgot Password + Reset via Email
- ✅ Supabase Auth (auth.users - no need to create id/password table)
- ✅ Money In / Money Out
- ✅ Investments: Gold, Bitcoin, SIP, Stocks, FD, RD (in premium file)
- ✅ GitHub + Vercel Ready
- ✅ Free for 1000 users

## Files in This ZIP
- index.html -> Main app (USE THIS FOR GITHUB - Login Fixed + Google + Forgot Password + English)
- index-with-investments-premium.html -> Premium version with Investment + Future Plans tabs (React build)
- supabase.sql -> Database schema (transactions + investments)
- vercel.json -> Vercel config
- .env.example -> Env template
- README.md -> This guide

## How to Update GitHub (2 min)
1. Download this ZIP
2. Extract
3. Go to your GitHub repo: expenseflow
4. Delete old index.html and upload new index.html from this ZIP
5. Commit changes -> Vercel auto redeploys

## Supabase Setup (Required)
1. Supabase Dashboard -> SQL Editor -> Paste supabase.sql -> Run
2. Authentication -> Providers:
   - Email -> Enable
   - Google -> Enable (add Client ID + Secret from Google Cloud Console)
3. Authentication -> URL Configuration -> Site URL = https://your-vercel-link.vercel.app
4. Settings -> API -> Copy URL + anon key -> Save in app's yellow box OR add to Vercel Env Variables

## Vercel Environment Variables
Add in Vercel -> Project -> Settings -> Environment Variables:
- VITE_SUPABASE_URL
- VITE_SUPABASE_ANON_KEY
Then Redeploy.

## Cost
- GitHub: Free
- Vercel: Free (100GB/month)
- Supabase: Free for 500MB DB + 50k users
- Play Store: $25 one-time (optional)

All free for 1000 users!