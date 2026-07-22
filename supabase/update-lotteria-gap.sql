-- 롯데리아 땡스버거 3x3 그리드, TEASER POSTER, DIGITAL CAMPAIGN MICROSITE 필름스트립에 8px 간격을 적용합니다.

update works set gallery = jsonb_set(
  jsonb_set(
    jsonb_set(gallery, '{0,gap}', '8'::jsonb),
    '{1,gap}',
    '8'::jsonb
  ),
  '{2,gap}',
  '8'::jsonb
)
where slug = 'lotteria-thanks-burger';
