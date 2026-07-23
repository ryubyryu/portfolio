-- bibigo-gyustaurant 본문 첫 문단을 수정합니다.

update works
set description = array[
  'CJ제일제당의 글로벌 K-푸드 브랜드 비비고와 세븐틴이 함께한 글로벌 캠페인의 후속 콘텐츠〈비비고 규스토랑〉'
] || description[2:3]
where slug = 'bibigo-gyustaurant';
