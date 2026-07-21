-- NIKE : AIRMAX Dn에 4x2 갤러리 2세트와 링크 2개를 추가합니다.
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works set gallery = '[
  {
    "heading": "NIKE AIRMAX Dn STYLE by KIM YOUNGJIN",
    "columns": 4,
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/1.avif","width":878,"height":1562},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/2.avif","width":878,"height":1562},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/3.avif","width":878,"height":1562},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/4.avif","width":878,"height":1562},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/5.avif","width":878,"height":1562},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/6.avif","width":878,"height":1562},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/7.avif","width":878,"height":1562},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/8.avif","width":878,"height":1562}
    ]
  },
  {
    "heading": "CHAE JONGSUK'S AIRMAX Dn STYLED BY KIM YOUNGJIN",
    "columns": 4,
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/9.avif","width":878,"height":1562},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/10.avif","width":878,"height":1562},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/11.avif","width":878,"height":1562},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/12.avif","width":878,"height":1562},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/13.avif","width":878,"height":1562},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/14.avif","width":878,"height":1562},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/15.avif","width":878,"height":1562},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/16.avif","width":878,"height":1562}
    ]
  }
]'::jsonb where slug = 'nike-airmax-dn';

update works set links = '[
  {"label":"나이키 : Airmax DN-스타일리스트 김영진 편","url":"https://tvcf.co.kr/play/bh1638-953107"},
  {"label":"나이키 : Airmax DN- 모델 채종석 편","url":"https://tvcf.co.kr/play/bh1811-953109"}
]'::jsonb where slug = 'nike-airmax-dn';
