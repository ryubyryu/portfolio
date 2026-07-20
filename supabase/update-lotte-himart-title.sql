-- 롯데하이마트 캠페인 제목에 공백을 추가해 클라이언트 표기(롯데 하이마트)와
-- 통일하는 1회성 스크립트입니다. SQL Editor에서 실행하세요.

update works set title = '롯데 하이마트' where slug = 'lotte-himart-20th';
