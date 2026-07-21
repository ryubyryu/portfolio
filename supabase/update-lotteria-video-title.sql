-- 롯데리아 땡스버거 영상 링크 제목 수정.
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works set links = '[
  {"label":"고마운 사람에게 마음을 전하세요ㅣ롯데리아 땡스버거","url":"https://www.youtube.com/watch?v=Vy_--uYhmwc"}
]'::jsonb where slug = 'lotteria-thanks-burger';
