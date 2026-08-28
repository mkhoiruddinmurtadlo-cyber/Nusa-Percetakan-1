-- Nusa Percetakan: database sinkronisasi 1 akun / 2 HP
create table if not exists public.app_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null default '{"products":[],"transactions":[]}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.app_data enable row level security;

drop policy if exists "Users can read own app data" on public.app_data;
create policy "Users can read own app data"
on public.app_data for select
to authenticated
using (auth.uid() = user_id);

drop policy if exists "Users can insert own app data" on public.app_data;
create policy "Users can insert own app data"
on public.app_data for insert
to authenticated
with check (auth.uid() = user_id);

drop policy if exists "Users can update own app data" on public.app_data;
create policy "Users can update own app data"
on public.app_data for update
to authenticated
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

-- Buat akun pertama dari Supabase Dashboard:
-- Authentication > Users > Add user.
-- Email: username@nusapercetakan.local
-- Password: buat sendiri.
-- Jika memakai username "admin", login di aplikasi cukup dengan "admin".
-- Untuk login tanpa email nyata, nonaktifkan "Confirm email" di Authentication > Providers > Email.
