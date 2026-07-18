-- Production 카테고리의 임시 목업 항목을 지우고, TVCF 포트폴리오(star.tvcf.co.kr) 기준
-- 2018.10.12 ~ 2021.10.06 실제 경력으로 교체하는 1회성 스크립트. 캠페인 단위로 묶었습니다.
-- SQL Editor에서 실행하세요.

delete from works
where slug in (
  'placeholder-08', 'placeholder-12', 'placeholder-16',
  'placeholder-20', 'placeholder-24', 'placeholder-28'
);

insert into works (slug, title, category, year, role, client, summary, description, sort_order)
values
  (
    'lg-prael', 'LG 프라엘', 'Production', 2018, 'Copywriter', 'LG',
    '맑은피부, 동안피부를 소구한 뷰티 디바이스 런칭 캠페인.',
    array['맑은피부 편', '동안피부 편'],
    30
  ),
  (
    'ohui-first-genature', '오휘 더 퍼스트 제너츄어', 'Production', 2018, 'Copywriter', '오휘',
    '피부감도를 소구한 스킨케어 캠페인.',
    array['피부감도 편'],
    31
  ),
  (
    'lg-hwisen-thinq', 'LG 휘센 인공지능 스스로에어컨 ThinQ', 'Production', 2018, 'Copywriter', 'LG',
    '제습·냉방·난방·공기청정 4종 컷으로 구성된 에어컨 캠페인.',
    array['제습 편', '냉방 편', '난방 편', '공기청정 편'],
    32
  ),
  (
    'whoo-cheongidan', '후 천기단 화현 에센스 쿠션', 'Production', 2018, 'Copywriter', '후(Whoo)',
    '"세상 위에 빛나다"를 콘셉트로 한 쿠션 캠페인.',
    array['세상 위에 빛나다 편'],
    33
  ),
  (
    'benz-service', '메르세데스-벤츠 서비스', 'Production', 2019, 'Copywriter', 'Mercedes-Benz',
    '"동행(Go Together)"을 콘셉트로 한 서비스 캠페인.',
    array['동행(Go Together) 편'],
    34
  ),
  (
    'whoo-bichup', '후 비첩 순환 에센스', 'Production', 2019, 'Copywriter', '후(Whoo)',
    '"순환의 힘"을 소구한 에센스 캠페인.',
    array['순환의 힘 편'],
    35
  ),
  (
    'ohui-first-ample', '오휘 더 퍼스트 앰플', 'Production', 2019, 'Copywriter', '오휘',
    '"빛의 시그니처"를 콘셉트로 한 앰플 캠페인.',
    array['빛의 시그니처 편'],
    36
  ),
  (
    'lotte-himart-20th', '롯데하이마트', 'Production', 2020, 'Copywriter', '롯데하이마트',
    '창립 20주년 세일 캠페인.',
    array['창립 20주년, 세일 20년만의 기회 편'],
    37
  ),
  (
    'dongwon-tuna', '동원참치', 'Production', 2020, 'Copywriter', '동원참치',
    '"캔을 따"를 콘셉트로 한 브랜드 캠페인.',
    array['캔을 따 편', '캔을 따 Full', '캔을 따 인터뷰', '동원이도 캔을 따! 편'],
    38
  ),
  (
    'kanu-vanilla-latte', '카누 바닐라 라떼', 'Production', 2020, 'Copywriter', '카누',
    '"음~ 왜 이제 왔어요"를 콘셉트로 한 신제품 캠페인.',
    array['음~ 왜 이제 왔어요 편'],
    39
  ),
  (
    'duolac', '듀오락', 'Production', 2020, 'Copywriter', '듀오락',
    '우리나라 유산균 듀오락 캠페인.',
    array['우리나라 유산균 듀오락 편', '우리나라 유산균 듀오락 2 편'],
    40
  ),
  (
    'porsche-911-timeless-machine', '포르쉐 911 Timeless Machine', 'Production', 2020, 'Copywriter', 'Porsche',
    '오너들의 이야기를 담은 오너 스토리 시리즈.',
    array[
      '오너 스토리 종합', '오너 스토리 티저', '오너 스토리 - 신태윤',
      '오너 스토리 - 김택', '오너 스토리 - 전용훈', '오너 스토리 - 정규영'
    ],
    41
  ),
  (
    'kanu-signature', '카누 시그니처', 'Production', 2020, 'Copywriter', '카누',
    '프리미엄 라인 런칭 캠페인 (가치·언박싱·범퍼 컷).',
    array['가치 편', '언박싱 디자인 편', '언박싱 맛 편', '범퍼 A/B/C'],
    42
  ),
  (
    'pizza-alvolo', '피자알볼로', 'Production', 2020, 'Copywriter', '피자알볼로',
    '"본"을 콘셉트로 한 브랜드 캠페인.',
    array['본 편'],
    43
  ),
  (
    'samsung-bespoke-dishwasher', '삼성 비스포크 식기세척기', 'Production', 2020, 'Copywriter', 'Samsung',
    '"당신이 바라던 식기세척기"를 소구한 런칭 캠페인.',
    array['TVC 편', '디지털 편'],
    44
  ),
  (
    'ranking-dak', '랭킹닭컴', 'Production', 2020, 'Copywriter', '랭킹닭컴',
    '"나홀로이식당" 시리즈 캠페인.',
    array['외국어 ver', '치팅데이 편', '식단관리 편'],
    45
  ),
  (
    'jungkwanjang-2020', '정관장', 'Production', 2020, 'Copywriter', '정관장',
    '안성기, 유지태가 출연한 홍삼 브랜드 캠페인.',
    array['종합 편', '안성기 편', '유지태 편'],
    46
  ),
  (
    'dongwon-gift-set', '동원 선물세트', 'Production', 2020, 'Copywriter', '동원',
    '"건강 총동원"을 콘셉트로 한 선물세트 캠페인.',
    array['건강 총동원 편'],
    47
  ),
  (
    'sos-state-of-survival', 'S.O.S : 스테이트 오브 서바이벌', 'Production', 2020, 'Copywriter', 'State of Survival',
    '헤리, 정우성이 출연한 모바일 게임 광고.',
    array['티저 편', '티저 - 헤리', '티저 - 정우성', '헤리 편', '정우성 편'],
    48
  ),
  (
    'richam', '리챔', 'Production', 2020, 'Copywriter', '리챔',
    '"햄맛챔피온리챔"을 콘셉트로 한 캠페인.',
    array['15초 편', '30초 편'],
    49
  ),
  (
    'denmark-pocket-cheese', '덴마크 인 포켓치즈', 'Production', 2020, 'Copywriter', '덴마크',
    '"10초면 찢기에 충분해"를 소구한 신제품 캠페인.',
    array['15s_A 편'],
    50
  ),
  (
    'samsung-bespoke-induction', '삼성 비스포크 인덕션', 'Production', 2020, 'Copywriter', 'Samsung',
    '김이나가 출연한 "Kitchen for You" 캠페인.',
    array['김이나의 Kitchen for You 편'],
    51
  ),
  (
    'maxim-white-gold', '맥심 화이트골드', 'Production', 2020, 'Copywriter', '맥심',
    '"나에게 부드러워지는 시간"을 콘셉트로 한 캠페인.',
    array['나에게 부드러워지는 시간 편'],
    52
  ),
  (
    'lotte-group', '롯데그룹', 'Production', 2020, 'Copywriter', '롯데그룹',
    '"함께 가는 친구, 롯데" 기업PR 캠페인.',
    array['함께 가는 친구, 롯데 편'],
    53
  ),
  (
    'yogiyo-express', '요기요', 'Production', 2020, 'Copywriter', '요기요',
    '"익스프레스" 배달 서비스 캠페인.',
    array['익스프레스 라이더 편', '익스프레스 속도 편'],
    54
  ),
  (
    'porsche-taycan', '포르쉐 더 뉴 타이칸', 'Production', 2020, 'Copywriter', 'Porsche',
    '"Seoul, Electrified"를 콘셉트로 한 타이칸 런칭 캠페인.',
    array['Seoul, Electrified 편', 'Seoul, electrified 티저', '영혼의 전율 편'],
    55
  ),
  (
    'jungkwanjang-2021', '정관장', 'Production', 2021, 'Copywriter', '정관장',
    '한석규, 김성령이 출연한 "제자리" 캠페인.',
    array['제자리 - 한석규', '제자리 - 김성령', '정관장물 - 정몰 편'],
    56
  ),
  (
    'nature-made', '네이처 메이드', 'Production', 2021, 'Copywriter', 'Nature Made',
    '"홈트", "배달음식" 등 일상 속 건강 캠페인.',
    array['홈트 편', '배달음식 편'],
    57
  ),
  (
    'beplain', '비플레인', 'Production', 2021, 'Copywriter', '비플레인',
    '녹두Song 캠페인.',
    array['녹두Song 캠페인 편'],
    58
  ),
  (
    'myallri', '마이올리', 'Production', 2021, 'Copywriter', '마이올리',
    '건강기능식품 라인업 캠페인 (알티지 오메가3, 루테인, 비타민B, 프로바이오틱스 외).',
    array[
      '오늘도 난, ALL RIGHT MY ALLRI 편', '골든루트 밀크시슬 (feat.간건강)',
      '코어 비타민B 플러스 (feat.활력)', '프로바이오틱스 (feat.장건강)',
      '알티지 알래스카 오메가3 (feat.혈액순환)', '슈퍼크리티컬 루테인 (feat.눈건강)',
      '나를 위한 케어 레시피 2', '카마디 엑스투 (feat.뼈건강)'
    ],
    59
  ),
  (
    'woongjin-bookclub', '웅진북클럽', 'Production', 2021, 'Copywriter', '웅진북클럽',
    '"독서의 기준"을 콘셉트로 한 브랜드 캠페인.',
    array['독서의 기준 편'],
    60
  )
on conflict (slug) do nothing;
