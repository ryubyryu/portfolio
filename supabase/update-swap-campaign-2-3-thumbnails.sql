-- work-campaign/2.avif, 3.avif 매칭 수정 (lg-gram-class101 <-> nike-worldcup-2022 스왑).
-- 참고: update-campaign-content-thumbnails.sql을 아직 실행 안 하셨다면 그 파일을 먼저 실행해주세요.
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/3.avif' where slug = 'lg-gram-class101';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/2.avif' where slug = 'nike-worldcup-2022';
