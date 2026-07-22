-- LG gram VI법 하단 링크 목록을 제거합니다 (썸네일 클릭으로 대체됨).

update works set links = '[]'::jsonb where slug = 'lg-gram-vi-beop';
