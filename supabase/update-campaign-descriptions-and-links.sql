-- Campaign 항목의 설명을 여러 줄로 나누고, 관련 영상/에디토리얼 링크를 추가합니다.
-- Supabase 대시보드 SQL Editor에서 그대로 실행하세요.

alter table works add column if not exists links jsonb not null default '[]'::jsonb;

update works set description = array[
  '1회의 포스터 참여가 1m²의 페인트가 되어, 코로나로 사람들의 발길이 끊긴 전통시장에 페인트를 기부하는 #포스터챌린지 캠페인.',
  '온라인에서의 참여가 실제 오프라인으로 이어져 세월의 흔적으로 낡고 벗겨진 벽면에 아티스트의 그래픽을 페인팅하여, 시장을 전시장으로 만들다.'
] where slug = 'noroo-poster-challenge';

update works set description = array[
  'NIKE 너만의 무늬 [    ] 우리의 무기.',
  '2022년 카타르 월드컵 모멘텀의 나이키 캠페인 "서로가 다르기에 우리는 더 강해진다"는 메시지로 승리를 뜨겁게 응원하며 국가대표 선수들을 하이라이팅하다.'
] where slug = 'nike-worldcup-2022';

update works set description = array[
  '러닝에 도전하는 초보 러너 류준열의 Runners Helping Runners.',
  '그의 목소리로 시작을 망설이는 많은 러너들에게 동기 부여와 도움이 되는 정보를 전달하는 캠페인'
] where slug = 'nike-runners-helping-runners';

update works set description = array[
  'NIKE Air Force 1 x T1.',
  '각자의 게임 플레이 스타일처럼 개성 넘치게 나이키 에어포스1을 커스텀하는 T1 선수들의 모습을 담다.'
] where slug = 'nike-air-force-1-t1';

update works set description = array[
  '카카오 기업 PR 캠페인 [1cm² 속 보이지 않는 노력].',
  '이미 모두의 일상이 된 카카오톡 앱, 그 뒤에서 보이지 않지만 지금 이 순간도 트래픽과 씨름하는 카카오 메시징 파트의 생생한 현장 이야기 - 365일 24시간 카톡을 지키는 그들의 노력을 담다.'
] where slug = 'kakao-corporate-pr';

update works set description = array[
  'NIKE 세븐틴 호시의 스타일 스토리.',
  '"내가 되고 싶은 나처럼 옷을 입는다"는 세븐틴의 호시.',
  '그의 스타일과 철학을 스토리 필름으로 담아내고 보메로5를 활용한 세 가지 룩으로 스타일링에 대한 영감을 주다.'
] where slug = 'nike-hoshi-style-story';

update works set description = array[
  '과감한 개성의 나이키 에어맥스Dn 스타일 컨텐츠.',
  '케이팝 아티스트들의 스타일링을 책임지고 있는 스타일리스트 김영진과 모델 채종석의 룩을 통해 에어맥스 Dn만의 독보적인 스타일을 표현하다.'
] where slug = 'nike-airmax-dn';

update works set description = array[
  'LG 그램을 더 많은 고객들이 체험해 볼 수 있도록 찾아가는 그램고 팝업 스토어 진행.',
  '코레일과 협업하여 부산 KTX역 내에 팝업 스토어를 설치하여 한 달 간 운영.',
  '애써 찾아와야 하는 팝업 스토어의 한계를 넘어 총 12만명에게 노트북 체험 기회 제공'
] where slug = 'lg-gram-go-busan';

update works set description = array[
  'gramGO AI 상상여행사, AI를 활용한 BTL 캠페인.',
  '신제품 LG 그램 프로의 고성능을 체험시키기 위해 음악, 이미지, 대화형 3종의 생성형 AI를 해치와 함께 여행을 떠나듯 경험해보는 여행사 컨셉의 체험형 캠페인 진행'
] where slug = 'lg-gram-go-ai-travel';

update works set description = array[
  'LG 그램 AI를 활용하는 나만의 VI법을 소개하는 그램VI법 컨텐츠 제작.',
  '대학생과 직장인들을 타겟으로 총 8편 에피소드로 구성.',
  'LG 그램 Pro의 핵심 AI 기능들을 다양한 방법으로 소개한다.'
] where slug = 'lg-gram-vi-beop';

