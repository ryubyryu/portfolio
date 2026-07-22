-- NIKE : AIRMAX Dn 두 갤러리 그리드의 이미지 간격을 8px로 넓힙니다.
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works set gallery = jsonb_set(
  jsonb_set(gallery, '{0,gap}', '8'::jsonb),
  '{1,gap}',
  '8'::jsonb
)
where slug = 'nike-airmax-dn';
