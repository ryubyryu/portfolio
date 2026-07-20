-- LG gram X CLASS101 갤러리 제목 문구 수정 (feat. 표기를 괄호로 감싸기).
-- 급하지 않아요 — 편하실 때 실행해주세요.
-- 참고: 아직 update-lg-gram-class101-gallery.sql을 실행하지 않으셨다면, 이 파일 대신
-- 그 파일을 먼저 실행해주세요 (이미 최신 heading 문구로 반영되어 있습니다).

update works
set gallery = jsonb_set(
  gallery,
  '{0,heading}',
  '"LG gram 360 x CLASS101 (feat. Libere_Nuage)"'
)
where slug = 'lg-gram-class101'
  and gallery -> 0 ->> 'heading' = 'LG gram 360 x CLASS101 feat. Libere_Nuage';
