-- bibigo-gyustaurant 갤러리 전체를 최종 상태로 덮어씁니다.
-- (Teaser/Main 캡션 문구 변경, recipe 캐러셀 캡션 추가, 자동 넘김 비활성화는 코드 쪽 처리)
-- 이전 마이그레이션 실행 여부와 무관하게 안전하게 최종 상태로 맞춰줍니다.

update works set gallery = '[
  {
    "columns": 3,
    "gap": 8,
    "playOverlay": true,
    "captions": ["Teaser @bibigo.global INSTAGRAM", "Teaser2 @bibigo.global INSTAGRAM", "Main @bibigo.global INSTAGRAM"],
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
    "captions": ["Recipe 1 (ENG Ver.)", "Recipe 2 (ENG Ver.)", "Recipe 3 (ENG Ver.)"],
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
