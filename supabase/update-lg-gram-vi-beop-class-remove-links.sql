-- LG gram VI법 CLASS 하단 링크 목록을 제거합니다 (피처 이미지 클릭으로 대체됨).

update works set links = '[]'::jsonb where slug = 'lg-gram-vi-beop-class';
