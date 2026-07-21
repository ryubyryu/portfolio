-- 지금 사이트에 있는 목데이터를 그대로 옮겨 심는 시드 스크립트.
-- schema.sql을 먼저 실행한 뒤, SQL Editor에서 이 파일을 실행하세요.
-- 이후 Supabase Table Editor에서 직접 값을 실제 프로젝트로 바꿔도 됩니다.

insert into works (slug, title, category, year, role, client, summary, description, sort_order)
values
  -- 아래는 TVCF 포트폴리오(star.tvcf.co.kr) 기준 2018.10.12 ~ 2021.10.06
  -- Production 실제 경력입니다. 캠페인 단위로 묶었습니다.
  (
    'lg-prael', 'LG 프라엘', 'Production', 2018, 'Producer', 'LG전자',
    '맑은피부, 동안피부를 소구한 뷰티 디바이스 런칭 캠페인.',
    array['LG 프라엘 : 맑은피부 편', 'LG 프라엘 : 동안피부 편'],
    30
  ),
  (
    'ohui-first-genature', '오휘 더 퍼스트 제너츄어', 'Production', 2018, 'Producer', 'LG생활건강',
    '피부감도를 소구한 스킨케어 캠페인.',
    array['오휘 더 퍼스트 제너츄어 : 피부감도 편'],
    31
  ),
  (
    'lg-hwisen-thinq', 'LG 휘센 인공지능 스스로에어컨 ThinQ', 'Production', 2018, 'Producer', 'LG전자',
    '제습·냉방·난방·공기청정 4종 컷으로 구성된 에어컨 캠페인.',
    array['LG 휘센 인공지능스스로에어컨 ThinQ : 제습 편', 'LG 휘센 인공지능스스로에어컨 ThinQ : 냉방 편', 'LG 휘센 인공지능스스로에어컨 ThinQ : 난방 편', 'LG 휘센 인공지능스스로에어컨 ThinQ : 공기청정 편'],
    32
  ),
  (
    'whoo-cheongidan', '후 천기단 화현 에센스 쿠션', 'Production', 2018, 'Producer', 'LG생활건강',
    '"세상 위에 빛나다"를 콘셉트로 한 쿠션 캠페인.',
    array['후 천기단 화현 에센스 쿠션 : 세상 위에 빛나다 편'],
    33
  ),
  (
    'benz-service', '메르세데스 벤츠 서비스', 'Production', 2019, 'Producer', '메르세데스 벤츠코리아',
    '"동행(Go Together)"을 콘셉트로 한 서비스 캠페인.',
    array['메르세데스 벤츠 서비스 : 동행(Go Together) 편'],
    34
  ),
  (
    'whoo-bichup', '후 비첩 순환 에센스', 'Production', 2019, 'Producer', 'LG생활건강',
    '"순환의 힘"을 소구한 에센스 캠페인.',
    array['후 비첩 순환 에센스 : 순환의 힘 편'],
    35
  ),
  (
    'ohui-first-ample', '오휘 더 퍼스트 앰플', 'Production', 2019, 'Producer', 'LG생활건강',
    '"빛의 시그니처"를 콘셉트로 한 앰플 캠페인.',
    array['오휘 더 퍼스트 앰플 : 빛의 시그니처 편'],
    36
  ),
  (
    'lotte-himart-20th', '롯데 하이마트', 'Production', 2020, 'Producer', '롯데 하이마트',
    '창립 20주년 세일 캠페인.',
    array['롯데하이마트 : 창립 20주년 세일 20년만의 기회 편'],
    37
  ),
  (
    'dongwon-tuna', '동원참치', 'Production', 2020, 'Producer', '동원 F&B',
    '"캔을 따"를 콘셉트로 한 브랜드 캠페인.',
    array['동원참치 : 캔을 따 편', '동원참치 : 캔을 따 Full 편', '동원참치 : 캔을 따 인터뷰 편'],
    38
  ),
  (
    'kanu-vanilla-latte', '카누 바닐라 라떼', 'Production', 2020, 'Producer', '동서식품',
    '"음~ 왜 이제 왔어요"를 콘셉트로 한 신제품 캠페인.',
    array['카누 바닐라 라떼 : 음~ 왜 이제 왔어요 편'],
    39
  ),
  (
    'duolac', '듀오락', 'Production', 2020, 'Producer', '듀오락',
    '우리나라 유산균 듀오락 캠페인.',
    array['듀오락 : 우리나라 유산균 듀오락 편', '듀오락 : 우리나라 유산균 듀오락 2편'],
    40
  ),
  (
    'porsche-911-timeless-machine', '포르쉐 911 Timeless Machine', 'Production', 2020, 'Producer', '포르쉐코리아',
    '오너들의 이야기를 담은 오너 스토리 시리즈.',
    array[
      '포르쉐 : 911 Timeless Machine_오너 스토리 종합 편', '포르쉐 : 911 Timeless Machine_오너 스토리 티저 편', '포르쉐 : 911 Timeless Machine_오너 스토리 신태윤 편',
      '포르쉐 : 911 Timeless Machine_오너 스토리 김택 편', '포르쉐 : 911 Timeless Machine_오너 스토리 전용훈 편', '포르쉐 : 911 Timeless Machine_오너 스토리 정규영 편'
    ],
    41
  ),
  (
    'kanu-signature', '카누 시그니처', 'Production', 2020, 'Producer', '동서식품',
    '프리미엄 라인 런칭 캠페인 (가치·언박싱·범퍼 컷).',
    array['가치', '카누 시그니처 : 언박싱 디자인 편', '카누 시그니처 : 언박싱 맛 편', '카누 시그니처 : 범퍼 A', '카누 시그니처 : 범퍼 B', '카누 시그니처 : 범퍼 C'],
    42
  ),
  (
    'pizza-alvolo', '피자알볼로', 'Production', 2020, 'Producer', '피자알볼로',
    '"본"을 콘셉트로 한 브랜드 캠페인.',
    array['피자알볼로 : 본 편'],
    43
  ),
  (
    'samsung-bespoke-dishwasher', '삼성 비스포크 식기세척기', 'Production', 2020, 'Producer', '삼성전자',
    '"당신이 바라던 식기세척기"를 소구한 런칭 캠페인.',
    array['삼성 비스포크 식기세척기 : 당신이 바라던 식기세척기 - TVC 편', '삼성 비스포크 식기세척기 : 당신이 바라던 식기세척기 - 디지털 편'],
    44
  ),
  (
    'ranking-dak', '랭킹닭컴', 'Production', 2020, 'Producer', '랭킹닭컴',
    '"나홀로이식당" 시리즈 캠페인.',
    array['랭킹닭컴 : 나홀로이식당_외국어ver 편', '랭킹닭컴 : 나홀로이식당_치팅데이 편', '랭킹닭컴 : 나홀로이식당_식단관리 편'],
    45
  ),
  (
    'jungkwanjang-2020', '정관장', 'Production', 2020, 'Producer', '한국인삼공사',
    '안성기, 유지태가 출연한 홍삼 브랜드 캠페인.',
    array['정관장 : 종합 편', '정관장 : 안성기 편', '정관장 : 유지태 편'],
    46
  ),
  (
    'sos-state-of-survival', 'S.O.S : 스테이트 오브 서바이벌', 'Production', 2020, 'Producer', '킹스그룹홀딩스',
    '혜리, 정우성이 출연한 모바일 게임 광고.',
    array['S.O.S : 스테이트 오브 서바이벌 : 티저 편', 'S.O.S : 스테이트 오브 서바이벌 : 티저 - 혜리 편', 'S.O.S : 스테이트 오브 서바이벌 : 티저 편 - 정우성 편', 'S.O.S : 스테이트 오브 서바이벌 : 혜리 편', 'S.O.S : 스테이트 오브 서바이벌 : 정우성 편'],
    48
  ),
  (
    'richam', '리챔', 'Production', 2020, 'Producer', '동원 F&B',
    '"햄맛챔피온리챔"과 "건강 총동원" 선물세트를 함께 소구한 캠페인.',
    array['리챔 : 햄맛 챔피온 리챔 15초 편', '리챔 : 햄맛 챔피온 리챔 30초 편', '동원 선물세트 : 건강 총동원 편'],
    49
  ),
  (
    'denmark-pocket-cheese', '덴마크 인 포켓치즈', 'Production', 2020, 'Producer', '동원 F&B',
    '"10초면 찢기에 충분해"를 소구한 신제품 캠페인.',
    array['덴마크 인 포켓치즈 : 10초면 찢기에 충분해 (15s_A) 편', '덴마크 인 포켓치즈 : 10초면 찢기에 충분해 (15s_B) 편', '덴마크 인 포켓치즈 : 10초면 찢기에 충분해 (full) 편'],
    50
  ),
  (
    'samsung-bespoke-induction', '삼성 비스포크 인덕션', 'Production', 2020, 'Producer', '삼성전자',
    '김이나가 출연한 "Kitchen for You" 캠페인.',
    array['삼성 비스포크 인덕션 : 김이나의 Kitchen for You 편'],
    51
  ),
  (
    'maxim-white-gold', '맥심 화이트골드', 'Production', 2020, 'Producer', '동서식품',
    '"나에게 부드러워지는 시간"을 콘셉트로 한 캠페인.',
    array['맥심 화이트골드 : 나에게 부드러워지는 시간 편'],
    52
  ),
  (
    'lotte-group', '롯데그룹', 'Production', 2020, 'Producer', '롯데그룹',
    '"함께 가는 친구, 롯데" 기업PR 캠페인.',
    array['롯데그룹 : 함께 가는 친구, 롯데 편'],
    53
  ),
  (
    'yogiyo-express', '요기요', 'Production', 2020, 'Producer', '딜리버리히어로코리아',
    '"익스프레스" 배달 서비스 캠페인.',
    array['요기요 : 익스프레스 라이더 편', '요기요 : 익스프레스 속도 편'],
    54
  ),
  (
    'porsche-taycan', '포르쉐 더 뉴 타이칸', 'Production', 2020, 'Producer', '포르쉐코리아',
    '"Seoul, Electrified"를 콘셉트로 한 타이칸 런칭 캠페인.',
    array['포르쉐 : 더 뉴 타이칸 : Seoul, Electrified 편', '포르쉐 : 더 뉴 타이칸 : Seoul, Electrified : 티저 편', '포르쉐 : 더 뉴 타이칸 : 영혼의 전율 편'],
    55
  ),
  (
    'dongwon-tuna-open', '동원참치', 'Production', 2020, 'Producer', '동원 F&B',
    '"동원이도 캔을 따!"를 콘셉트로 한 브랜드 캠페인.',
    array['동원참치 : 동원이도 캔을 따! 편'],
    100
  ),
  (
    'jungkwanjang-2021', '정관장', 'Production', 2021, 'Producer', '한국인삼공사',
    '한석규, 김성령이 출연한 "제자리" 캠페인.',
    array['정관장 : 제자리 - 한석규 편', '정관장 : 제자리 - 김성령 편', '정관장 : 제자리 - 정몰 편'],
    56
  ),
  (
    'nature-made', '네이처 메이드', 'Production', 2021, 'Producer', '한국오츠카제약',
    '"홈트", "배달음식" 등 일상 속 건강 캠페인.',
    array['네이처 메이드 : 홈트 편', '네이처 메이드 : 배달음식 편'],
    57
  ),
  (
    'beplain', '비플레인', 'Production', 2021, 'Producer', '비플레인',
    '녹두Song 캠페인.',
    array['비플레인 : 녹두Song 캠페인 편'],
    58
  ),
  (
    'myallri', '마이올리', 'Production', 2021, 'Producer', '다원에이치앤비',
    '건강기능식품 라인업 캠페인 (알티지 오메가3, 루테인, 비타민B, 프로바이오틱스 외).',
    array[
      '마이올리 : 나를 위한 케어레시피 편', '마이올리 : 나를 위한 케어레시피 2편',
      '마이올리 : 골든루트 밀크시슬 (feat.간건강) 편', '마이올리 : 코어 비타민B 플러스 (feat.활력) 편',
      '마이올리 : 프로바이틱스 (feat.장건강) 편', '마이올리 : 알티지 알래스카 오메가3 (feat.혈액순환) 편',
      '마이올리 : 슈퍼크리티컬 루테인 (feat.눈건강) 편', '마이올리 : 카마디 엑스투 (feat.뼈건강) 편'
    ],
    59
  ),
  (
    'woongjin-bookclub', '웅진북클럽', 'Production', 2021, 'Producer', '웅진씽크빅',
    '"독서의 기준"을 콘셉트로 한 브랜드 캠페인.',
    array['웅진북클럽 : 독서의 기준 편'],
    60
  ),
  -- Campaign 실제 경력. 사용자가 지정한 순서대로 정리했습니다.
  (
    'noroo-poster-challenge', '노루페인트 : 포스터 챌린지', 'Campaign', 2022, 'Copywriter', '노루페인트',
    '1회의 포스터 참여가 1m²의 페인트가 되어, 코로나로 사람들의 발길이 끊긴 전통시장에 페인트를 기부하는 #포스터챌린지 캠페인. 온라인에서의 참여가 실제 오프라인으로 이어져 세월의 흔적으로 낡고 벗겨진 벽면에 아티스트의 그래픽을 페인팅하여, 시장을 전시장으로 만들다.',
    array[
      '1회의 포스터 참여가 1m²의 페인트가 되어, 코로나로 사람들의 발길이 끊긴 전통시장에 페인트를 기부하는 #포스터챌린지 캠페인.',
      '온라인에서의 참여가 실제 오프라인으로 이어져 세월의 흔적으로 낡고 벗겨진 벽면에 아티스트의 그래픽을 페인팅하여, 시장을 전시장으로 만들다.'
    ],
    61
  ),
  (
    'lg-gram-class101', 'LG gram X CLASS101', 'Campaign', 2023, 'Copywriter', 'LG전자',
    '온라인 강좌 플랫폼 클래스101을 활용하여 다채로운 색감으로 사랑받는 작가 ''누아''와 함께 그램 360 클래스로 제품의 특장점을 전달하다.',
    array['온라인 강좌 플랫폼 클래스101을 활용하여 다채로운 색감으로 사랑받는 작가 ''누아''와 함께 그램 360 클래스로 제품의 특장점을 전달하다.'],
    62
  ),
  (
    'nike-worldcup-2022', 'NIKE : WORLD CUP 2022', 'Campaign', 2022, 'Copywriter', '나이키 코리아',
    'NIKE 너만의 무늬 [    ] 우리의 무기. 2022년 카타르 월드컵 모멘텀의 나이키 캠페인 "서로가 다르기에 우리는 더 강해진다"는 메시지로 승리를 뜨겁게 응원하며 국가대표 선수들을 하이라이팅하다.',
    array[
      'NIKE 너만의 무늬 [    ] 우리의 무기.',
      '2022년 카타르 월드컵 모멘텀의 나이키 캠페인 "서로가 다르기에 우리는 더 강해진다"는 메시지로 승리를 뜨겁게 응원하며 국가대표 선수들을 하이라이팅하다.'
    ],
    63
  ),
  (
    'nike-runners-helping-runners', 'NIKE : RUNNERS HELPING RUNNERS', 'Campaign', 2023, 'Copywriter', '나이키 코리아',
    '러닝에 도전하는 초보 러너 류준열의 Runners Helping Runners. 그의 목소리로 시작을 망설이는 많은 러너들에게 동기 부여와 도움이 되는 정보를 전달하는 캠페인',
    array[
      '러닝에 도전하는 초보 러너 류준열의 Runners Helping Runners.',
      '그의 목소리로 시작을 망설이는 많은 러너들에게 동기 부여와 도움이 되는 정보를 전달하는 캠페인'
    ],
    64
  ),
  (
    'nike-air-force-1-t1', 'NIKE : AIR FORCE 1 x T1', 'Content', 2023, 'Copywriter', '나이키 코리아',
    'NIKE Air Force 1 x T1. 각자의 게임 플레이 스타일처럼 개성 넘치게 나이키 에어포스1을 커스텀하는 T1 선수들의 모습을 담다.',
    array[
      'NIKE Air Force 1 x T1.',
      '각자의 게임 플레이 스타일처럼 개성 넘치게 나이키 에어포스1을 커스텀하는 T1 선수들의 모습을 담다.'
    ],
    65
  ),
  (
    'kakao-corporate-pr', '카카오 기업 PR : CAMPAIGN', 'Campaign', 2023, 'Copywriter', '카카오',
    '카카오 기업 PR 캠페인 [1cm² 속 보이지 않는 노력]. 이미 모두의 일상이 된 카카오톡 앱, 그 뒤에서 보이지 않지만 지금 이 순간도 트래픽과 씨름하는 카카오 메시징 파트의 생생한 현장 이야기 - 365일 24시간 카톡을 지키는 그들의 노력을 담다.',
    array[
      '카카오 기업 PR 캠페인 [1cm² 속 보이지 않는 노력].',
      '이미 모두의 일상이 된 카카오톡 앱, 그 뒤에서 보이지 않지만 지금 이 순간도 트래픽과 씨름하는 카카오 메시징 파트의 생생한 현장 이야기 - 365일 24시간 카톡을 지키는 그들의 노력을 담다.'
    ],
    66
  ),
  (
    'nike-hoshi-style-story', 'NIKE : HOSHI''S STYLE STORY', 'Content', 2023, 'Copywriter', '나이키 코리아',
    'NIKE 세븐틴 호시의 스타일 스토리. "내가 되고 싶은 나처럼 옷을 입는다"는 세븐틴의 호시. 그의 스타일과 철학을 스토리 필름으로 담아내고 보메로5를 활용한 세 가지 룩으로 스타일링에 대한 영감을 주다.',
    array[
      'NIKE 세븐틴 호시의 스타일 스토리.',
      '"내가 되고 싶은 나처럼 옷을 입는다"는 세븐틴의 호시.',
      '그의 스타일과 철학을 스토리 필름으로 담아내고 보메로5를 활용한 세 가지 룩으로 스타일링에 대한 영감을 주다.'
    ],
    67
  ),
  (
    'lotteria-thanks-burger', '롯데리아 : THANKS BURGER', 'Campaign', 2023, 'Copywriter', '롯데리아',
    '롯데리아에서 한 해 가장 사랑받은 버거를 재출시하며 캠페인 영상부터 나만의 캐릭터로 카드를 만드는 사이트까지 롯데리아를 매개체로 연말연시 고마운 사람들에게 땡스~한 마음을 서로 전할 수 있는 IMC 캠페인을 설계.',
    array['롯데리아에서 한 해 가장 사랑받은 버거를 재출시하며 캠페인 영상부터 나만의 캐릭터로 카드를 만드는 사이트까지 롯데리아를 매개체로 연말연시 고마운 사람들에게 땡스~한 마음을 서로 전할 수 있는 IMC 캠페인을 설계.'],
    68
  ),
  (
    'nike-airmax-dn', 'NIKE : AIRMAX Dn', 'Content', 2024, 'Copywriter', '나이키 코리아',
    '과감한 개성의 나이키 에어맥스Dn 스타일 컨텐츠. 케이팝 아티스트들의 스타일링을 책임지고 있는 스타일리스트 김영진과 모델 채종석의 룩을 통해 에어맥스 Dn만의 독보적인 스타일을 표현하다.',
    array[
      '과감한 개성의 나이키 에어맥스Dn 스타일 컨텐츠.',
      '케이팝 아티스트들의 스타일링을 책임지고 있는 스타일리스트 김영진과 모델 채종석의 룩을 통해 에어맥스 Dn만의 독보적인 스타일을 표현하다.'
    ],
    69
  ),
  (
    'lg-gram-go-busan', 'LG gram GO in Busan', 'Campaign', 2023, 'Copywriter', 'LG전자',
    'LG 그램을 더 많은 고객들이 체험해 볼 수 있도록 찾아가는 그램고 팝업 스토어 진행. 코레일과 협업하여 부산 KTX역 내에 팝업 스토어를 설치하여 한 달 간 운영. 애써 찾아와야 하는 팝업 스토어의 한계를 넘어 총 12만명에게 노트북 체험 기회 제공',
    array[
      'LG 그램을 더 많은 고객들이 체험해 볼 수 있도록 찾아가는 그램고 팝업 스토어 진행.',
      '코레일과 협업하여 부산 KTX역 내에 팝업 스토어를 설치하여 한 달 간 운영.',
      '애써 찾아와야 하는 팝업 스토어의 한계를 넘어 총 12만명에게 노트북 체험 기회 제공'
    ],
    70
  ),
  (
    'lg-gram-go-ai-travel', 'LG gram GO : AI 상상여행사', 'Campaign', 2024, 'Copywriter', 'LG전자',
    'gramGO AI 상상여행사, AI를 활용한 BTL 캠페인. 신제품 LG 그램 프로의 고성능을 체험시키기 위해 음악, 이미지, 대화형 3종의 생성형 AI를 해치와 함께 여행을 떠나듯 경험해보는 여행사 컨셉의 체험형 캠페인 진행',
    array[
      'gramGO AI 상상여행사, AI를 활용한 BTL 캠페인.',
      '신제품 LG 그램 프로의 고성능을 체험시키기 위해 음악, 이미지, 대화형 3종의 생성형 AI를 해치와 함께 여행을 떠나듯 경험해보는 여행사 컨셉의 체험형 캠페인 진행'
    ],
    71
  ),
  (
    'lg-gram-vi-beop', 'LG gram VI법', 'Content', 2025, 'Copywriter', 'LG전자',
    'LG 그램 AI를 활용하는 나만의 VI법을 소개하는 그램VI법 컨텐츠 제작. 대학생과 직장인들을 타겟으로 총 8편 에피소드로 구성. LG 그램 Pro의 핵심 AI 기능들을 다양한 방법으로 소개한다.',
    array[
      'LG 그램 AI를 활용하는 나만의 VI법을 소개하는 그램VI법 컨텐츠 제작.',
      '대학생과 직장인들을 타겟으로 총 8편 에피소드로 구성.',
      'LG 그램 Pro의 핵심 AI 기능들을 다양한 방법으로 소개한다.'
    ],
    72
  ),
  (
    'lg-gram-vi-beop-class', 'LG gram VI법 CLASS', 'Content', 2025, 'Copywriter', 'LG전자',
    '새롭게 출시한 LG 그램 Pro의 혁신적 성능을 숏폼형 클래스로 소개하는 ''LG 그램VI법 클래스'' 컨텐츠 제작. 구독자 20.7만의 테크 유튜버 ''잇츠 오케이 민성''이 새로워진 LG 그램 Pro의 CPU 특징, 멀티태스킹 비법, 4K 영상 편집법을 누구나 이해하기 쉽도록 재미있게 소개하다.',
    array[
      '새롭게 출시한 LG 그램 Pro의 혁신적 성능을 숏폼형 클래스로 소개하는 ''LG 그램VI법 클래스'' 컨텐츠 제작.',
      '구독자 20.7만의 테크 유튜버 ''잇츠 오케이 민성''이 새로워진 LG 그램 Pro의 CPU 특징, 멀티태스킹 비법, 4K 영상 편집법을 누구나 이해하기 쉽도록 재미있게 소개하다.'
    ],
    73
  ),
  (
    'gshock-iconic-styles', 'G-SHOCK ICONIC STYLES', 'Content', 2025, 'Copywriter', '지코스모',
    'G-Shock 아이코닉 스타일 시리즈를 소개하는 콘텐츠 제작. 아이돌 그룹 엔플라잉의 리더이자, ''선재 업고 튀어''에서 배우로 다양한 분야에 도전하며 바쁜 일정을 소화하는 이승협. G-Shock과 함께하는 그의 일상을 담아내며 오랜 시간 사랑받은 아이코닉 스타일처럼 시대를 뛰어넘어 사랑받는 아티스트가 되기 위해 노력하는 그만의 스토리로 도전 그리고 스타일에 대한 영감을 주다.',
    array[
      'G-Shock 아이코닉 스타일 시리즈를 소개하는 콘텐츠 제작.',
      '아이돌 그룹 엔플라잉의 리더이자, ''선재 업고 튀어''에서 배우로 다양한 분야에 도전하며 바쁜 일정을 소화하는 이승협.',
      'G-Shock과 함께하는 그의 일상을 담아내며 오랜 시간 사랑받은 아이코닉 스타일처럼 시대를 뛰어넘어 사랑받는 아티스트가 되기 위해 노력하는 그만의 스토리로 도전 그리고 스타일에 대한 영감을 주다.'
    ],
    74
  )
