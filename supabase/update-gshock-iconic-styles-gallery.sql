-- G-SHOCK ICONIC STYLES에 영상 배너(0.png)+9장 그리드+피처(10.png)+8장 그리드를 추가합니다.

update works set gallery = '[
  {
    "heading": "지금, 가장 아이코닉한 순간 - G-Shock x 이승협",
    "columns": 1,
    "playOverlay": true,
    "links": ["https://www.youtube.com/watch?v=r3U0wLYNuCY"],
    "images": [{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/0.png","width":1920,"height":1080}]
  },
  {
    "columns": 3,
    "gap": 8,
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/1.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/2.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/3.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/4.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/5.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/6.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/7.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/8.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/9.avif","width":1713,"height":964}
    ]
  },
  {
    "columns": 4,
    "gap": 8,
    "feature": {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/10.png","width":1080,"height":1920},
    "featureLink": "https://www.youtube.com/shorts/KJDjpDyFMsk",
    "playOverlay": true,
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/11.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/12.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/13.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/14.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/15.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/16.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/17.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/18.avif","width":688,"height":1224}
    ]
  }
]'::jsonb where slug = 'gshock-iconic-styles';
