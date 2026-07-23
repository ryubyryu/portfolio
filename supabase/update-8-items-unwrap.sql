-- 본문 텍스트 컨테이너 폭 확장에 맞춰, 이전에 강제로 넣었던 8곳의 \n 줄바꿈을 원래 공백으로 되돌립니다.
-- (non-breaking space는 안전장치로 유지)

update works set description = array[
  'NIKE 너만의 무늬 [    ] 우리의 무기.',
  '2022년 카타르 월드컵 모멘텀의 나이키 캠페인 "서로가 다르기에 우리는 더 강해진다"는 메시지로 승리를 뜨겁게 응원하며 국가대표 선수들을 하이라이팅 하다.'
] where slug = 'nike-worldcup-2022';

update works set description = array[
  '과감한 개성의 나이키 에어맥스Dn 스타일 컨텐츠.',
  '케이팝 아티스트들의 스타일링을 책임지고 있는 스타일리스트 김영진과 모델 채종석의 룩을 통해 에어맥스 Dn만의 독보적인 스타일을 표현하다.'
] where slug = 'nike-airmax-dn';

update works set description = array[
  'gramGO AI 상상여행사, AI를 활용한 BTL 캠페인.
신제품 LG 그램 프로의 고성능을 체험시키기 위해 음악, 이미지, 대화형 3종의 생성형 AI를 해치와 함께 여행을 떠나듯 경험해보는 여행사 컨셉의 체험형 캠페인 진행'
] where slug = 'lg-gram-go-ai-travel';

update works set description = array[
  'CJ제일제당의 글로벌 K-푸드 브랜드 비비고와 세븐틴이 함께한 글로벌 캠페인',
  '캠페인 콘셉트를 기반으로 비비고 글로벌 SNS 채널 @bibigo.global의 인스타그램 및 X 콘텐츠를 기획·제작
브랜드 필름과 마이크로사이트 bibigo HOUSE의 비주얼 에셋을 활용해 캠페인 메시지를 소셜 콘텐츠 전반에 일관되게 적용하며 글로벌 팬들과의 접점을 확장했다.'
] where slug = 'bibigo-svt-social';

update works set description = array[
  'CJ제일제당의 글로벌 K-푸드 브랜드 비비고와 세븐틴이 함께한 글로벌 캠페인의 후속 콘텐츠 〈비비고 규스토랑〉 제작.',
  '세븐틴 민규가 비비고 제품을 활용한 다양한 메뉴와 조리법을 소개하며,
CJ더마켓 라이브커머스 공개에 맞춰 글로벌 팬들을 위한 SNS 콘텐츠를 기획·제작했다.',
  '레시피 소개를 비롯해 비하인드 영상, 밸런스 게임 등 다양한 부가 콘텐츠를 통해 브랜드 경험을 소셜 콘텐츠로 확장하며 팬들과의 접점을 넓혔다.'
] where slug = 'bibigo-gyustaurant';

update works
set gallery = jsonb_set(
  jsonb_set(
    gallery,
    '{0,text,0}',
    to_jsonb('LG 그램은 2025년 On-device AI를 탑재한 그램 AI 제품 출시를 앞두고 노트북 시장의 새로운 패러다임을 제시하고자 했다.
기존의 무게, 기능, 속도 중심의 시장에서 벗어나 그램 AI만의 독특한 가치와 활용성을 효과적으로 전달하기위한 전략적 캠페인이 필요한 상황.'::text)
  ),
  '{0,text,1}',
  to_jsonb('이에 ''그램VI법 캠페인''을 기획했다.
이 캠페인은 LG 그램 Pro만의 차별화된 AI 기능과 실용적 가치를 부각시키는 데 중점을 두었다.
특히 주요 타겟층인 대학생과 직장인들의 실제 사용 환경을 고려한 시나리오를 통해 그램 AI의 실질적인 효용성을 공감할 수 있는 숏폼 콘텐츠로 제작했다.
총 8편의 에피소드로 구성된 이 캠페인은 각 편마다 LG 그램 Pro의 핵심 AI 기능을 하나씩 집중적으로 소개한다.'::text)
)
where slug = 'lg-gram-vi-beop';

update works
set gallery = jsonb_set(
  gallery,
  '{5,text,0}',
  to_jsonb('(2025.04.15 기준) 총 167만 2,467 인게이지먼트를 달성했다.
모든 에피소드는 약 166만 5,798회 시청되었으며, 영상 발행과 함께 진행된 ''그램비법이 필요한 친구 태그 이벤트'' 등
다양한 참여형 소셜 이벤트를 통해 4,542개의 댓글이 수집되었다.
이러한 활동으로 콘텐츠의 확산력을 높이고 소비자 반응을 통한 인사이트를 확보할 수 있었다.
그리고 국내 영상 광고 전문 플랫폼 TVCF에서는 "AI를 뒤집어 비법으로 만든 것이 인상적이었다",
"AI를 어떻게 활용할 수 있는지 잘 보여주고 있어 호감이 느껴진다" 등 긍정적인 평가가 이어졌고, 결과적으로 그램 AI의 이슈화와 브랜드 긍정 여론 형성에 성공했다.'::text)
)
where slug = 'lg-gram-vi-beop';
