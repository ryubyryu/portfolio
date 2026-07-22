-- LG gram VI법 CLASS EP01~03 갤러리 이미지 간격을 8px로 넓힙니다.

update works set gallery = jsonb_set(
  jsonb_set(
    jsonb_set(gallery, '{0,gap}', '8'::jsonb),
    '{1,gap}',
    '8'::jsonb
  ),
  '{2,gap}',
  '8'::jsonb
)
where slug = 'lg-gram-vi-beop-class';
