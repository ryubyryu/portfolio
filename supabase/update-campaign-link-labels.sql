-- Campaign 관련 링크 라벨을 실제 영상/에피소드 제목으로 교체합니다.
-- Supabase 대시보드 SQL Editor에서 그대로 실행하세요.

update works set links = '[{"label":"유튜브에서 영상 보기","url":"https://www.youtube.com/watch?v=sqqOP9K1_N0"}]'::jsonb where slug = 'noroo-poster-challenge';
update works set links = '[{"label":"나이키 에디토리얼 보기","url":"https://www.nike.com/kr/a/ho22-football-community-editorial"}]'::jsonb where slug = 'nike-worldcup-2022';
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
  {"label":"TVCF 영상 컷 1 보기","url":"https://tvcf.co.kr/play/ah11083-975012"},
  {"label":"TVCF 영상 컷 2 보기","url":"https://tvcf.co.kr/play/bh11174-975013"},
  {"label":"TVCF 영상 컷 3 보기","url":"https://tvcf.co.kr/play/ah11265-975014"}
]'::jsonb where slug = 'lg-gram-vi-beop-class';

update works set links = '[
  {"label":"TVCF 영상 컷 1 보기","url":"https://tvcf.co.kr/play/ah1548-979206"},
  {"label":"TVCF 영상 컷 2 보기","url":"https://tvcf.co.kr/play/ah1366-979204"}
]'::jsonb where slug = 'gshock-iconic-styles';
