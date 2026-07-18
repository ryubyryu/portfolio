-- TVCF 포트폴리오 원문과 정확히 일치하도록 Production 캠페인 31건의 title/description을
-- 교정하고, 2022.06.03 이후 Copywriter로 전환한 뒤의 Content 실제 경력 13건을 추가하는
-- 1회성 스크립트. SQL Editor에서 실행하세요.

update works set title = '메르세데스 벤츠 서비스', description = array['동행(Go Together)'] where slug = 'benz-service';
update works set description = array['맑은피부', '동안피부'] where slug = 'lg-prael';
update works set description = array['피부감도'] where slug = 'ohui-first-genature';
update works set description = array['제습', '냉방', '난방', '공기청정'] where slug = 'lg-hwisen-thinq';
update works set description = array['세상 위에 빛나다'] where slug = 'whoo-cheongidan';
update works set description = array['순환의 힘'] where slug = 'whoo-bichup';
update works set description = array['빛의 시그니처'] where slug = 'ohui-first-ample';
update works set description = array['창립 20주년 세일 20년만의 기회'] where slug = 'lotte-himart-20th';
update works set description = array['캔을 따', '캔을 따 Full', '캔을 따 인터뷰', '동원이도 캔을 따!'] where slug = 'dongwon-tuna';
update works set description = array['음~ 왜 이제 왔어요'] where slug = 'kanu-vanilla-latte';
update works set description = array['우리나라 유산균 듀오락', '우리나라 유산균 듀오락 2'] where slug = 'duolac';
update works set description = array['오너 스토리 종합', '오너 스토리 티저', '오너 스토리 신태윤', '오너 스토리 김택', '오너 스토리 전용훈', '오너 스토리 정규영'] where slug = 'porsche-911-timeless-machine';
update works set description = array['가치', '언박싱 디자인', '언박싱 맛', '범퍼A', '범퍼B', '범퍼C'] where slug = 'kanu-signature';
update works set description = array['본'] where slug = 'pizza-alvolo';
update works set description = array['당신이 바라던 식기세척기 - TVC', '당신이 바라던 식기세척기 - 디지털'] where slug = 'samsung-bespoke-dishwasher';
update works set description = array['나홀로이식당_외국어ver', '나홀로이식당_치팅데이', '나홀로이식당_식단관리'] where slug = 'ranking-dak';
update works set description = array['종합', '안성기', '유지태'] where slug = 'jungkwanjang-2020';
update works set description = array['건강 총동원'] where slug = 'dongwon-gift-set';
update works set summary = '혜리, 정우성이 출연한 모바일 게임 광고.', description = array['티저', '티저 - 혜리', '티저 - 정우성', '혜리', '정우성'] where slug = 'sos-state-of-survival';
update works set description = array['햄맛챔피온리챔 15초', '햄맛챔피온리챔 30초'] where slug = 'richam';
update works set description = array['10초면 찢기에 충분해 (15s_A)'] where slug = 'denmark-pocket-cheese';
update works set description = array['김이나의 Kitchen for You'] where slug = 'samsung-bespoke-induction';
update works set description = array['나에게 부드러워지는 시간'] where slug = 'maxim-white-gold';
update works set description = array['함께 가는 친구, 롯데'] where slug = 'lotte-group';
update works set description = array['익스프레스 라이더', '익스프레스 속도'] where slug = 'yogiyo-express';
update works set description = array['더 뉴 타이칸 : Seoul, Electrified', 'Seoul, electrified : 티저', '영혼의 전율'] where slug = 'porsche-taycan';
update works set description = array['제자리:한석규', '제자리:김성령', '정관장물:정몰'] where slug = 'jungkwanjang-2021';
update works set description = array['홈트', '배달음식'] where slug = 'nature-made';
update works set description = array['녹두Song 캠페인'] where slug = 'beplain';
update works set description = array[
  '나를 위한 케어레시피', '골든루트 밀크시슬(feat.간건강)', '코어 비타민B 플러스(feat.활력)', '프로바이오틱스(feat.장건강)',
  '알티지 알래스카 오메가3(feat.혈액순환)', '슈퍼크리티컬 루테인(feat.눈건강)', '나를 위한 케어 레시피2', '카마디 엑스투(feat.뼈건강)'
] where slug = 'myallri';
update works set description = array['독서의 기준'] where slug = 'woongjin-bookclub';

