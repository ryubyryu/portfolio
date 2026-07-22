-- NIKE : AIRMAX Dn에 4x2 갤러리 2세트와 인스타그램 링크 2개를 반영합니다.
-- (이전에 보내드린 update-nike-airmax-dn-gallery.sql은 실행하지 마시고 이 파일만 실행해주세요 — 링크가 인스타그램으로 교체됐어요.)

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
  {"label":"NIKE : AIRMAX Dn STYLE by KIM YOUNGJIN","url":"https://www.instagram.com/p/C5fqASvR2jm/"},
  {"label":"NIKE : CHAE JONGSUK''S AIRMAX Dn STYLED BY KIM YOUNGJIN","url":"https://www.instagram.com/p/C5hX_EbB2Q7/"}
]'::jsonb where slug = 'nike-airmax-dn';
