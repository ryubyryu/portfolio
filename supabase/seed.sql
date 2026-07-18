-- 지금 사이트에 있는 목데이터를 그대로 옮겨 심는 시드 스크립트.
-- schema.sql을 먼저 실행한 뒤, SQL Editor에서 이 파일을 실행하세요.
-- 이후 Supabase Table Editor에서 직접 값을 실제 프로젝트로 바꿔도 됩니다.

insert into works (slug, title, category, year, role, client, summary, description, sort_order)
values
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
    'still-room', 'Still Room', 'Production', 2023, 'Web Design & Development', null,
    '가구 브랜드의 제품 아카이브 웹사이트.',
    array[
      '제품 하나하나를 큰 이미지로 보여주는 데 집중한 미니멀 커머스 페이지입니다.'
    ],
    5
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

-- TVCF 개별 영상 재생 URL을 images에 반영합니다 (description과 같은 순서).
update works set images = array['https://tvcf.co.kr/play/ah05745-718482', 'https://tvcf.co.kr/play/ah14201-718460'] where slug = 'lg-prael';
update works set images = array['https://tvcf.co.kr/play/bh03017-725943'] where slug = 'ohui-first-genature';
update works set images = array['https://tvcf.co.kr/play/bh03293-729147', 'https://tvcf.co.kr/play/ah03222-729146', 'https://tvcf.co.kr/play/bh03151-729145', 'https://tvcf.co.kr/play/ah03089-729144'] where slug = 'lg-hwisen-thinq';
update works set images = array['https://tvcf.co.kr/play/bh0775-731311'] where slug = 'whoo-cheongidan';
update works set images = array['https://tvcf.co.kr/play/bh01336-739519'] where slug = 'benz-service';
update works set images = array['https://tvcf.co.kr/play/bh03855-739455'] where slug = 'whoo-bichup';
update works set images = array['https://tvcf.co.kr/play/ah22804-745040'] where slug = 'ohui-first-ample';
update works set images = array['https://tvcf.co.kr/play/ah03229-771846'] where slug = 'lotte-himart-20th';
update works set images = array['https://tvcf.co.kr/play/ah23363-780048', 'https://tvcf.co.kr/play/ah24207-780160', 'https://tvcf.co.kr/play/bh14278-780161', 'https://tvcf.co.kr/play/ah06169-794288'] where slug = 'dongwon-tuna';
update works set images = array['https://tvcf.co.kr/play/bh15819-780783'] where slug = 'kanu-vanilla-latte';
update works set images = array['https://tvcf.co.kr/play/ah04342-783362', 'https://tvcf.co.kr/play/ah01967-784628'] where slug = 'duolac';
update works set images = array['https://tvcf.co.kr/play/bh1354-784805', 'https://tvcf.co.kr/play/ah0984-784814', 'https://tvcf.co.kr/play/bh06793-787597', 'https://tvcf.co.kr/play/ah06722-787596', 'https://tvcf.co.kr/play/bh12458-787035', 'https://tvcf.co.kr/play/ah12387-787034'] where slug = 'porsche-911-timeless-machine';
update works set images = array['https://tvcf.co.kr/play/bh05533-786579', 'https://tvcf.co.kr/play/ah13501-786550', 'https://tvcf.co.kr/play/bh03439-786549', 'https://tvcf.co.kr/play/ah03643-786552', 'https://tvcf.co.kr/play/ah03785-786554', 'https://tvcf.co.kr/play/bh03714-786553'] where slug = 'kanu-signature';
update works set images = array['https://tvcf.co.kr/play/bh02311-791433'] where slug = 'pizza-alvolo';
update works set images = array['https://tvcf.co.kr/play/bh05538-794179', 'https://tvcf.co.kr/play/bh06097-794187'] where slug = 'samsung-bespoke-dishwasher';
update works set images = array['https://tvcf.co.kr/play/bh02311-796433', 'https://tvcf.co.kr/play/ah02382-796434', 'https://tvcf.co.kr/play/ah02524-796436'] where slug = 'ranking-dak';
update works set images = array['https://tvcf.co.kr/play/ah3167-800502', 'https://tvcf.co.kr/play/ah405-800500', 'https://tvcf.co.kr/play/bh27924-800499'] where slug = 'jungkwanjang-2020';
update works set images = array['https://tvcf.co.kr/play/ah15767-802772'] where slug = 'dongwon-gift-set';
update works set images = array['https://tvcf.co.kr/play/ah16085-803176', 'https://tvcf.co.kr/play/bh12164-805427', 'https://tvcf.co.kr/play/ah12083-805426', 'https://tvcf.co.kr/play/bh17128-805989', 'https://tvcf.co.kr/play/ah400-806000'] where slug = 'sos-state-of-survival';
update works set images = array['https://tvcf.co.kr/play/ah11122-805614', 'https://tvcf.co.kr/play/bh11041-805613'] where slug = 'richam';
update works set images = array['https://tvcf.co.kr/play/bh17286-806591'] where slug = 'denmark-pocket-cheese';
update works set images = array['https://tvcf.co.kr/play/bh26489-808081'] where slug = 'samsung-bespoke-induction';
update works set images = array['https://tvcf.co.kr/play/bh22322-808029'] where slug = 'maxim-white-gold';
update works set images = array['https://tvcf.co.kr/play/ah11765-808122'] where slug = 'lotte-group';
update works set images = array['https://tvcf.co.kr/play/bh16646-809483', 'https://tvcf.co.kr/play/ah2644-810508'] where slug = 'yogiyo-express';
update works set images = array['https://tvcf.co.kr/play/ah1968-810512', 'https://tvcf.co.kr/play/ah25604-809670', 'https://tvcf.co.kr/play/bh06326-811879'] where slug = 'porsche-taycan';
update works set images = array['https://tvcf.co.kr/play/bh1563-815507', 'https://tvcf.co.kr/play/ah1482-815506', 'https://tvcf.co.kr/play/bh1401-815505'] where slug = 'jungkwanjang-2021';
update works set images = array['https://tvcf.co.kr/play/bh04881-816361', 'https://tvcf.co.kr/play/bh17128-816089'] where slug = 'nature-made';
update works set images = array['https://tvcf.co.kr/play/bh04084-839751'] where slug = 'beplain';
update works set images = array['https://tvcf.co.kr/play/ah03047-845538', 'https://tvcf.co.kr/play/bh03443-845543', 'https://tvcf.co.kr/play/bh03281-845541', 'https://tvcf.co.kr/play/ah13209-845540', 'https://tvcf.co.kr/play/ah14962-850362', 'https://tvcf.co.kr/play/ah24809-850360', 'https://tvcf.co.kr/play/ah25605-850770', 'https://tvcf.co.kr/play/bh15043-850363'] where slug = 'myallri';
update works set images = array['https://tvcf.co.kr/play/bh14248-845053'] where slug = 'woongjin-bookclub';
