-- 노루페인트 포스터챌린지에 stats(방문자/참여자/수상)와 새 링크를 반영합니다.
-- Supabase 대시보드 SQL Editor에서 그대로 실행하세요.

alter table works add column if not exists stats jsonb not null default '[]'::jsonb;

update works set links = '[{"label":"노루페인트 ''포스터챌린지'' 리캡 영상","url":"https://www.youtube.com/watch?v=Uzo8pRUjMHk"}]'::jsonb where slug = 'noroo-poster-challenge';

update works set stats = '[
  {"label":"Visits","value":"43K+"},
  {"label":"Participants","value":"10K+"},
  {"label":"Award","value":"A.N.D. AWARD GRAND PRIX 2022 (디지털 광고 캠페인 부문 이벤트 분야)"}
]'::jsonb where slug = 'noroo-poster-challenge';