update works set description = array[
  '새롭게 출시한 LG 그램 Pro의 혁신적 성능을 숏폼형 클래스로 소개하는 ''LG 그램VI법 클래스'' 컨텐츠 제작.',
  '구독자 20.7만의 테크 유튜버 ''잇츠 오케이 민성''이 새로워진 LG 그램 Pro의 CPU 특징, 멀티태스킹 비법, 4K 영상 편집법을 누구나 이해하기 쉽도록 재미있게 소개하다.'
] where slug = 'lg-gram-vi-beop-class';

update works set description = array[
  'G-Shock 아이코닉 스타일 시리즈를 소개하는 콘텐츠 제작.',
  '아이돌 그룹 엔플라잉의 리더이자, ''선재 업고 튀어''에서 배우로 다양한 분야에 도전하며 바쁜 일정을 소화하는 이승협.',
  'G-Shock과 함께하는 그의 일상을 담아내며 오랜 시간 사랑받은 아이코닉 스타일처럼 시대를 뛰어넘어 사랑받는 아티스트가 되기 위해 노력하는 그만의 스토리로 도전 그리고 스타일에 대한 영감을 주다.'
] where slug = 'gshock-iconic-styles';

-- Campaign 본문에 추가로 넣을 영상/에디토리얼 링크입니다 (dcr8co.com 포트폴리오 단순 링크는 제외).
update works set links = '[{"label":"유튜브에서 영상 보기 ↗","url":"https://www.youtube.com/watch?v=sqqOP9K1_N0"}]'::jsonb where slug = 'noroo-poster-challenge';
update works set links = '[{"label":"나이키 에디토리얼 보기 ↗","url":"https://www.nike.com/kr/a/ho22-football-community-editorial"}]'::jsonb where slug = 'nike-worldcup-2022';
update works set links = '[{"label":"유튜브에서 영상 보기 ↗","url":"https://www.youtube.com/watch?v=Vy_--uYhmwc"}]'::jsonb where slug = 'lotteria-thanks-burger';
update works set links = '[{"label":"유튜브에서 영상 보기 ↗","url":"https://www.youtube.com/watch?v=anuBmMuAM_w"}]'::jsonb where slug = 'lg-gram-go-ai-travel';
update works set links = '[
  {"label":"TVCF 영상 컷 1 보기 ↗","url":"https://tvcf.co.kr/play/bh07658-973485"},
  {"label":"TVCF 영상 컷 2 보기 ↗","url":"https://tvcf.co.kr/play/bh12431-970127"},
  {"label":"TVCF 영상 컷 3 보기 ↗","url":"https://tvcf.co.kr/play/bh12795-970131"},
  {"label":"TVCF 영상 컷 4 보기 ↗","url":"https://tvcf.co.kr/play/ah12886-970132"},
  {"label":"TVCF 영상 컷 5 보기 ↗","url":"https://tvcf.co.kr/play/ah15221-970658"},
  {"label":"TVCF 영상 컷 6 보기 ↗","url":"https://tvcf.co.kr/play/ah11265-972014"},
  {"label":"TVCF 영상 컷 7 보기 ↗","url":"https://tvcf.co.kr/play/bh11538-972017"},
  {"label":"TVCF 영상 컷 8 보기 ↗","url":"https://tvcf.co.kr/play/ah23604-972040"},
  {"label":"TVCF 영상 컷 9 보기 ↗","url":"https://tvcf.co.kr/play/ah04686-972852"}
]'::jsonb where slug = 'lg-gram-vi-beop';
update works set links = '[
  {"label":"TVCF 영상 컷 1 보기 ↗","url":"https://tvcf.co.kr/play/ah11083-975012"},
  {"label":"TVCF 영상 컷 2 보기 ↗","url":"https://tvcf.co.kr/play/bh11174-975013"},
  {"label":"TVCF 영상 컷 3 보기 ↗","url":"https://tvcf.co.kr/play/ah11265-975014"}
]'::jsonb where slug = 'lg-gram-vi-beop-class';
update works set links = '[
  {"label":"TVCF 영상 컷 1 보기 ↗","url":"https://tvcf.co.kr/play/ah1548-979206"},
  {"label":"TVCF 영상 컷 2 보기 ↗","url":"https://tvcf.co.kr/play/ah1366-979204"}
]'::jsonb where slug = 'gshock-iconic-styles';
