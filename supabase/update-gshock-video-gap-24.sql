-- G-SHOCK ICONIC STYLES 영상 배너와 아래 그리드 사이의 간격을 24px로 다시 벌립니다.

update works set gallery = jsonb_set(gallery, '{0,marginBottom}', '24'::jsonb)
where slug = 'gshock-iconic-styles';
