-- LG gram GO : AI 상상여행사 갤러리 순서를 DCR8 레퍼런스와 동일하게 재배치합니다.
-- 3x3 이미지 그리드 → MISSION → INTRODUCTION → IMAGINARY AI TICKET BOOTH →
-- IMAGINARY BGM STUDIO → IMAGINARY PHOTO STUDIO → LUCKY DRAW → POP-UP BOOTH(2장)
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works set gallery = '[
  {
    "columns": 3,
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/1.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/2.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/3.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/4.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/5.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/6.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/7.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/8.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/9.avif","width":1713,"height":964}
    ]
  },
  {
    "heading": "MISSION",
    "images": [{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/10.avif","width":1910,"height":1080}]
  },
  {
    "heading": "INTRODUCTION",
    "images": [{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/11.avif","width":1910,"height":1080}]
  },
  {
    "heading": "IMAGINARY AI TICKET BOOTH",
    "images": [{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/12.avif","width":1910,"height":1080}]
  },
  {
    "heading": "IMAGINARY BGM STUDIO",
    "images": [{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/13.avif","width":1910,"height":1080}]
  },
  {
    "heading": "IMAGINARY PHOTO STUDIO",
    "images": [{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/14.avif","width":1910,"height":1080}]
  },
  {
    "heading": "LUCKY DRAW",
    "images": [{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/15.avif","width":1910,"height":1080}]
  },
  {
    "heading": "POP-UP BOOTH",
    "columns": 1,
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/16.avif","width":1910,"height":1080},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/17.avif","width":1880,"height":1063}
    ]
  }
]'::jsonb where slug = 'lg-gram-go-ai-travel';
