-- G-SHOCK ICONIC STYLES 영상 배너와 아래 그리드 사이의 간격을 그리드 내부 간격(8px)과 동일하게 맞춥니다.

update works set gallery = jsonb_set(gallery, '{0,marginBottom}', '8'::jsonb)
where slug = 'gshock-iconic-styles';
