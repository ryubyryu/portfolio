-- Production 카테고리에 새 항목을 추가합니다: 동원참치 : 동원이도 캔을 따! 편
-- 기존 컬럼만 사용하는 INSERT라 배포 실패 위험은 없지만, 이 SQL을 실행해야
-- 실제 사이트에 이 항목이 보여요.

insert into works (slug, title, category, year, role, client, summary, description, sort_order)
values (
  'dongwon-tuna-open', '동원참치', 'Production', 2020, 'Producer', '동원 F&B',
  '"동원이도 캔을 따!"를 콘셉트로 한 브랜드 캠페인.',
  array['동원참치 : 동원이도 캔을 따! 편'],
  100
);

update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/31.jpeg' where slug = 'dongwon-tuna-open';
update works set images = array['https://tvcf.co.kr/play/ah06169-794288'] where slug = 'dongwon-tuna-open';
