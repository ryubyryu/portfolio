-- NIKE World Cup 2022에 10장 자동 슬라이딩 캐러셀과 새 링크 라벨을 반영합니다.
-- 급하지 않아요 — 편하실 때 실행해주세요.

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
