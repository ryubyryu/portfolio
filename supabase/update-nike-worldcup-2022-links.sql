-- NIKE World Cup 2022에 TVCF 영상 링크 3개를 추가합니다.
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works set links = '[
  {"label":"나이키 에디토리얼 보기","url":"https://www.nike.com/kr/a/ho22-football-community-editorial"},
  {"label":"NIKE : 너만의 무늬 우리의 무기 - CODE KUNST 편","url":"https://tvcf.co.kr/play/bh01715-915419"},
  {"label":"NIKE : 너만의 무늬 우리의 무기 - 3인 편","url":"https://tvcf.co.kr/play/ah01624-915418"},
  {"label":"NIKE : 너만의 무늬 우리의 무기 - HWANG HEECHAN 편","url":"https://tvcf.co.kr/play/bh01351-915415"}
]'::jsonb where slug = 'nike-worldcup-2022';
