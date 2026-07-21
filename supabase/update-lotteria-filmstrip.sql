-- 롯데리아 땡스버거 캠페인의 TEASER POSTER / DIGITAL CAMPAIGN MICROSITE 섹션을
-- 필름스트립(작은 썸네일 + 좌우 스크롤)으로 전환합니다.
-- 이 SQL을 실행해야 실제 사이트에도 반영돼요.

update works set gallery = '[
  {
    "columns": 3,
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/1.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/2.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/3.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/4.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/5.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/6.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/7.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/8.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/9.avif","width":1713,"height":964}
    ]
  },
  {
    "heading": "TEASER POSTER",
    "filmstrip": true,
    "feature": {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/10.avif","width":1470,"height":827},
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/11.avif","width":937,"height":1400},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/12.avif","width":937,"height":1400},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/13.avif","width":937,"height":1400},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/14.avif","width":937,"height":1400},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/15.avif","width":937,"height":1400},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/16.avif","width":937,"height":1400},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/17.avif","width":937,"height":1400},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/18.avif","width":937,"height":1400},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/19.avif","width":937,"height":1400},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/20.avif","width":937,"height":1400}
    ]
  },
  {
    "heading": "DIGITAL CAMPAIGN MICROSITE",
    "filmstrip": true,
    "feature": {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/21.avif","width":1470,"height":827},
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/22.avif","width":479,"height":599},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/23.avif","width":479,"height":599},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/24.avif","width":479,"height":599},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/25.avif","width":479,"height":599},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/26.avif","width":479,"height":599},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/27.avif","width":479,"height":599},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/28.avif","width":479,"height":599},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/29.avif","width":479,"height":599},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/30.avif","width":479,"height":599},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/31.avif","width":479,"height":599},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/32.avif","width":479,"height":599},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/33.avif","width":479,"height":599}
    ]
  },
  {
    "heading": "OOH & OFFLINE CAMPAIGN",
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/34.avif","width":1470,"height":827},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/35.avif","width":1470,"height":827}
    ]
  }
]'::jsonb where slug = 'lotteria-thanks-burger';