on conflict (slug) do nothing;

-- TVCF 실제 영상 썸네일 이미지 URL을 cover_image에 반영합니다.
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/1.jpeg' where slug = 'lg-prael';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/2.jpeg' where slug = 'ohui-first-genature';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/3.jpeg' where slug = 'lg-hwisen-thinq';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/4.jpeg' where slug = 'whoo-cheongidan';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/5.jpeg' where slug = 'benz-service';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/6.jpeg' where slug = 'whoo-bichup';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/7.jpeg' where slug = 'ohui-first-ample';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/8.jpeg' where slug = 'lotte-himart-20th';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/9.jpeg' where slug = 'dongwon-tuna';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/10.jpeg' where slug = 'kanu-vanilla-latte';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/11.jpeg' where slug = 'duolac';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/12.jpeg' where slug = 'porsche-911-timeless-machine';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/13.jpeg' where slug = 'kanu-signature';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/14.jpeg' where slug = 'pizza-alvolo';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/15.jpeg' where slug = 'samsung-bespoke-dishwasher';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/16.jpeg' where slug = 'ranking-dak';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/17.jpeg' where slug = 'jungkwanjang-2020';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/18.jpeg' where slug = 'sos-state-of-survival';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/19.jpeg' where slug = 'richam';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/20.jpeg' where slug = 'denmark-pocket-cheese';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/21.jpeg' where slug = 'samsung-bespoke-induction';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/22.jpeg' where slug = 'maxim-white-gold';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/23.jpeg' where slug = 'lotte-group';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/24.jpeg' where slug = 'yogiyo-express';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/25.jpeg' where slug = 'porsche-taycan';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/31.jpeg' where slug = 'dongwon-tuna-open';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/26.jpeg' where slug = 'jungkwanjang-2021';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/27.jpeg' where slug = 'nature-made';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/28.jpeg' where slug = 'beplain';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/29.jpeg' where slug = 'myallri';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/30.jpeg' where slug = 'woongjin-bookclub';