insert into works (slug, title, category, year, role, client, summary, description, sort_order)
values
  (
    'kleenex-clean-together', '크리넥스 클린투게더', 'Content', 2022, 'Copywriter', '크리넥스',
    '화장지와 청소용품을 함께 쓰는 습관을 제안한 캠페인.',
    array['데코앤소프트 6s', '데코앤소프트 FULL'],
    61
  ),
  (
    'kleenex-ultraclean', '크리넥스 울트라클린', 'Content', 2022, 'Copywriter', '크리넥스',
    '물때·곰팡이 제거력을 소구한 화장실 청소용품 캠페인.',
    array['울트라클린 15s', '울트라클린 6s'],
    62
  ),
  (
    'kakao-pr-campaign', '카카오 기업 PR 캠페인', 'Content', 2023, 'Copywriter', '카카오',
    '보이지 않는 곳에서의 노력을 담은 기업 PR 캠페인.',
    array['1cm² 속 보이지 않는 카카오의 노력'],
    63
  ),
  (
    'nike-rhr', '나이키 RHR', 'Content', 2023, 'Copywriter', 'Nike',
    '러너들이 서로를 돕는다는 메시지를 담은 러닝 캠페인.',
    array['RHR'],
    64
  ),
  (
    'nike-well-collective', '나이키 Well Collective', 'Content', 2023, 'Copywriter', 'Nike',
    '건강한 라이프스타일을 제안하는 웰니스 콘텐츠 시리즈.',
    array['Well collective_Better Together', 'Well collective_Movement', 'Well collective_Morning Ritual'],
    65
  ),
  (
    'nike-style-story', '나이키 Style Story', 'Content', 2023, 'Copywriter', 'Nike',
    '스타일 아이콘들의 이야기를 담은 콘텐츠 시리즈.',
    array['Style Story - 세븐틴 호시', 'Style Story - 세븐틴 호시편 15초', 'STYLE STORY -V2K 허니제이'],
    66
  ),
  (
    'nike-3style', '나이키 3Style', 'Content', 2023, 'Copywriter', 'Nike',
    '한 켤레의 신발을 세 가지 스타일로 소화하는 콘텐츠.',
    array['3Style - 세븐틴 호시', '코르테즈3Style-허니제이'],
    67
  ),
  (
    'nike-airmax-dn', '나이키 Airmax DN', 'Content', 2024, 'Copywriter', 'Nike',
    '에어맥스 DN 신제품을 소개하는 캠페인.',
    array['Airmax DN- 모델 채종석', 'Airmax DN-스타일리스트 김영진'],
    68
  ),
  (
    'nike-fitting-room', '나이키 Fitting Room', 'Content', 2024, 'Copywriter', 'Nike',
    '선수의 피팅룸 비하인드를 담은 콘텐츠.',
    array['Fitting Room_안세영 선수'],
    69
  ),
  (
    'lotteria-thanks-burger', '롯데리아 땡스버거', 'Content', 2023, 'Copywriter', '롯데리아',
    '고마운 마음을 전하자는 메시지를 담은 버거 캠페인.',
    array['고마운 사람에게 마음을 전하세요'],
    70
  ),
  (
    'lg-gram-vi-beop', 'LG 그램 그램VI법', 'Content', 2025, 'Copywriter', 'LG',
    '그램 활용법을 소개하는 시리즈 콘텐츠.',
    array[
      '그램VI법_Teaser', '그램VI법01_애러 난 과제 파일 구출법', '그램VI법02_시험 준비 교수님 소환술',
      '그램VI법03_과제 지옥 탈출법', '그램VI법04_일잘러의 회의 준비법', '그램VI법05_휴가 복귀 후 밀린 메일 정리법',
      '그램VI법06_경력같은 신입사원 되는 법', '그램VI법07_누구보다 빠르게 남들과는 다른 편집법',
      '그램VI법08_쿨하게 무릎 책상 쓰기', '잇츠 오케이의 그램VI법 01_애로우? 루나? CPU 뭐가 다르지?',
      '잇츠 오케이의 그램VI법 02_프로들을 위한 멀티태스킹', '잇츠 오케이의 그램VI법 03_4K 편집 가능한 그램 Pro 외장그래픽'
    ],
    71
  ),
  (
    'lg-gram-go-ai-2024', 'LG 그램 GO AI 상상여행사', 'Content', 2024, 'Copywriter', 'LG',
    'AI 기능을 담은 그램 신제품 캠페인.',
    array['LG gram GO AI 상상여행사 2024'],
    72
  ),
  (
    'gshock-iconic-styles', 'G-SHOCK ICONIC STYLES', 'Content', 2025, 'Copywriter', 'G-SHOCK',
    '이승협과 함께한 G-SHOCK 스타일 캠페인.',
    array['ICONIC STYLES : LEE SEUNG HYUB'],
    73
  )
on conflict (slug) do nothing;
