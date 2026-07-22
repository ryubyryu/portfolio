-- LG gram GO : AI 상상여행사 첫 3x3 이미지 그리드의 이미지 간격을 8px로 넓힙니다.
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works set gallery = jsonb_set(
  gallery,
  '{0,gap}',
  '8'::jsonb
)
where slug = 'lg-gram-go-ai-travel';