-- Campaign 썸네일 이미지 URL을 cover_image에 반영합니다 (사용자가 지정한 순서대로 1~14).
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/1.avif' where slug = 'noroo-poster-challenge';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/3.avif' where slug = 'lg-gram-class101';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/2.avif' where slug = 'nike-worldcup-2022';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/4.avif' where slug = 'nike-runners-helping-runners';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/1.avif' where slug = 'nike-air-force-1-t1';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/5.avif' where slug = 'kakao-corporate-pr';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/2.avif' where slug = 'nike-hoshi-style-story';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/6.avif' where slug = 'lotteria-thanks-burger';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/3.avif' where slug = 'nike-airmax-dn';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/7.avif' where slug = 'lg-gram-go-busan';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/8.avif' where slug = 'lg-gram-go-ai-travel';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/4.avif' where slug = 'lg-gram-vi-beop';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/5.avif' where slug = 'lg-gram-vi-beop-class';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/6.avif' where slug = 'gshock-iconic-styles';

-- Campaign 본문에 추가로 넣을 영상/에디토리얼 링크입니다 (dcr8co.com 포트폴리오 단순 링크는 제외).
update works set links = '[{"label":"노루페인트 ''포스터챌린지'' 리캡 영상","url":"https://www.youtube.com/watch?v=Uzo8pRUjMHk"}]'::jsonb where slug = 'noroo-poster-challenge';
update works set stats = '[
  {"label":"Visits","value":"43K+"},
  {"label":"Participants","value":"10K+"},
  {"label":"Award","value":"A.N.D. AWARD GRAND PRIX 2022 (디지털 광고 캠페인 부문 이벤트 분야)"}
]'::jsonb where slug = 'noroo-poster-challenge';
update works set gallery = '[
  {
    "heading":"Campaign Microsite",
    "images":[{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/1.avif","width":1300,"height":590}]
  },
  {
    "heading":"Poster Making Process",
    "images":[{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/2.avif","width":1314,"height":594}]
  },
  {
    "heading":"User-Generated Images",
    "images":[{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/gallery.avif","width":1214,"height":714}]
  },
  {
    "heading":"Market Installation",
    "images":[{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/4.avif","width":1206,"height":1752}]
  }
]'::jsonb where slug = 'noroo-poster-challenge';
update works set links = '[
  {"label":"NIKE JOURNAL : 축구로 하나되는 사람들, 풋볼 커뮤니티","url":"https://www.nike.com/kr/a/ho22-football-community-editorial"},
  {"label":"NIKE : 너만의 무늬 우리의 무기 - CODE KUNST 편","url":"https://tvcf.co.kr/play/bh01715-915419"},
  {"label":"NIKE : 너만의 무늬 우리의 무기 - 3인 편","url":"https://tvcf.co.kr/play/ah01624-915418"},
  {"label":"NIKE : 너만의 무늬 우리의 무기 - HWANG HEECHAN 편","url":"https://tvcf.co.kr/play/bh01351-915415"}
]'::jsonb where slug = 'nike-worldcup-2022';

update works set gallery = '[
  {
    "carousel":true,
    "images":[
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/1.avif","width":1960,"height":996},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/2.avif","width":1960,"height":996},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/3.avif","width":1960,"height":996},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/4.avif","width":1960,"height":996},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/5.avif","width":1960,"height":996},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/6.avif","width":1960,"height":996},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/7.avif","width":1960,"height":996},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/8.avif","width":1960,"height":996},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/9.avif","width":1960,"height":996},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/10.avif","width":1960,"height":996}
    ]
  }
]'::jsonb where slug = 'nike-worldcup-2022';

