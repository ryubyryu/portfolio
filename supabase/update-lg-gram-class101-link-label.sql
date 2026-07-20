-- LG gram X CLASS101 링크 라벨을 "LG그램 360 클래스 바로가기"로 수정합니다.
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works
set links = jsonb_set(
  links,
  '{0,label}',
  '"LG그램 360 클래스 바로가기"'
)
where slug = 'lg-gram-class101'
  and links -> 0 ->> 'label' = 'EVENT MICROSITE 바로가기';
