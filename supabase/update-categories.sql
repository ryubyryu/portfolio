-- 기존에 이미 심어진 works 행들의 category 값을 새 체계로 옮기는 1회성 스크립트.
-- SQL Editor에서 실행하세요. category 컬럼만 바꾸고 다른 값은 건드리지 않습니다.

update works
set category = case category
  when 'Branding' then 'Campaign'
  when 'Web' then 'Production'
  when 'Editorial' then 'Content'
  when 'Photography' then 'Content'
  else category
end
where category in ('Branding', 'Web', 'Editorial', 'Photography');
