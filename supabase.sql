-- ExpenseFlow Pro - Final for GitHub - 1000 Users Ready
-- Run in Supabase SQL Editor

-- 1. Transactions Table (Income / Expense)
create table if not exists public.transactions (
 id uuid primary key default gen_random_uuid(),
 user_id uuid references auth.users(id) on delete cascade,
 date date not null,
 amount numeric not null,
 transaction_type text not null check (transaction_type in ('Income','Expense')),
 category text not null,
 details text,
 remarks text,
 created_at timestamptz default now()
);

-- 2. Investments Table (Gold, Bitcoin, SIP, Stocks, FD, RD)
create table if not exists public.investments (
 id uuid primary key default gen_random_uuid(),
 user_id uuid references auth.users(id) on delete cascade,
 name text not null,
 investment_type text not null,
 amount_invested numeric not null,
 current_value numeric,
 quantity numeric,
 purchase_date date,
 maturity_date date,
 expected_return numeric,
 monthly_amount numeric,
 notes text,
 created_at timestamptz default now()
);

-- Enable RLS
alter table public.transactions enable row level security;
alter table public.investments enable row level security;

-- Policies
drop policy if exists "own_transactions" on public.transactions;
create policy "own_transactions" on public.transactions for all using (auth.uid()=user_id) with check (auth.uid()=user_id);

drop policy if exists "own_investments" on public.investments;
create policy "own_investments" on public.investments for all using (auth.uid()=user_id) with check (auth.uid()=user_id);

-- Indexes for performance
create index if not exists idx_trans_user on public.transactions(user_id);
create index if not exists idx_trans_date on public.transactions(date);
create index if not exists idx_inv_user on public.investments(user_id);

-- NOTE: No need to create auth.users table - Supabase creates it automatically for login
-- Email, Password, Google login all saved in auth.users