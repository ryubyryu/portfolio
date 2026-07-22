-- G-SHOCK ICONIC STYLES 단락을 두 개로 나누고(동일한 헤딩 2개), 하단 링크 목록을 제거합니다.

update works set gallery = jsonb_set(
  jsonb_set(gallery, '{0,heading}', '"G-SHOCK ICONIC STYLES (Feat. LEE SEUNGHYUB)"'::jsonb),
  '{2,heading}',
  '"G-SHOCK ICONIC STYLES (Feat. LEE SEUNGHYUB)"'::jsonb
)
where slug = 'gshock-iconic-styles';

update works set links = '[]'::jsonb where slug = 'gshock-iconic-styles';
