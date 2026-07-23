-- bibigo-gyustaurant 페이지에 3장 이미지 갤러리(플레이 버튼 + 링크 + 캡션)를 추가합니다.

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
  }
]'::jsonb
where slug = 'bibigo-gyustaurant';
