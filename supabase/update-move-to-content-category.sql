-- 6개 항목을 Campaign에서 Content 카테고리로 이동합니다.
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works set category = 'Content' where slug in (
  'nike-air-force-1-t1',
  'nike-hoshi-style-story',
  'nike-airmax-dn',
  'lg-gram-vi-beop',
  'lg-gram-vi-beop-class',
  'gshock-iconic-styles'
);
