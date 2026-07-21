-- Client 표기 통일: "나이키 코리아" → "나이키코리아" (붙여쓰기)
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works set client = '나이키코리아' where slug in (
  'nike-worldcup-2022',
  'nike-runners-helping-runners',
  'nike-air-force-1-t1',
  'nike-hoshi-style-story',
  'nike-airmax-dn'
);
