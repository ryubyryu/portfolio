-- Supabase 프로젝트를 만든 뒤 SQL Editor에서 실행하세요.
-- lib/works.ts의 Work 타입과 1:1로 대응하도록 설계했습니다.

create table if not exists works (
  id uuid primary key default gen_random_uuid(),
  slug text unique not null,
  title text not null,
  category text not null,
  year int not null,
  role text not null,
  client text,
  summary text not null,
  description text[] not null default '{}',
  cover_image text,
  images text[] not null default '{}',
  links jsonb not null default '[]'::jsonb,
  stats jsonb not null default '[]'::jsonb,
  sort_order int not null default 0,
  created_at timestamptz not null default now()
);

alter table works enable row level security;

-- 누구나 목록/상세를 읽을 수 있도록 허용
create policy "Works are publicly readable"
  on works for select
  using (true);

-- 쓰기는 인증된 관리자만 (Supabase Auth 연결 후 조건을 더 좁혀도 됩니다)
create policy "Only authenticated users can modify works"
  on works for all
  using (auth.role() = 'authenticated')
  with check (auth.role() = 'authenticated');

-- 작업 이미지 업로드용 버킷 (Storage > New bucket에서 "work-images"로 생성,
-- public read 허용)
