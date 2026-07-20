-- 노루페인트 포스터챌린지에 갤러리 이미지(캠페인 마이크로사이트, 제작 과정, 설치 사진, 유저 포스터)를 반영합니다.
-- Supabase 대시보드 SQL Editor에서 그대로 실행하세요.

alter table works add column if not exists gallery jsonb not null default '[]'::jsonb;

update works set gallery = '[
  {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/1.avif","width":1300,"height":590},
  {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/2.avif","width":1314,"height":594},
  {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/4.avif","width":1206,"height":1752},
  {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/gallery.avif","width":1214,"height":714},
  {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/gallery2.avif","width":676,"height":676}
]'::jsonb where slug = 'noroo-poster-challenge';
