-- bibigo-gyustaurant 페이지에 recipe1/2/3 캐러셀 3개(각 4장, 좌/우 버튼 탐색)를 기존 갤러리 뒤에 추가합니다.

update works
set gallery = gallery || '[
  {
    "carousel": true,
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe1_1_eng.jpeg","width":1015,"height":1350},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe1_2_eng.jpeg","width":1015,"height":1350},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe1_3_eng.jpeg","width":1015,"height":1350},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe1_4_eng.jpeg","width":1015,"height":1350}
    ]
  },
  {
    "carousel": true,
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe2_1_eng.jpeg","width":1015,"height":1350},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe2_2_eng.jpeg","width":1015,"height":1350},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe2_3_eng.jpeg","width":1015,"height":1350},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe2_4_eng.jpeg","width":1015,"height":1350}
    ]
  },
  {
    "carousel": true,
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe3_1_eng.jpeg","width":1015,"height":1350},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe3_2_eng.jpeg","width":1015,"height":1350},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe3_3_eng.jpeg","width":1015,"height":1350},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe3_4_eng.jpeg","width":1015,"height":1350}
    ]
  }
]'::jsonb
where slug = 'bibigo-gyustaurant';
