-- lg-gram-class101, nike-runners-helping-runners, nike-air-force-1-t1,
-- kakao-corporate-pr, nike-hoshi-style-story, lg-gram-go-busan의 그리드 갤러리에
-- 8px 간격을 적용합니다.

update works set gallery = jsonb_set(gallery, '{0,gap}', '8'::jsonb)
where slug = 'lg-gram-class101';

update works set gallery = jsonb_set(
  jsonb_set(gallery, '{0,gap}', '8'::jsonb),
  '{1,gap}',
  '8'::jsonb
)
where slug = 'nike-runners-helping-runners';

update works set gallery = jsonb_set(gallery, '{0,gap}', '8'::jsonb)
where slug = 'nike-air-force-1-t1';

update works set gallery = jsonb_set(gallery, '{0,gap}', '8'::jsonb)
where slug = 'kakao-corporate-pr';

update works set gallery = jsonb_set(
  jsonb_set(gallery, '{0,gap}', '8'::jsonb),
  '{1,gap}',
  '8'::jsonb
)
where slug = 'nike-hoshi-style-story';

update works set gallery = jsonb_set(gallery, '{0,gap}', '8'::jsonb)
where slug = 'lg-gram-go-busan';
