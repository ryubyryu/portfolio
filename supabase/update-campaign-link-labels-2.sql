-- LG gram VI법 CLASS, G-SHOCK ICONIC STYLES 링크 라벨을 실제 영상 제목으로 교체합니다.
-- Supabase 대시보드 SQL Editor에서 그대로 실행하세요.

update works set links = '[
  {"label":"잇츠 오케이의 그램VI법 01_애로우? 루나? CPU 뭐가 다르지?","url":"https://tvcf.co.kr/play/ah11083-975012"},
  {"label":"잇츠 오케이의 그램VI법 02_프로들을 위한 멀티태스킹","url":"https://tvcf.co.kr/play/bh11174-975013"},
  {"label":"잇츠 오케이의 그램VI법 03_4K 편집 가능한 그램 Pro 외장그래픽","url":"https://tvcf.co.kr/play/ah11265-975014"}
]'::jsonb where slug = 'lg-gram-vi-beop-class';

update works set links = '[
  {"label":"G-SHOCK : ICONIC STYLES : LEE SEUNG HYUB 가로편","url":"https://tvcf.co.kr/play/ah1548-979206"},
  {"label":"G-SHOCK : ICONIC STYLES : LEE SEUNG HYUB 세로편","url":"https://tvcf.co.kr/play/ah1366-979204"}
]'::jsonb where slug = 'gshock-iconic-styles';
