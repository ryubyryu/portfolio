-- nike-airmax-dn, lotteria-thanks-burger, kakao-corporate-pr, noroo-poster-challenge의
-- 하단 링크 라벨에 출처(@NIKESEOUL ON INSTAGRAM / @YOUTUBE)를 추가합니다.

update works set links = '[
  {"label":"NIKE : AIRMAX Dn STYLE by KIM YOUNGJIN @NIKESEOUL ON INSTAGRAM","url":"https://www.instagram.com/p/C5fqASvR2jm/"},
  {"label":"NIKE : CHAE JONGSUK''S AIRMAX Dn STYLED BY KIM YOUNGJIN @NIKESEOUL ON INSTAGRAM","url":"https://www.instagram.com/p/C5hX_EbB2Q7/"}
]'::jsonb where slug = 'nike-airmax-dn';

update works set links = '[
  {"label":"고마운 사람에게 마음을 전하세요ㅣ롯데리아 땡스버거 @YOUTUBE","url":"https://www.youtube.com/watch?v=Vy_--uYhmwc"}
]'::jsonb where slug = 'lotteria-thanks-burger';

update works set links = '[
  {"label":"1cm² 속 보이지 않는 카카오의 노력 🔍 | 365일 24시간 카톡을 지키는 사람들 @YOUTUBE","url":"https://www.youtube.com/watch?v=ro_6M5qc604&t=41s"}
]'::jsonb where slug = 'kakao-corporate-pr';

update works set links = '[
  {"label":"노루페인트 ''포스터챌린지'' 리캡 영상 @YOUTUBE","url":"https://www.youtube.com/watch?v=Uzo8pRUjMHk"}
]'::jsonb where slug = 'noroo-poster-challenge';
