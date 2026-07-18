-- 지금 사이트에 있는 목데이터를 그대로 옮겨 심는 시드 스크립트.
-- schema.sql을 먼저 실행한 뒤, SQL Editor에서 이 파일을 실행하세요.
-- 이후 Supabase Table Editor에서 직접 값을 실제 프로젝트로 바꿔도 됩니다.

insert into works (slug, title, category, year, role, client, summary, description, sort_order)
values
  (
    'quiet-mark', 'Quiet Mark', 'Campaign', 2025, 'Brand Identity', 'Quiet Mark Studio',
    '절제된 타이포그래피를 중심으로 한 스튜디오 브랜드 아이덴티티.',
    array[
      '로고, 타이포그래피 시스템, 명함/봉투 등 기본 응용 세트를 설계했습니다.',
      '브랜드의 절제된 톤을 유지하기 위해 컬러는 흑백 두 가지로 제한했습니다.'
    ],
    0
  ),
  (
    'paper-house', 'Paper House', 'Production', 2025, 'Web Design & Development', 'Paper House',
    '종이 질감을 모티프로 한 소규모 출판사 웹사이트.',
    array[
      'Next.js 기반으로 개발했고, 여백과 스크롤 리듬에 신경 썼습니다.',
      '출간 도서 아카이브를 그리드 형태로 정리했습니다.'
    ],
    1
  ),
  (
    'field-notes', 'Field Notes', 'Content', 2024, 'Editorial Design', null,
    '여행 저널 매거진의 지면 레이아웃 디자인.',
    array[
      '이미지와 텍스트의 비율을 페이지마다 다르게 구성해 리듬을 만들었습니다.',
      '그리드는 12컬럼을 기본으로 하되 필요한 곳에서만 깨뜨렸습니다.'
    ],
    2
  ),
  (
    'low-tide', 'Low Tide', 'Content', 2024, 'Photography', null,
    '해안 마을을 기록한 개인 사진 시리즈.',
    array[
      '이른 아침과 늦은 오후, 빛이 낮게 깔리는 시간대만 골라 촬영했습니다.'
    ],
    3
  ),
  (
    'index-type', 'Index Type', 'Campaign', 2023, 'Type Design & Identity', 'Index',
    '커스텀 서체를 기반으로 한 편집 스튜디오 아이덴티티.',
    array[
      '숫자와 라벨이 많은 편집 작업 특성에 맞춰 고정폭 유틸리티 서체를 함께 설계했습니다.'
    ],
    4
  ),
  (
    'still-room', 'Still Room', 'Production', 2023, 'Web Design & Development', null,
    '가구 브랜드의 제품 아카이브 웹사이트.',
    array[
      '제품 하나하나를 큰 이미지로 보여주는 데 집중한 미니멀 커머스 페이지입니다.'
    ],
    5
  ),
  -- 아래는 그리드/페이지네이션 레이아웃 확인용 임시 목업 항목입니다.
  -- 실제 작업물이 준비되면 Table Editor에서 값을 바꾸거나 삭제하세요.
  (
    'placeholder-07', 'Placeholder Work 07', 'Campaign', 2022, 'Brand Identity', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    6
  ),
  (
    'placeholder-09', 'Placeholder Work 09', 'Content', 2021, 'Editorial Design', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    8
  ),
  (
    'placeholder-10', 'Placeholder Work 10', 'Content', 2021, 'Photography', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    9
  ),
  (
    'placeholder-11', 'Placeholder Work 11', 'Campaign', 2021, 'Brand Identity', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    10
  ),
  (
    'placeholder-13', 'Placeholder Work 13', 'Content', 2020, 'Editorial Design', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    12
  ),
  (
    'placeholder-14', 'Placeholder Work 14', 'Content', 2020, 'Photography', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    13
  ),
  (
    'placeholder-15', 'Placeholder Work 15', 'Campaign', 2019, 'Brand Identity', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    14
  ),
  (
    'placeholder-17', 'Placeholder Work 17', 'Content', 2019, 'Editorial Design', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    16
  ),
  (
    'placeholder-18', 'Placeholder Work 18', 'Content', 2019, 'Photography', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    17
  ),
  (
    'placeholder-19', 'Placeholder Work 19', 'Campaign', 2018, 'Brand Identity', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    18
  ),
  (
    'placeholder-21', 'Placeholder Work 21', 'Content', 2018, 'Editorial Design', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    20
  ),
  (
    'placeholder-22', 'Placeholder Work 22', 'Content', 2018, 'Photography', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    21
  ),
  (
    'placeholder-23', 'Placeholder Work 23', 'Campaign', 2017, 'Brand Identity', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    22
  ),
  (
    'placeholder-25', 'Placeholder Work 25', 'Content', 2017, 'Editorial Design', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    24
  ),
  (
    'placeholder-26', 'Placeholder Work 26', 'Content', 2017, 'Photography', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    25
  ),
  (
    'placeholder-27', 'Placeholder Work 27', 'Campaign', 2016, 'Brand Identity', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    26
  ),
  (
    'placeholder-29', 'Placeholder Work 29', 'Content', 2016, 'Editorial Design', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    28
  ),
  (
    'placeholder-30', 'Placeholder Work 30', 'Content', 2016, 'Photography', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    29
  ),
  -- 아래는 TVCF 포트폴리오(star.tvcf.co.kr) 기준 2018.10.12 ~ 2021.10.06
  -- Production 실제 경력입니다. 캠페인 단위로 묶었습니다.
  (
    'lg-prael', 'LG 프라엘', 'Production', 2018, 'Producer', 'LG',
    '맑은피부, 동안피부를 소구한 뷰티 디바이스 런칭 캠페인.',
    array['맑은피부', '동안피부'],
    30
  ),
  (
    'ohui-first-genature', '오휘 더 퍼스트 제너츄어', 'Production', 2018, 'Producer', '오휘',
    '피부감도를 소구한 스킨케어 캠페인.',
    array['피부감도'],
    31
  ),
  (
    'lg-hwisen-thinq', 'LG 휘센 인공지능 스스로에어컨 ThinQ', 'Production', 2018, 'Producer', 'LG',
    '제습·냉방·난방·공기청정 4종 컷으로 구성된 에어컨 캠페인.',
    array['제습', '냉방', '난방', '공기청정'],
    32
  ),
  (
    'whoo-cheongidan', '후 천기단 화현 에센스 쿠션', 'Production', 2018, 'Producer', '후(Whoo)',
    '"세상 위에 빛나다"를 콘셉트로 한 쿠션 캠페인.',
    array['세상 위에 빛나다'],
    33
  ),
  (
    'benz-service', '메르세데스 벤츠 서비스', 'Production', 2019, 'Producer', 'Mercedes-Benz',
    '"동행(Go Together)"을 콘셉트로 한 서비스 캠페인.',
    array['동행(Go Together)'],
    34
  ),
  (
    'whoo-bichup', '후 비첩 순환 에센스', 'Production', 2019, 'Producer', '후(Whoo)',
    '"순환의 힘"을 소구한 에센스 캠페인.',
    array['순환의 힘'],
    35
  ),
  (
    'ohui-first-ample', '오휘 더 퍼스트 앰플', 'Production', 2019, 'Producer', '오휘',
    '"빛의 시그니처"를 콘셉트로 한 앰플 캠페인.',
    array['빛의 시그니처'],
    36
  ),
  (
    'lotte-himart-20th', '롯데하이마트', 'Production', 2020, 'Producer', '롯데하이마트',
    '창립 20주년 세일 캠페인.',
    array['창립 20주년 세일 20년만의 기회'],
    37
  ),
  (
    'dongwon-tuna', '동원참치', 'Production', 2020, 'Producer', '동원참치',
    '"캔을 따"를 콘셉트로 한 브랜드 캠페인.',
    array['캔을 따', '캔을 따 Full', '캔을 따 인터뷰', '동원이도 캔을 따!'],
    38
  ),
  (
    'kanu-vanilla-latte', '카누 바닐라 라떼', 'Production', 2020, 'Producer', '카누',
    '"음~ 왜 이제 왔어요"를 콘셉트로 한 신제품 캠페인.',
    array['음~ 왜 이제 왔어요'],
    39
  ),
  (
    'duolac', '듀오락', 'Production', 2020, 'Producer', '듀오락',
    '우리나라 유산균 듀오락 캠페인.',
    array['우리나라 유산균 듀오락', '우리나라 유산균 듀오락 2'],
    40
  ),
  (
    'porsche-911-timeless-machine', '포르쉐 911 Timeless Machine', 'Production', 2020, 'Producer', 'Porsche',
    '오너들의 이야기를 담은 오너 스토리 시리즈.',
    array[
      '오너 스토리 종합', '오너 스토리 티저', '오너 스토리 신태윤',
      '오너 스토리 김택', '오너 스토리 전용훈', '오너 스토리 정규영'
    ],
    41
  ),
  (
    'kanu-signature', '카누 시그니처', 'Production', 2020, 'Producer', '카누',
    '프리미엄 라인 런칭 캠페인 (가치·언박싱·범퍼 컷).',
    array['가치', '언박싱 디자인', '언박싱 맛', '범퍼A', '범퍼B', '범퍼C'],
    42
  ),
  (
    'pizza-alvolo', '피자알볼로', 'Production', 2020, 'Producer', '피자알볼로',
    '"본"을 콘셉트로 한 브랜드 캠페인.',
    array['본'],
    43
  ),
  (
    'samsung-bespoke-dishwasher', '삼성 비스포크 식기세척기', 'Production', 2020, 'Producer', 'Samsung',
    '"당신이 바라던 식기세척기"를 소구한 런칭 캠페인.',
    array['당신이 바라던 식기세척기 - TVC', '당신이 바라던 식기세척기 - 디지털'],
    44
  ),
  (
    'ranking-dak', '랭킹닭컴', 'Production', 2020, 'Producer', '랭킹닭컴',
    '"나홀로이식당" 시리즈 캠페인.',
    array['나홀로이식당_외국어ver', '나홀로이식당_치팅데이', '나홀로이식당_식단관리'],
    45
  ),
  (
    'jungkwanjang-2020', '정관장', 'Production', 2020, 'Producer', '정관장',
    '안성기, 유지태가 출연한 홍삼 브랜드 캠페인.',
    array['종합', '안성기', '유지태'],
    46
  ),
  (
    'dongwon-gift-set', '동원 선물세트', 'Production', 2020, 'Producer', '동원',
    '"건강 총동원"을 콘셉트로 한 선물세트 캠페인.',
    array['건강 총동원'],
    47
  ),
  (
    'sos-state-of-survival', 'S.O.S : 스테이트 오브 서바이벌', 'Production', 2020, 'Producer', 'State of Survival',
    '혜리, 정우성이 출연한 모바일 게임 광고.',
    array['티저', '티저 - 혜리', '티저 - 정우성', '혜리', '정우성'],
    48
  ),
  (
    'richam', '리챔', 'Production', 2020, 'Producer', '리챔',
    '"햄맛챔피온리챔"을 콘셉트로 한 캠페인.',
    array['햄맛챔피온리챔 15초', '햄맛챔피온리챔 30초'],
    49
  ),
  (
    'denmark-pocket-cheese', '덴마크 인 포켓치즈', 'Production', 2020, 'Producer', '덴마크',
    '"10초면 찢기에 충분해"를 소구한 신제품 캠페인.',
    array['10초면 찢기에 충분해 (15s_A)'],
    50
  ),
  (
    'samsung-bespoke-induction', '삼성 비스포크 인덕션', 'Production', 2020, 'Producer', 'Samsung',
    '김이나가 출연한 "Kitchen for You" 캠페인.',
    array['김이나의 Kitchen for You'],
    51
  ),
  (
    'maxim-white-gold', '맥심 화이트골드', 'Production', 2020, 'Producer', '맥심',
    '"나에게 부드러워지는 시간"을 콘셉트로 한 캠페인.',
    array['나에게 부드러워지는 시간'],
    52
  ),
  (
    'lotte-group', '롯데그룹', 'Production', 2020, 'Producer', '롯데그룹',
    '"함께 가는 친구, 롯데" 기업PR 캠페인.',
    array['함께 가는 친구, 롯데'],
    53
  ),
  (
    'yogiyo-express', '요기요', 'Production', 2020, 'Producer', '요기요',
    '"익스프레스" 배달 서비스 캠페인.',
    array['익스프레스 라이더', '익스프레스 속도'],
    54
  ),
  (
    'porsche-taycan', '포르쉐 더 뉴 타이칸', 'Production', 2020, 'Producer', 'Porsche',
    '"Seoul, Electrified"를 콘셉트로 한 타이칸 런칭 캠페인.',
    array['더 뉴 타이칸 : Seoul, Electrified', 'Seoul, electrified : 티저', '영혼의 전율'],
    55
  ),
  (
    'jungkwanjang-2021', '정관장', 'Production', 2021, 'Producer', '정관장',
    '한석규, 김성령이 출연한 "제자리" 캠페인.',
    array['제자리:한석규', '제자리:김성령', '정관장몰:정몰'],
    56
  ),
  (
    'nature-made', '네이처 메이드', 'Production', 2021, 'Producer', 'Nature Made',
    '"홈트", "배달음식" 등 일상 속 건강 캠페인.',
    array['홈트', '배달음식'],
    57
  ),
  (
    'beplain', '비플레인', 'Production', 2021, 'Producer', '비플레인',
    '녹두Song 캠페인.',
    array['녹두Song 캠페인'],
    58
  ),
  (
    'myallri', '마이올리', 'Production', 2021, 'Producer', '마이올리',
    '건강기능식품 라인업 캠페인 (알티지 오메가3, 루테인, 비타민B, 프로바이오틱스 외).',
    array[
      '나를 위한 케어레시피', '골든루트 밀크시슬(feat.간건강)',
      '코어 비타민B 플러스(feat.활력)', '프로바이오틱스(feat.장건강)',
      '알티지 알래스카 오메가3(feat.혈액순환)', '슈퍼크리티컬 루테인(feat.눈건강)',
      '나를 위한 케어 레시피2', '카마디 엑스투(feat.뼈건강)'
    ],
    59
  ),
  (
    'woongjin-bookclub', '웅진북클럽', 'Production', 2021, 'Producer', '웅진북클럽',
    '"독서의 기준"을 콘셉트로 한 브랜드 캠페인.',
    array['독서의 기준'],
    60
  )
