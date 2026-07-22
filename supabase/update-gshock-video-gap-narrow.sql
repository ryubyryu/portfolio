-- G-SHOCK ICONIC STYLES 영상 배너와 아래 그리드 사이의 간격을 다시 좁힙니다.

update works set gallery = jsonb_set(gallery, '{0,marginBottom}', '0'::jsonb)
where slug = 'gshock-iconic-styles';
