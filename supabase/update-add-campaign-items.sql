-- Campaign 카테고리 실제 경력 14건을 추가합니다.
-- Supabase 대시보드 SQL Editor에서 그대로 실행하세요.
-- (이미 실행된 마이그레이션 파일은 절대 재실행/수정하지 않습니다. 새로운 변경은 항상 새 파일로 만듭니다.)

insert into works (slug, title, category, year, role, client, summary, description, sort_order)
values
  (
    'noroo-poster-challenge', '노루페인트 : 포스터 챌린지', 'Campaign', 2022, 'Copywriter', '노루페인트',
    '1회의 포스터 참여가 1m²의 페인트가 되어, 코로나로 사람들의 발길이 끊긴 전통시장에 페인트를 기부하는 #포스터챌린지 캠페인. 온라인에서의 참여가 실제 오프라인으로 이어져 세월의 흔적으로 낡고 벗겨진 벽면에 아티스트의 그래픽을 페인팅하여, 시장을 전시장으로 만들다.',
    array['1회의 포스터 참여가 1m²의 페인트가 되어, 코로나로 사람들의 발길이 끊긴 전통시장에 페인트를 기부하는 #포스터챌린지 캠페인. 온라인에서의 참여가 실제 오프라인으로 이어져 세월의 흔적으로 낡고 벗겨진 벽면에 아티스트의 그래픽을 페인팅하여, 시장을 전시장으로 만들다.'],
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
    array['NIKE 너만의 무늬 [    ] 우리의 무기. 2022년 카타르 월드컵 모멘텀의 나이키 캠페인 "서로가 다르기에 우리는 더 강해진다"는 메시지로 승리를 뜨겁게 응원하며 국가대표 선수들을 하이라이팅하다.'],
    63
  ),
  (
    'nike-runners-helping-runners', 'NIKE : RUNNERS HELPING RUNNERS', 'Campaign', 2023, 'Copywriter', '나이키 코리아',
    '러닝에 도전하는 초보 러너 류준열의 Runners Helping Runners. 그의 목소리로 시작을 망설이는 많은 러너들에게 동기 부여와 도움이 되는 정보를 전달하는 캠페인',
    array['러닝에 도전하는 초보 러너 류준열의 Runners Helping Runners. 그의 목소리로 시작을 망설이는 많은 러너들에게 동기 부여와 도움이 되는 정보를 전달하는 캠페인'],
    64
  ),
  (
    'nike-air-force-1-t1', 'NIKE : AIR FORCE 1 x T1', 'Campaign', 2023, 'Copywriter', '나이키 코리아',
    'NIKE Air Force 1 x T1. 각자의 게임 플레이 스타일처럼 개성 넘치게 나이키 에어포스1을 커스텀하는 T1 선수들의 모습을 담다.',
    array['NIKE Air Force 1 x T1. 각자의 게임 플레이 스타일처럼 개성 넘치게 나이키 에어포스1을 커스텀하는 T1 선수들의 모습을 담다.'],
    65
  ),
  (
    'kakao-corporate-pr', '카카오 기업 PR : CAMPAIGN', 'Campaign', 2023, 'Copywriter', '카카오',
    '카카오 기업 PR 캠페인 [1cm² 속 보이지 않는 노력]. 이미 모두의 일상이 된 카카오톡 앱, 그 뒤에서 보이지 않지만 지금 이 순간도 트래픽과 씨름하는 카카오 메시징 파트의 생생한 현장 이야기 - 365일 24시간 카톡을 지키는 그들의 노력을 담다.',
    array['카카오 기업 PR 캠페인 [1cm² 속 보이지 않는 노력]. 이미 모두의 일상이 된 카카오톡 앱, 그 뒤에서 보이지 않지만 지금 이 순간도 트래픽과 씨름하는 카카오 메시징 파트의 생생한 현장 이야기 - 365일 24시간 카톡을 지키는 그들의 노력을 담다.'],
    66
  ),
  (
    'nike-hoshi-style-story', 'NIKE : HOSHI''S STYLE STORY', 'Campaign', 2023, 'Copywriter', '나이키 코리아',
    'NIKE 세븐틴 호시의 스타일 스토리. "내가 되고 싶은 나처럼 옷을 입는다"는 세븐틴의 호시. 그의 스타일과 철학을 스토리 필름으로 담아내고 보메로5를 활용한 세 가지 룩으로 스타일링에 대한 영감을 주다.',
    array['NIKE 세븐틴 호시의 스타일 스토리. "내가 되고 싶은 나처럼 옷을 입는다"는 세븐틴의 호시. 그의 스타일과 철학을 스토리 필름으로 담아내고 보메로5를 활용한 세 가지 룩으로 스타일링에 대한 영감을 주다.'],
    67
  ),
  (
    'lotteria-thanks-burger', '롯데리아 : THANKS BURGER', 'Campaign', 2023, 'Copywriter', '롯데리아',
    '롯데리아에서 한 해 가장 사랑받은 버거를 재출시하며 캠페인 영상부터 나만의 캐릭터로 카드를 만드는 사이트까지 롯데리아를 매개체로 연말연시 고마운 사람들에게 땡스~한 마음을 서로 전할 수 있는 IMC 캠페인을 설계.',
    array['롯데리아에서 한 해 가장 사랑받은 버거를 재출시하며 캠페인 영상부터 나만의 캐릭터로 카드를 만드는 사이트까지 롯데리아를 매개체로 연말연시 고마운 사람들에게 땡스~한 마음을 서로 전할 수 있는 IMC 캠페인을 설계.'],
    68
  ),
  (
    'nike-airmax-dn', 'NIKE : AIRMAX Dn', 'Campaign', 2024, 'Copywriter', '나이키 코리아',
    '과감한 개성의 나이키 에어맥스Dn 스타일 컨텐츠. 케이팝 아티스트들의 스타일링을 책임지고 있는 스타일리스트 김영진과 모델 채종석의 룩을 통해 에어맥스 Dn만의 독보적인 스타일을 표현하다.',
    array['과감한 개성의 나이키 에어맥스Dn 스타일 컨텐츠. 케이팝 아티스트들의 스타일링을 책임지고 있는 스타일리스트 김영진과 모델 채종석의 룩을 통해 에어맥스 Dn만의 독보적인 스타일을 표현하다.'],
    69
  ),
  (
    'lg-gram-go-busan', 'LG gram GO in Busan', 'Campaign', 2023, 'Copywriter', 'LG전자',
    'LG 그램을 더 많은 고객들이 체험해 볼 수 있도록 찾아가는 그램고 팝업 스토어 진행. 코레일과 협업하여 부산 KTX역 내에 팝업 스토어를 설치하여 한 달 간 운영. 애써 찾아와야 하는 팝업 스토어의 한계를 넘어 총 12만명에게 노트북 체험 기회 제공',
    array['LG 그램을 더 많은 고객들이 체험해 볼 수 있도록 찾아가는 그램고 팝업 스토어 진행. 코레일과 협업하여 부산 KTX역 내에 팝업 스토어를 설치하여 한 달 간 운영. 애써 찾아와야 하는 팝업 스토어의 한계를 넘어 총 12만명에게 노트북 체험 기회 제공'],
    70
  ),
  (
    'lg-gram-go-ai-travel', 'LG gram GO : AI 상상여행사', 'Campaign', 2024, 'Copywriter', 'LG전자',
    'gramGO AI 상상여행사, AI를 활용한 BTL 캠페인. 신제품 LG 그램 프로의 고성능을 체험시키기 위해 음악, 이미지, 대화형 3종의 생성형 AI를 해치와 함께 여행을 떠나듯 경험해보는 여행사 컨셉의 체험형 캠페인 진행',
    array['gramGO AI 상상여행사, AI를 활용한 BTL 캠페인. 신제품 LG 그램 프로의 고성능을 체험시키기 위해 음악, 이미지, 대화형 3종의 생성형 AI를 해치와 함께 여행을 떠나듯 경험해보는 여행사 컨셉의 체험형 캠페인 진행'],
    71
  ),
  (
    'lg-gram-vi-beop', 'LG gram VI법', 'Campaign', 2025, 'Copywriter', 'LG전자',
    'LG 그램 AI를 활용하는 나만의 VI법을 소개하는 그램VI법 컨텐츠 제작. 대학생과 직장인들을 타겟으로 총 8편 에피소드로 구성. LG 그램 Pro의 핵심 AI 기능들을 다양한 방법으로 소개한다.',
    array['LG 그램 AI를 활용하는 나만의 VI법을 소개하는 그램VI법 컨텐츠 제작. 대학생과 직장인들을 타겟으로 총 8편 에피소드로 구성. LG 그램 Pro의 핵심 AI 기능들을 다양한 방법으로 소개한다.'],
    72
  ),
  (
    'lg-gram-vi-beop-class', 'LG gram VI법 CLASS', 'Campaign', 2025, 'Copywriter', 'LG전자',
    '새롭게 출시한 LG 그램 Pro의 혁신적 성능을 숏폼형 클래스로 소개하는 ''LG 그램VI법 클래스'' 컨텐츠 제작. 구독자 20.7만의 테크 유튜버 ''잇츠 오케이 민성''이 새로워진 LG 그램 Pro의 CPU 특징, 멀티태스킹 비법, 4K 영상 편집법을 누구나 이해하기 쉽도록 재미있게 소개하다.',
    array['새롭게 출시한 LG 그램 Pro의 혁신적 성능을 숏폼형 클래스로 소개하는 ''LG 그램VI법 클래스'' 컨텐츠 제작. 구독자 20.7만의 테크 유튜버 ''잇츠 오케이 민성''이 새로워진 LG 그램 Pro의 CPU 특징, 멀티태스킹 비법, 4K 영상 편집법을 누구나 이해하기 쉽도록 재미있게 소개하다.'],
    73
  ),
  (
    'gshock-iconic-styles', 'G-SHOCK ICONIC STYLES', 'Campaign', 2025, 'Copywriter', '지코스모',
    'G-Shock 아이코닉 스타일 시리즈를 소개하는 콘텐츠 제작. 아이돌 그룹 엔플라잉의 리더이자, ''선재 업고 튀어''에서 배우로 다양한 분야에 도전하며 바쁜 일정을 소화하는 이승협. G-Shock과 함께하는 그의 일상을 담아내며 오랜 시간 사랑받은 아이코닉 스타일처럼 시대를 뛰어넘어 사랑받는 아티스트가 되기 위해 노력하는 그만의 스토리로 도전 그리고 스타일에 대한 영감을 주다.',
    array['G-Shock 아이코닉 스타일 시리즈를 소개하는 콘텐츠 제작. 아이돌 그룹 엔플라잉의 리더이자, ''선재 업고 튀어''에서 배우로 다양한 분야에 도전하며 바쁜 일정을 소화하는 이승협. G-Shock과 함께하는 그의 일상을 담아내며 오랜 시간 사랑받은 아이코닉 스타일처럼 시대를 뛰어넘어 사랑받는 아티스트가 되기 위해 노력하는 그만의 스토리로 도전 그리고 스타일에 대한 영감을 주다.'],
    74
  )
on conflict (slug) do nothing;

-- Campaign 썸네일 이미지 URL을 cover_image에 반영합니다 (사용자가 지정한 순서대로 1~14).
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/1.jpeg' where slug = 'noroo-poster-challenge';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/2.jpeg' where slug = 'lg-gram-class101';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/3.jpeg' where slug = 'nike-worldcup-2022';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/4.jpeg' where slug = 'nike-runners-helping-runners';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/5.jpeg' where slug = 'nike-air-force-1-t1';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/6.jpeg' where slug = 'kakao-corporate-pr';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/7.jpeg' where slug = 'nike-hoshi-style-story';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/8.jpeg' where slug = 'lotteria-thanks-burger';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/9.jpeg' where slug = 'nike-airmax-dn';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/10.jpeg' where slug = 'lg-gram-go-busan';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/11.jpeg' where slug = 'lg-gram-go-ai-travel';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/12.jpeg' where slug = 'lg-gram-vi-beop';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/13.jpeg' where slug = 'lg-gram-vi-beop-class';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/14.jpeg' where slug = 'gshock-iconic-styles';
