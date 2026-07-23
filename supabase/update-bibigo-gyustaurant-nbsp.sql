-- bibigo-gyustaurant 본문 3번째 문단의 "접점을"과 "넓혔다." 사이를 non-breaking space로 연결해
-- 줄바꿈 없이 항상 붙어서 렌더링되도록 수정합니다.

update works set description = description[1:2] || array[
  '레시피 소개를 비롯해 비하인드 영상, 밸런스 게임 등 다양한 부가 콘텐츠를 통해 브랜드 경험을 소셜 콘텐츠로 확장하며 팬들과의 접점을 넓혔다.'
]
where slug = 'bibigo-gyustaurant';