update works set gallery = '[
  {
    "heading":"NIKE RUNNERS HELPING RUNNERS (Feat. RYU JUNYEOL)",
    "columns":3,
    "images":[
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/1.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/2.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/3.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/4.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/5.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/6.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/7.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/8.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/9.avif","width":1713,"height":964}
    ]
  },
  {
    "heading":"NIKE A RUNNER GUIDE (with. RYU JUNYEOL)",
    "columns":3,
    "images":[
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/10.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/11.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/12.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/13.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/14.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/15.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/16.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/17.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/18.avif","width":1713,"height":964}
    ]
  }
]'::jsonb where slug = 'nike-runners-helping-runners';
update works set links = '[
  {"label":"NIKE : 러너스 헬핑 러너스 - 류준열 편","url":"https://tvcf.co.kr/play/bh16394-901571"},
  {"label":"NIKE : 러너스 헬핑 러너스 - 러너 가이드 편","url":"https://tvcf.co.kr/play/ah26303-901570"},
  {"label":"NIKE : 러너스 헬핑 러너스 - 러너 가이드 편 (세로)","url":"https://tvcf.co.kr/play/bh24594-900751"}
]'::jsonb where slug = 'nike-runners-helping-runners';
update works set links = '[{"label":"유튜브에서 영상 보기","url":"https://www.youtube.com/watch?v=Vy_--uYhmwc"}]'::jsonb where slug = 'lotteria-thanks-burger';
update works set links = '[{"label":"유튜브에서 영상 보기","url":"https://www.youtube.com/watch?v=anuBmMuAM_w"}]'::jsonb where slug = 'lg-gram-go-ai-travel';
update works set links = '[
  {"label":"LG 그램 : 그램VI법_Teaser편","url":"https://tvcf.co.kr/play/bh07658-973485"},
  {"label":"그램VI법01_에러 난 과제 파일 구출법","url":"https://tvcf.co.kr/play/bh12431-970127"},
  {"label":"그램VI법02_시험 준비 교수님 소환술","url":"https://tvcf.co.kr/play/bh12795-970131"},
  {"label":"그램VI법03_과제 지옥 탈출법","url":"https://tvcf.co.kr/play/ah12886-970132"},
  {"label":"그램VI법04_일잘러의 회의 준비법","url":"https://tvcf.co.kr/play/ah15221-970658"},
  {"label":"그램VI법05_휴가 복귀 후 밀린 메일 정리법","url":"https://tvcf.co.kr/play/ah11265-972014"},
  {"label":"그램VI법06_경력같은 신입사원 되는 법","url":"https://tvcf.co.kr/play/bh11538-972017"},
  {"label":"그램VI법07_누구보다 빠르게 남들과는 다른 편집법","url":"https://tvcf.co.kr/play/ah23604-972040"},
  {"label":"그램VI법08_쿨하게 무릎 책상 쓰기","url":"https://tvcf.co.kr/play/ah04686-972852"}
]'::jsonb where slug = 'lg-gram-vi-beop';
update works set links = '[
  {"label":"잇츠 오케이의 그램VI법 01_애로우? 루나? CPU 뭐가 다르지?","url":"https://tvcf.co.kr/play/ah11083-975012"},
  {"label":"잇츠 오케이의 그램VI법 02_프로들을 위한 멀티태스킹","url":"https://tvcf.co.kr/play/bh11174-975013"},
  {"label":"잇츠 오케이의 그램VI법 03_4K 편집 가능한 그램 Pro 외장그래픽","url":"https://tvcf.co.kr/play/ah11265-975014"}
]'::jsonb where slug = 'lg-gram-vi-beop-class';
update works set links = '[
  {"label":"G-SHOCK : ICONIC STYLES : LEE SEUNG HYUB 가로편","url":"https://tvcf.co.kr/play/ah1548-979206"},
  {"label":"G-SHOCK : ICONIC STYLES : LEE SEUNG HYUB 세로편","url":"https://tvcf.co.kr/play/ah1366-979204"}
]'::jsonb where slug = 'gshock-iconic-styles';
update works set links = '[{"label":"LG그램 360 클래스 바로가기","url":"https://class101.net/ko/products/638f178f86a5d10015f627cc"}]'::jsonb where slug = 'lg-gram-class101';