on conflict (slug) do nothing;

-- TVCF 실제 영상 썸네일 이미지 URL을 cover_image에 반영합니다.
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000358/A0003585631C89.jpg' where slug = 'lg-prael';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000361/A000361963071C.jpg' where slug = 'ohui-first-genature';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000363/A000363620C0E2.jpg' where slug = 'lg-hwisen-thinq';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000364/A000364828CCC8.jpg' where slug = 'whoo-cheongidan';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000369/A0003697882565.jpg' where slug = 'benz-service';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000369/A0003697334437.jpg' where slug = 'whoo-bichup';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000374/A000374065BF22.jpg' where slug = 'ohui-first-ample';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000395/A000395640C4C0.jpg' where slug = 'lotte-himart-20th';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000401/A000401676F9A1.jpg' where slug = 'dongwon-tuna';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000402/A000402120C1F1.jpg' where slug = 'kanu-vanilla-latte';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000404/A0004041601064.jpg' where slug = 'duolac';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000405/A000405404EC29.jpg' where slug = 'porsche-911-timeless-machine';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000406/A0004067366FBD.jpg' where slug = 'kanu-signature';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000409/A000409849737C.jpg' where slug = 'pizza-alvolo';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000412/A000412187D985.jpg' where slug = 'samsung-bespoke-dishwasher';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000414/A0004141238722.jpg' where slug = 'ranking-dak';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000417/A00041755917AA.jpg' where slug = 'jungkwanjang-2020';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000418/A000418779860C.jpg' where slug = 'dongwon-gift-set';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000419/A000419157B67C.jpg' where slug = 'sos-state-of-survival';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000421/A000421108866F.jpg' where slug = 'richam';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000422/A0004220445AD3.jpg' where slug = 'denmark-pocket-cheese';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000423/A0004231617C27.jpg' where slug = 'samsung-bespoke-induction';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000423/A000423111E5E6.jpg' where slug = 'maxim-white-gold';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000423/A000423202B160.jpg' where slug = 'lotte-group';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000424/A000424490E806.jpg' where slug = 'yogiyo-express';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000424/A000424675E088.jpg' where slug = 'porsche-taycan';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000429/A0004294034F74.jpg' where slug = 'jungkwanjang-2021';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000430/A0004302297F37.jpg' where slug = 'nature-made';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000450/A00045015209fd.jpg' where slug = 'beplain';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000454/A000454832345C.jpg' where slug = 'myallri';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000454/A000454349D3B0.jpg' where slug = 'woongjin-bookclub';
