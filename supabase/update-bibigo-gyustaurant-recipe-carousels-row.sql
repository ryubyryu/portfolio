-- bibigo-gyustaurant 갤러리 전체를 최종 상태로 덮어씁니다.
-- (Teaser/Main 3장 그리드 그룹 + recipe1/2/3 캐러셀을 1줄 3열로 배치한 그룹)
-- 이전에 recipe 캐러셀 마이그레이션을 실행했는지 여부와 무관하게 안전하게 최종 상태로 맞춰줍니다.

update works set gallery = '[
  {
    "columns": 3,
    "gap": 8,
    "playOverlay": true,
    "captions": ["Teaser 편", "Teaser 2편", "Main 편"],
    "links": [
      "https://www.instagram.com/p/DUSPEDLEhkY/",
      "https://www.instagram.com/p/DUZ9dWtkmGx/",
      "https://www.instagram.com/p/DUkQpaIEqJi/"
    ],
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/1.jpeg","width":1080,"height":1920},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/2.jpeg","width":1080,"height":1920},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/3.jpeg","width":1080,"height":1920}
    ]
  },
  {
    "columns": 3,
    "gap": 8,
    "carouselGroups": [
      [
        {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe1_1_eng.jpeg","width":1015,"height":1350},
        {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe1_2_eng.jpeg","width":1015,"height":1350},
        {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe1_3_eng.jpeg","width":1015,"height":1350},
        {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe1_4_eng.jpeg","width":1015,"height":1350}
      ],
      [
        {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe2_1_eng.jpeg","width":1015,"height":1350},
        {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe2_2_eng.jpeg","width":1015,"height":1350},
        {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe2_3_eng.jpeg","width":1015,"height":1350},
        {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe2_4_eng.jpeg","width":1015,"height":1350}
      ],
      [
        {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe3_1_eng.jpeg","width":1015,"height":1350},
        {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe3_2_eng.jpeg","width":1015,"height":1350},
        {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe3_3_eng.jpeg","width":1015,"height":1350},
        {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe3_4_eng.jpeg","width":1015,"height":1350}
      ]
    ],
    "images": []
  }
]'::jsonb
where slug = 'bibigo-gyustaurant';