update works set gallery = '[
  {
    "heading":"LG gram 360 x CLASS101 (feat. Libere_Nuage)",
    "columns":3,
    "images":[
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/1.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/2.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/3.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/4.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/5.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/6.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/7.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/8.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/9.avif","width":1713,"height":964}
    ]
  },
  {
    "heading":"Event Microsite",
    "images":[{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/sub1.avif","width":1112,"height":506}]
  }
]'::jsonb where slug = 'lg-gram-class101';

-- TVCF 개별 영상 재생 URL을 images에 반영합니다 (description과 같은 순서).
update works set images = array['https://tvcf.co.kr/play/ah05745-718482', 'https://tvcf.co.kr/play/ah14201-718460'] where slug = 'lg-prael';
update works set images = array['https://tvcf.co.kr/play/bh03017-725943'] where slug = 'ohui-first-genature';
update works set images = array['https://tvcf.co.kr/play/bh03293-729147', 'https://tvcf.co.kr/play/ah03222-729146', 'https://tvcf.co.kr/play/bh03151-729145', 'https://tvcf.co.kr/play/ah03089-729144'] where slug = 'lg-hwisen-thinq';
update works set images = array['https://tvcf.co.kr/play/bh0775-731311'] where slug = 'whoo-cheongidan';
update works set images = array['https://tvcf.co.kr/play/bh01336-739519'] where slug = 'benz-service';
update works set images = array['https://tvcf.co.kr/play/bh03855-739455'] where slug = 'whoo-bichup';
update works set images = array['https://tvcf.co.kr/play/ah22804-745040'] where slug = 'ohui-first-ample';
update works set images = array['https://tvcf.co.kr/play/ah03229-771846'] where slug = 'lotte-himart-20th';
update works set images = array['https://tvcf.co.kr/play/ah23363-780048', 'https://tvcf.co.kr/play/ah24207-780160', 'https://tvcf.co.kr/play/bh14278-780161'] where slug = 'dongwon-tuna';
update works set images = array['https://tvcf.co.kr/play/bh15819-780783'] where slug = 'kanu-vanilla-latte';
update works set images = array['https://tvcf.co.kr/play/ah04342-783362', 'https://tvcf.co.kr/play/ah01967-784628'] where slug = 'duolac';
update works set images = array['https://tvcf.co.kr/play/bh1354-784805', 'https://tvcf.co.kr/play/ah0984-784814', 'https://tvcf.co.kr/play/bh06793-787597', 'https://tvcf.co.kr/play/ah06722-787596', 'https://tvcf.co.kr/play/bh12458-787035', 'https://tvcf.co.kr/play/ah12387-787034'] where slug = 'porsche-911-timeless-machine';
update works set images = array['https://tvcf.co.kr/play/bh05533-786579', 'https://tvcf.co.kr/play/ah13501-786550', 'https://tvcf.co.kr/play/bh03439-786549', 'https://tvcf.co.kr/play/ah03643-786552', 'https://tvcf.co.kr/play/ah03785-786554', 'https://tvcf.co.kr/play/bh03714-786553'] where slug = 'kanu-signature';
update works set images = array['https://tvcf.co.kr/play/bh02311-791433'] where slug = 'pizza-alvolo';
update works set images = array['https://tvcf.co.kr/play/bh05538-794179', 'https://tvcf.co.kr/play/bh06097-794187'] where slug = 'samsung-bespoke-dishwasher';
update works set images = array['https://tvcf.co.kr/play/bh02311-796433', 'https://tvcf.co.kr/play/ah02382-796434', 'https://tvcf.co.kr/play/ah02524-796436'] where slug = 'ranking-dak';
update works set images = array['https://tvcf.co.kr/play/ah3167-800502', 'https://tvcf.co.kr/play/ah405-800500', 'https://tvcf.co.kr/play/bh27924-800499'] where slug = 'jungkwanjang-2020';
update works set images = array['https://tvcf.co.kr/play/ah16085-803176', 'https://tvcf.co.kr/play/bh12164-805427', 'https://tvcf.co.kr/play/ah12083-805426', 'https://tvcf.co.kr/play/bh17128-805989', 'https://tvcf.co.kr/play/ah400-806000'] where slug = 'sos-state-of-survival';
update works set summary = '"햄맛챔피온리챔"과 "건강 총동원" 선물세트를 함께 소구한 캠페인.', description = array['햄맛챔피온리챔 15초', '햄맛챔피온리챔 30초', '건강 총동원'], images = array['https://tvcf.co.kr/play/ah11122-805614', 'https://tvcf.co.kr/play/bh11041-805613', 'https://tvcf.co.kr/play/ah15767-802772'] where slug = 'richam';
update works set images = array['https://tvcf.co.kr/play/bh17286-806591', 'https://tvcf.co.kr/play/ah17367-806592', 'https://tvcf.co.kr/play/ah27205-806590'] where slug = 'denmark-pocket-cheese';
update works set images = array['https://tvcf.co.kr/play/bh26489-808081'] where slug = 'samsung-bespoke-induction';
update works set images = array['https://tvcf.co.kr/play/bh22322-808029'] where slug = 'maxim-white-gold';
update works set images = array['https://tvcf.co.kr/play/ah11765-808122'] where slug = 'lotte-group';
update works set images = array['https://tvcf.co.kr/play/bh16646-809483', 'https://tvcf.co.kr/play/ah2644-810508'] where slug = 'yogiyo-express';
update works set images = array['https://tvcf.co.kr/play/ah1968-810512', 'https://tvcf.co.kr/play/ah25604-809670', 'https://tvcf.co.kr/play/bh06326-811879'] where slug = 'porsche-taycan';
update works set images = array['https://tvcf.co.kr/play/ah06169-794288'] where slug = 'dongwon-tuna-open';
update works set images = array['https://tvcf.co.kr/play/bh1563-815507', 'https://tvcf.co.kr/play/ah1482-815506', 'https://tvcf.co.kr/play/bh1401-815505'] where slug = 'jungkwanjang-2021';
update works set images = array['https://tvcf.co.kr/play/bh04881-816361', 'https://tvcf.co.kr/play/bh17128-816089'] where slug = 'nature-made';
update works set images = array['https://tvcf.co.kr/play/bh04084-839751'] where slug = 'beplain';
update works set images = array['https://tvcf.co.kr/play/ah03047-845538', 'https://tvcf.co.kr/play/ah25605-850770', 'https://tvcf.co.kr/play/bh03443-845543', 'https://tvcf.co.kr/play/bh03281-845541', 'https://tvcf.co.kr/play/ah13209-845540', 'https://tvcf.co.kr/play/ah14962-850362', 'https://tvcf.co.kr/play/ah24809-850360', 'https://tvcf.co.kr/play/bh15043-850363'] where slug = 'myallri';
update works set images = array['https://tvcf.co.kr/play/bh14248-845053'] where slug = 'woongjin-bookclub';
