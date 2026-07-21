-- NIKE Runners Helping Runners: 두번째 갤러리 섹션 제목 수정.
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works set gallery = jsonb_set(
  gallery,
  '{1,heading}',
  '"NIKE A RUNNER GUIDE (with. RYU JUNYEOL)"'
)
where slug = 'nike-runners-helping-runners';
