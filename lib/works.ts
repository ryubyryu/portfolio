import { supabase } from "@/lib/supabase";

export type WorkLink = {
  label: string;
  url: string;
};

export type WorkStat = {
  label: string;
  value: string;
};

export type WorkGalleryImage = {
  url: string;
  width: number;
  height: number;
};

export type WorkGalleryVideo = {
  url: string;
  width: number;
  height: number;
};

export type WorkGalleryGroup = {
  heading?: string;
  columns?: number;
  carousel?: boolean;
  filmstrip?: boolean;
  video?: WorkGalleryVideo;
  feature?: WorkGalleryImage;
  images: WorkGalleryImage[];
};

export type Work = {
  slug: string;
  title: string;
  category: string;
  year: number;
  role: string;
  client?: string;
  summary: string;
  description: string[];
  coverImage?: string;
  images?: string[];
  links?: WorkLink[];
  stats?: WorkStat[];
  gallery?: WorkGalleryGroup[];
};

type WorkRow = {
  slug: string;
  title: string;
  category: string;
  year: number;
  role: string;
  client: string | null;
  summary: string;
  description: string[];
  cover_image: string | null;
  images: string[];
  links: WorkLink[] | null;
  stats: WorkStat[] | null;
  gallery: WorkGalleryGroup[] | null;
};

function fromRow(row: WorkRow): Work {
  return {
    slug: row.slug,
    title: row.title,
    category: row.category,
    year: row.year,
    role: row.role,
    client: row.client ?? undefined,
    summary: row.summary,
    description: row.description,
    coverImage: row.cover_image ?? undefined,
    images: row.images,
    links: row.links && row.links.length > 0 ? row.links : undefined,
    stats: row.stats && row.stats.length > 0 ? row.stats : undefined,
    gallery: row.gallery && row.gallery.length > 0 ? row.gallery : undefined,
  };
}

// Supabase 환경변수가 없을 때(로컬 개발 초기 등) 화면이 비지 않도록 쓰는
// 목데이터. supabase/seed.sql과 내용을 맞춰뒀습니다.
const fallbackWorks: Work[] = [
  // 아래는 TVCF 포트폴리오(star.tvcf.co.kr) 기준 2018.10.12 ~ 2021.10.06
  // Production 실제 경력입니다. 캠페인 단위로 묶었습니다.
  {
    slug: "lg-prael",
    title: "LG 프라엘",
    category: "Production",
    year: 2018,
    role: "Producer",
    client: "LG전자",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/1.jpeg",
    images: ["https://tvcf.co.kr/play/ah05745-718482", "https://tvcf.co.kr/play/ah14201-718460"],
    summary: "맑은피부, 동안피부를 소구한 뷰티 디바이스 런칭 캠페인.",
    description: ["LG 프라엘 : 맑은피부 편", "LG 프라엘 : 동안피부 편"],
  },
  {
    slug: "ohui-first-genature",
    title: "오휘 더 퍼스트 제너츄어",
    category: "Production",
    year: 2018,
    role: "Producer",
    client: "LG생활건강",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/2.jpeg",
    images: ["https://tvcf.co.kr/play/bh03017-725943"],
    summary: "피부감도를 소구한 스킨케어 캠페인.",
    description: ["오휘 더 퍼스트 제너츄어 : 피부감도 편"],
  },
  {
    slug: "lg-hwisen-thinq",
    title: "LG 휘센 인공지능 스스로에어컨 ThinQ",
    category: "Production",
    year: 2018,
    role: "Producer",
    client: "LG전자",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/3.jpeg",
    images: ["https://tvcf.co.kr/play/bh03293-729147", "https://tvcf.co.kr/play/ah03222-729146", "https://tvcf.co.kr/play/bh03151-729145", "https://tvcf.co.kr/play/ah03089-729144"],
    summary: "제습·냉방·난방·공기청정 4종 컷으로 구성된 에어컨 캠페인.",
    description: [
      "LG 휘센 인공지능스스로에어컨 ThinQ : 제습 편",
      "LG 휘센 인공지능스스로에어컨 ThinQ : 냉방 편",
      "LG 휘센 인공지능스스로에어컨 ThinQ : 난방 편",
      "LG 휘센 인공지능스스로에어컨 ThinQ : 공기청정 편",
    ],
  },
  {
    slug: "whoo-cheongidan",
    title: "후 천기단 화현 에센스 쿠션",
    category: "Production",
    year: 2018,
    role: "Producer",
    client: "LG생활건강",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/4.jpeg",
    images: ["https://tvcf.co.kr/play/bh0775-731311"],
    summary: '"세상 위에 빛나다"를 콘셉트로 한 쿠션 캠페인.',
    description: ["후 천기단 화현 에센스 쿠션 : 세상 위에 빛나다 편"],
  },
  {
    slug: "benz-service",
    title: "메르세데스 벤츠 서비스",
    category: "Production",
    year: 2019,
    role: "Producer",
    client: "메르세데스 벤츠코리아",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/5.jpeg",
    images: ["https://tvcf.co.kr/play/bh01336-739519"],
    summary: '"동행(Go Together)"을 콘셉트로 한 서비스 캠페인.',
    description: ["메르세데스 벤츠 서비스 : 동행(Go Together) 편"],
  },
  {
    slug: "whoo-bichup",
    title: "후 비첩 순환 에센스",
    category: "Production",
    year: 2019,
    role: "Producer",
    client: "LG생활건강",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/6.jpeg",
    images: ["https://tvcf.co.kr/play/bh03855-739455"],
    summary: '"순환의 힘"을 소구한 에센스 캠페인.',
    description: ["후 비첩 순환 에센스 : 순환의 힘 편"],
  },
  {
    slug: "ohui-first-ample",
    title: "오휘 더 퍼스트 앰플",
    category: "Production",
    year: 2019,
    role: "Producer",
    client: "LG생활건강",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/7.jpeg",
    images: ["https://tvcf.co.kr/play/ah22804-745040"],
    summary: '"빛의 시그니처"를 콘셉트로 한 앰플 캠페인.',
    description: ["오휘 더 퍼스트 앰플 : 빛의 시그니처 편"],
  },
  {
    slug: "lotte-himart-20th",
    title: "롯데 하이마트",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "롯데 하이마트",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/8.jpeg",
    images: ["https://tvcf.co.kr/play/ah03229-771846"],
    summary: "창립 20주년 세일 캠페인.",
    description: ["롯데하이마트 : 창립 20주년 세일 20년만의 기회 편"],
  },
  {
    slug: "dongwon-tuna",
    title: "동원참치",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "동원 F&B",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/9.jpeg",
    images: ["https://tvcf.co.kr/play/ah23363-780048", "https://tvcf.co.kr/play/ah24207-780160", "https://tvcf.co.kr/play/bh14278-780161"],
    summary: '"캔을 따"를 콘셉트로 한 브랜드 캠페인.',
    description: [
      "동원참치 : 캔을 따 편",
      "동원참치 : 캔을 따 Full 편",
      "동원참치 : 캔을 따 인터뷰 편",
    ],
  },
  {
    slug: "kanu-vanilla-latte",
    title: "카누 바닐라 라떼",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "동서식품",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/10.jpeg",
    images: ["https://tvcf.co.kr/play/bh15819-780783"],
    summary: '"음~ 왜 이제 왔어요"를 콘셉트로 한 신제품 캠페인.',
    description: ["카누 바닐라 라떼 : 음~ 왜 이제 왔어요 편"],
  },
  {
    slug: "duolac",
    title: "듀오락",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "듀오락",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/11.jpeg",
    images: ["https://tvcf.co.kr/play/ah04342-783362", "https://tvcf.co.kr/play/ah01967-784628"],
    summary: "우리나라 유산균 듀오락 캠페인.",
    description: ["듀오락 : 우리나라 유산균 듀오락 편", "듀오락 : 우리나라 유산균 듀오락 2편"],
  },
  {
    slug: "porsche-911-timeless-machine",
    title: "포르쉐 911 Timeless Machine",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "포르쉐코리아",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/12.jpeg",
    images: ["https://tvcf.co.kr/play/bh1354-784805", "https://tvcf.co.kr/play/ah0984-784814", "https://tvcf.co.kr/play/bh06793-787597", "https://tvcf.co.kr/play/ah06722-787596", "https://tvcf.co.kr/play/bh12458-787035", "https://tvcf.co.kr/play/ah12387-787034"],
    summary: "오너들의 이야기를 담은 오너 스토리 시리즈.",
    description: [
      "포르쉐 : 911 Timeless Machine_오너 스토리 종합 편",
      "포르쉐 : 911 Timeless Machine_오너 스토리 티저 편",
      "포르쉐 : 911 Timeless Machine_오너 스토리 신태윤 편",
      "포르쉐 : 911 Timeless Machine_오너 스토리 김택 편",
      "포르쉐 : 911 Timeless Machine_오너 스토리 전용훈 편",
      "포르쉐 : 911 Timeless Machine_오너 스토리 정규영 편",
    ],
  },
  {
    slug: "kanu-signature",
    title: "카누 시그니처",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "동서식품",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/13.jpeg",
    images: ["https://tvcf.co.kr/play/bh05533-786579", "https://tvcf.co.kr/play/ah13501-786550", "https://tvcf.co.kr/play/bh03439-786549", "https://tvcf.co.kr/play/ah03643-786552", "https://tvcf.co.kr/play/ah03785-786554", "https://tvcf.co.kr/play/bh03714-786553"],
    summary: "프리미엄 라인 런칭 캠페인 (가치·언박싱·범퍼 컷).",
    description: [
      "가치",
      "카누 시그니처 : 언박싱 디자인 편",
      "카누 시그니처 : 언박싱 맛 편",
      "카누 시그니처 : 범퍼 A",
      "카누 시그니처 : 범퍼 B",
      "카누 시그니처 : 범퍼 C",
    ],
  },
  {
    slug: "pizza-alvolo",
    title: "피자알볼로",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "피자알볼로",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/14.jpeg",
    images: ["https://tvcf.co.kr/play/bh02311-791433"],
    summary: '"본"을 콘셉트로 한 브랜드 캠페인.',
    description: ["피자알볼로 : 본 편"],
  },
  {
    slug: "samsung-bespoke-dishwasher",
    title: "삼성 비스포크 식기세척기",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "삼성전자",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/15.jpeg",
    images: ["https://tvcf.co.kr/play/bh05538-794179", "https://tvcf.co.kr/play/bh06097-794187"],
    summary: '"당신이 바라던 식기세척기"를 소구한 런칭 캠페인.',
    description: [
      "삼성 비스포크 식기세척기 : 당신이 바라던 식기세척기 - TVC 편",
      "삼성 비스포크 식기세척기 : 당신이 바라던 식기세척기 - 디지털 편",
    ],
  },
  {
    slug: "ranking-dak",
    title: "랭킹닭컴",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "랭킹닭컴",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/16.jpeg",
    images: ["https://tvcf.co.kr/play/bh02311-796433", "https://tvcf.co.kr/play/ah02382-796434", "https://tvcf.co.kr/play/ah02524-796436"],
    summary: '"나홀로이식당" 시리즈 캠페인.',
    description: [
      "랭킹닭컴 : 나홀로이식당_외국어ver 편",
      "랭킹닭컴 : 나홀로이식당_치팅데이 편",
      "랭킹닭컴 : 나홀로이식당_식단관리 편",
    ],
  },
  {
    slug: "jungkwanjang-2020",
    title: "정관장",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "한국인삼공사",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/17.jpeg",
    images: ["https://tvcf.co.kr/play/ah3167-800502", "https://tvcf.co.kr/play/ah405-800500", "https://tvcf.co.kr/play/bh27924-800499"],
    summary: "안성기, 유지태가 출연한 홍삼 브랜드 캠페인.",
    description: ["정관장 : 종합 편", "정관장 : 안성기 편", "정관장 : 유지태 편"],
  },
  {
    slug: "sos-state-of-survival",
    title: "S.O.S : 스테이트 오브 서바이벌",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "킹스그룹홀딩스",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/18.jpeg",
    images: ["https://tvcf.co.kr/play/ah16085-803176", "https://tvcf.co.kr/play/bh12164-805427", "https://tvcf.co.kr/play/ah12083-805426", "https://tvcf.co.kr/play/bh17128-805989", "https://tvcf.co.kr/play/ah400-806000"],
    summary: "혜리, 정우성이 출연한 모바일 게임 광고.",
    description: [
      "S.O.S : 스테이트 오브 서바이벌 : 티저 편",
      "S.O.S : 스테이트 오브 서바이벌 : 티저 - 혜리 편",
      "S.O.S : 스테이트 오브 서바이벌 : 티저 편 - 정우성 편",
      "S.O.S : 스테이트 오브 서바이벌 : 혜리 편",
      "S.O.S : 스테이트 오브 서바이벌 : 정우성 편",
    ],
  },
  {
    slug: "richam",
    title: "리챔",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "동원 F&B",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/19.jpeg",
    images: [
      "https://tvcf.co.kr/play/ah11122-805614",
      "https://tvcf.co.kr/play/bh11041-805613",
      "https://tvcf.co.kr/play/ah15767-802772",
    ],
    summary: '"햄맛챔피온리챔"과 "건강 총동원" 선물세트를 함께 소구한 캠페인.',
    description: [
      "리챔 : 햄맛 챔피온 리챔 15초 편",
      "리챔 : 햄맛 챔피온 리챔 30초 편",
      "동원 선물세트 : 건강 총동원 편",
    ],
  },
  {
    slug: "denmark-pocket-cheese",
    title: "덴마크 인 포켓치즈",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "동원 F&B",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/20.jpeg",
    images: [
      "https://tvcf.co.kr/play/bh17286-806591",
      "https://tvcf.co.kr/play/ah17367-806592",
      "https://tvcf.co.kr/play/ah27205-806590",
    ],
    summary: '"10초면 찢기에 충분해"를 소구한 신제품 캠페인.',
    description: [
      "덴마크 인 포켓치즈 : 10초면 찢기에 충분해 (15s_A) 편",
      "덴마크 인 포켓치즈 : 10초면 찢기에 충분해 (15s_B) 편",
      "덴마크 인 포켓치즈 : 10초면 찢기에 충분해 (full) 편",
    ],
  },
  {
    slug: "samsung-bespoke-induction",
    title: "삼성 비스포크 인덕션",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "삼성전자",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/21.jpeg",
    images: ["https://tvcf.co.kr/play/bh26489-808081"],
    summary: '김이나가 출연한 "Kitchen for You" 캠페인.',
    description: ["삼성 비스포크 인덕션 : 김이나의 Kitchen for You 편"],
  },
  {
    slug: "maxim-white-gold",
    title: "맥심 화이트골드",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "동서식품",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/22.jpeg",
    images: ["https://tvcf.co.kr/play/bh22322-808029"],
    summary: '"나에게 부드러워지는 시간"을 콘셉트로 한 캠페인.',
    description: ["맥심 화이트골드 : 나에게 부드러워지는 시간 편"],
  },
  {
    slug: "lotte-group",
    title: "롯데그룹",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "롯데그룹",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/23.jpeg",
    images: ["https://tvcf.co.kr/play/ah11765-808122"],
    summary: '"함께 가는 친구, 롯데" 기업PR 캠페인.',
    description: ["롯데그룹 : 함께 가는 친구, 롯데 편"],
  },
  {
    slug: "yogiyo-express",
    title: "요기요",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "딜리버리히어로코리아",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/24.jpeg",
    images: ["https://tvcf.co.kr/play/bh16646-809483", "https://tvcf.co.kr/play/ah2644-810508"],
    summary: '"익스프레스" 배달 서비스 캠페인.',
    description: ["요기요 : 익스프레스 라이더 편", "요기요 : 익스프레스 속도 편"],
  },
  {
    slug: "porsche-taycan",
    title: "포르쉐 더 뉴 타이칸",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "포르쉐코리아",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/25.jpeg",
    images: ["https://tvcf.co.kr/play/ah1968-810512", "https://tvcf.co.kr/play/ah25604-809670", "https://tvcf.co.kr/play/bh06326-811879"],
    summary: '"Seoul, Electrified"를 콘셉트로 한 타이칸 런칭 캠페인.',
    description: [
      "포르쉐 : 더 뉴 타이칸 : Seoul, Electrified 편",
      "포르쉐 : 더 뉴 타이칸 : Seoul, Electrified : 티저 편",
      "포르쉐 : 더 뉴 타이칸 : 영혼의 전율 편",
    ],
  },
  {
    slug: "dongwon-tuna-open",
    title: "동원참치",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "동원 F&B",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/31.jpeg",
    images: ["https://tvcf.co.kr/play/ah06169-794288"],
    summary: '"동원이도 캔을 따!"를 콘셉트로 한 브랜드 캠페인.',
    description: ["동원참치 : 동원이도 캔을 따! 편"],
  },
  {
    slug: "jungkwanjang-2021",
    title: "정관장",
    category: "Production",
    year: 2021,
    role: "Producer",
    client: "한국인삼공사",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/26.jpeg",
    images: ["https://tvcf.co.kr/play/bh1563-815507", "https://tvcf.co.kr/play/ah1482-815506", "https://tvcf.co.kr/play/bh1401-815505"],
    summary: '한석규, 김성령이 출연한 "제자리" 캠페인.',
    description: [
      "정관장 : 제자리 - 한석규 편",
      "정관장 : 제자리 - 김성령 편",
      "정관장 : 제자리 - 정몰 편",
    ],
  },
  {
    slug: "nature-made",
    title: "네이처 메이드",
    category: "Production",
    year: 2021,
    role: "Producer",
    client: "한국오츠카제약",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/27.jpeg",
    images: ["https://tvcf.co.kr/play/bh04881-816361", "https://tvcf.co.kr/play/bh17128-816089"],
    summary: '"홈트", "배달음식" 등 일상 속 건강 캠페인.',
    description: ["네이처 메이드 : 홈트 편", "네이처 메이드 : 배달음식 편"],
  },
  {
    slug: "beplain",
    title: "비플레인",
    category: "Production",
    year: 2021,
    role: "Producer",
    client: "비플레인",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/28.jpeg",
    images: ["https://tvcf.co.kr/play/bh04084-839751"],
    summary: "녹두Song 캠페인.",
    description: ["비플레인 : 녹두Song 캠페인 편"],
  },
  {
    slug: "myallri",
    title: "마이올리",
    category: "Production",
    year: 2021,
    role: "Producer",
    client: "다원에이치앤비",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/29.jpeg",
    images: ["https://tvcf.co.kr/play/ah03047-845538", "https://tvcf.co.kr/play/ah25605-850770", "https://tvcf.co.kr/play/bh03443-845543", "https://tvcf.co.kr/play/bh03281-845541", "https://tvcf.co.kr/play/ah13209-845540", "https://tvcf.co.kr/play/ah14962-850362", "https://tvcf.co.kr/play/ah24809-850360", "https://tvcf.co.kr/play/bh15043-850363"],
    summary:
      "건강기능식품 라인업 캠페인 (알티지 오메가3, 루테인, 비타민B, 프로바이오틱스 외).",
    description: [
      "마이올리 : 나를 위한 케어레시피 편",
      "마이올리 : 나를 위한 케어레시피 2편",
      "마이올리 : 골든루트 밀크시슬 (feat.간건강) 편",
      "마이올리 : 코어 비타민B 플러스 (feat.활력) 편",
      "마이올리 : 프로바이틱스 (feat.장건강) 편",
      "마이올리 : 알티지 알래스카 오메가3 (feat.혈액순환) 편",
      "마이올리 : 슈퍼크리티컬 루테인 (feat.눈건강) 편",
      "마이올리 : 카마디 엑스투 (feat.뼈건강) 편",
    ],
  },
  {
    slug: "woongjin-bookclub",
    title: "웅진북클럽",
    category: "Production",
    year: 2021,
    role: "Producer",
    client: "웅진씽크빅",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/30.jpeg",
    images: ["https://tvcf.co.kr/play/bh14248-845053"],
    summary: '"독서의 기준"을 콘셉트로 한 브랜드 캠페인.',
    description: ["웅진북클럽 : 독서의 기준 편"],
  },
  // Campaign 실제 경력. 사용자가 지정한 순서대로 정리했습니다.
  {
    slug: "noroo-poster-challenge",
    title: "노루페인트 : 포스터 챌린지",
    category: "Campaign",
    year: 2022,
    role: "Copywriter",
    client: "노루페인트",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/1.avif",
    summary:
      "1회의 포스터 참여가 1m²의 페인트가 되어, 코로나로 사람들의 발길이 끊긴 전통시장에 페인트를 기부하는 #포스터챌린지 캠페인. 온라인에서의 참여가 실제 오프라인으로 이어져 세월의 흔적으로 낡고 벗겨진 벽면에 아티스트의 그래픽을 페인팅하여, 시장을 전시장으로 만들다.",
    description: [
      "1회의 포스터 참여가 1m²의 페인트가 되어, 코로나로 사람들의 발길이 끊긴 전통시장에 페인트를 기부하는 #포스터챌린지 캠페인.",
      "온라인에서의 참여가 실제 오프라인으로 이어져 세월의 흔적으로 낡고 벗겨진 벽면에 아티스트의 그래픽을 페인팅하여, 시장을 전시장으로 만들다.",
    ],
    stats: [
      { label: "Visits", value: "43K+" },
      { label: "Participants", value: "10K+" },
      { label: "Award", value: "A.N.D. AWARD GRAND PRIX 2022 (디지털 광고 캠페인 부문 이벤트 분야)" },
    ],
    gallery: [
      {
        heading: "Campaign Microsite",
        images: [
          {
            url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/1.avif",
            width: 1300,
            height: 590,
          },
        ],
      },
      {
        heading: "Poster Making Process",
        images: [
          {
            url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/2.avif",
            width: 1314,
            height: 594,
          },
        ],
      },
      {
        heading: "User-Generated Images",
        images: [
          {
            url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/gallery.avif",
            width: 1214,
            height: 714,
          },
        ],
      },
      {
        heading: "Market Installation",
        images: [
          {
            url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/4.avif",
            width: 1206,
            height: 1752,
          },
        ],
      },
    ],
    links: [
      { label: "노루페인트 '포스터챌린지' 리캡 영상", url: "https://www.youtube.com/watch?v=Uzo8pRUjMHk" },
    ],
  },
  {
    slug: "lg-gram-class101",
    title: "LG gram X CLASS101",
    category: "Campaign",
    year: 2023,
    role: "Copywriter",
    client: "LG전자",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/3.avif",
    summary:
      "온라인 강좌 플랫폼 클래스101을 활용하여 다채로운 색감으로 사랑받는 작가 '누아'와 함께 그램 360 클래스로 제품의 특장점을 전달하다.",
    description: [
      "온라인 강좌 플랫폼 클래스101을 활용하여 다채로운 색감으로 사랑받는 작가 '누아'와 함께 그램 360 클래스로 제품의 특장점을 전달하다.",
    ],
    gallery: [
      {
        heading: "LG gram 360 x CLASS101 (feat. Libere_Nuage)",
        columns: 3,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/1.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/2.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/3.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/4.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/5.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/6.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/7.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/8.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/9.avif", width: 1713, height: 964 },
        ],
      },
      {
        heading: "Event Microsite",
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/sub1.avif", width: 1112, height: 506 },
        ],
      },
    ],
    links: [
      { label: "LG그램 360 클래스 바로가기", url: "https://class101.net/ko/products/638f178f86a5d10015f627cc" },
    ],
  },
  {
    slug: "nike-worldcup-2022",
    title: "NIKE : WORLD CUP 2022",
    category: "Campaign",
    year: 2022,
    role: "Copywriter",
    client: "나이키코리아",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/2.avif",
    summary:
      "NIKE 너만의 무늬 [    ] 우리의 무기. 2022년 카타르 월드컵 모멘텀의 나이키 캠페인 \"서로가 다르기에 우리는 더 강해진다\"는 메시지로 승리를 뜨겁게 응원하며 국가대표 선수들을 하이라이팅하다.",
    description: [
      "NIKE 너만의 무늬 [    ] 우리의 무기.",
      "2022년 카타르 월드컵 모멘텀의 나이키 캠페인 \"서로가 다르기에 우리는 더 강해진다\"는 메시지로 승리를 뜨겁게 응원하며 국가대표 선수들을 하이라이팅하다.",
    ],
    gallery: [
      {
        carousel: true,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/1.avif", width: 1960, height: 996 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/2.avif", width: 1960, height: 996 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/3.avif", width: 1960, height: 996 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/4.avif", width: 1960, height: 996 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/5.avif", width: 1960, height: 996 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/6.avif", width: 1960, height: 996 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/7.avif", width: 1960, height: 996 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/8.avif", width: 1960, height: 996 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/9.avif", width: 1960, height: 996 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20WORLD%20CUP%202022/10.avif", width: 1960, height: 996 },
        ],
      },
    ],
    links: [
      {
        label: "NIKE JOURNAL : 축구로 하나되는 사람들, 풋볼 커뮤니티",
        url: "https://www.nike.com/kr/a/ho22-football-community-editorial",
      },
      {
        label: "NIKE : 너만의 무늬 우리의 무기 - CODE KUNST 편",
        url: "https://tvcf.co.kr/play/bh01715-915419",
      },
      {
        label: "NIKE : 너만의 무늬 우리의 무기 - 3인 편",
        url: "https://tvcf.co.kr/play/ah01624-915418",
      },
      {
        label: "NIKE : 너만의 무늬 우리의 무기 - HWANG HEECHAN 편",
        url: "https://tvcf.co.kr/play/bh01351-915415",
      },
    ],
  },
  {
    slug: "nike-runners-helping-runners",
    title: "NIKE : RUNNERS HELPING RUNNERS",
    category: "Campaign",
    year: 2023,
    role: "Copywriter",
    client: "나이키코리아",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/4.avif",
    summary:
      "러닝에 도전하는 초보 러너 류준열의 Runners Helping Runners. 그의 목소리로 시작을 망설이는 많은 러너들에게 동기 부여와 도움이 되는 정보를 전달하는 캠페인",
    description: [
      "러닝에 도전하는 초보 러너 류준열의 Runners Helping Runners.",
      "그의 목소리로 시작을 망설이는 많은 러너들에게 동기 부여와 도움이 되는 정보를 전달하는 캠페인",
    ],
    gallery: [
      {
        heading: "NIKE RUNNERS HELPING RUNNERS (Feat. RYU JUNYEOL)",
        columns: 3,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/1.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/2.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/3.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/4.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/5.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/6.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/7.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/8.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/9.avif", width: 1713, height: 964 },
        ],
      },
      {
        heading: "NIKE A RUNNER GUIDE (with. RYU JUNYEOL)",
        columns: 3,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/10.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/11.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/12.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/13.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/14.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/15.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/16.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/17.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/18.avif", width: 1713, height: 964 },
        ],
      },
    ],
    links: [
      { label: "NIKE : 러너스 헬핑 러너스 - 류준열 편", url: "https://tvcf.co.kr/play/bh16394-901571" },
      { label: "NIKE : 러너스 헬핑 러너스 - 러너 가이드 편", url: "https://tvcf.co.kr/play/ah26303-901570" },
      { label: "NIKE : 러너스 헬핑 러너스 - 러너 가이드 편 (세로)", url: "https://tvcf.co.kr/play/bh24594-900751" },
    ],
  },
  {
    slug: "nike-air-force-1-t1",
    title: "NIKE : AIR FORCE 1 x T1",
    category: "Content",
    year: 2023,
    role: "Copywriter",
    client: "나이키코리아",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/1.avif",
    summary:
      "NIKE Air Force 1 x T1. 각자의 게임 플레이 스타일처럼 개성 넘치게 나이키 에어포스1을 커스텀하는 T1 선수들의 모습을 담다.",
    description: [
      "NIKE Air Force 1 x T1.",
      "각자의 게임 플레이 스타일처럼 개성 넘치게 나이키 에어포스1을 커스텀하는 T1 선수들의 모습을 담다.",
    ],
    gallery: [
      {
        columns: 4,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIR%20FORCE%201%20x%20T1/1.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIR%20FORCE%201%20x%20T1/2.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIR%20FORCE%201%20x%20T1/3.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIR%20FORCE%201%20x%20T1/4.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIR%20FORCE%201%20x%20T1/5.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIR%20FORCE%201%20x%20T1/6.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIR%20FORCE%201%20x%20T1/7.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIR%20FORCE%201%20x%20T1/8.avif", width: 688, height: 1224 },
        ],
      },
    ],
    links: [
      {
        label: "NIKE : AIR FORCE 1 x T1 @NIKESEOUL ON INSTAGRAM",
        url: "https://www.instagram.com/p/Cr16BB3BLna/",
      },
    ],
  },
  {
    slug: "kakao-corporate-pr",
    title: "카카오 기업 PR : CAMPAIGN",
    category: "Campaign",
    year: 2023,
    role: "Copywriter",
    client: "카카오",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/5.avif",
    summary:
      "카카오 기업 PR 캠페인 [1cm² 속 보이지 않는 노력]. 이미 모두의 일상이 된 카카오톡 앱, 그 뒤에서 보이지 않지만 지금 이 순간도 트래픽과 씨름하는 카카오 메시징 파트의 생생한 현장 이야기 - 365일 24시간 카톡을 지키는 그들의 노력을 담다.",
    description: [
      "카카오 기업 PR 캠페인 [1cm² 속 보이지 않는 노력].",
      "이미 모두의 일상이 된 카카오톡 앱, 그 뒤에서 보이지 않지만 지금 이 순간도 트래픽과 씨름하는 카카오 메시징 파트의 생생한 현장 이야기 - 365일 24시간 카톡을 지키는 그들의 노력을 담다.",
    ],
    stats: [
      { label: "Awards", value: "A.N.D. Award Grand Prix 2023 (디지털 광고 캠페인 부문 대기업 분야)" },
      { label: "Awards", value: "A.N.D. Award Winner 2023 (디지털 광고 캠페인 부문 IT서비스 분야)" },
    ],
    gallery: [
      {
        columns: 3,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/1.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/2.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/3.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/4.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/5.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/6.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/7.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/8.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/9.avif", width: 1713, height: 964 },
        ],
      },
    ],
    links: [
      {
        label: "1cm² 속 보이지 않는 카카오의 노력 🔍 | 365일 24시간 카톡을 지키는 사람들",
        url: "https://www.youtube.com/watch?v=ro_6M5qc604&t=41s",
      },
    ],
  },
  {
    slug: "nike-hoshi-style-story",
    title: "NIKE : HOSHI'S STYLE STORY",
    category: "Content",
    year: 2023,
    role: "Copywriter",
    client: "나이키코리아",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/2.avif",
    summary:
      "NIKE 세븐틴 호시의 스타일 스토리. \"내가 되고 싶은 나처럼 옷을 입는다\"는 세븐틴의 호시. 그의 스타일과 철학을 스토리 필름으로 담아내고 보메로5를 활용한 세 가지 룩으로 스타일링에 대한 영감을 주다.",
    gallery: [
      {
        heading: "NIKE SVT HOSHI'S STYLE STORY",
        columns: 4,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/1.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/2.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/3.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/4.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/5.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/6.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/7.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/8.avif", width: 688, height: 1224 },
        ],
      },
      {
        heading: "NIKE VOMERO5 STYLE WITH SVT HOSHI",
        columns: 4,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/11.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/12.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/13.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/14.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/15.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/16.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/17.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/18.avif", width: 688, height: 1224 },
        ],
      },
    ],
    links: [
      {
        label: "NIKE : SVT HOSHI'S STYLE STORY @NIKESEOUL ON INSTAGRAM",
        url: "https://www.instagram.com/p/C0Ali2rPFHd/",
      },
      {
        label: "NIKE : VOMERO5 STYLE WITH SVT HOSHI @NIKESEOUL ON INSTAGRAM",
        url: "https://www.instagram.com/p/C0SmJQhhY-t/",
      },
    ],
    description: [
      "NIKE 세븐틴 호시의 스타일 스토리.",
      "\"내가 되고 싶은 나처럼 옷을 입는다\"는 세븐틴의 호시.",
      "그의 스타일과 철학을 스토리 필름으로 담아내고 보메로5를 활용한 세 가지 룩으로 스타일링에 대한 영감을 주다.",
    ],
  },
  {
    slug: "lotteria-thanks-burger",
    title: "롯데리아 : THANKS BURGER",
    category: "Campaign",
    year: 2023,
    role: "Copywriter",
    client: "롯데리아",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/6.avif",
    summary:
      "롯데리아에서 한 해 가장 사랑받은 버거를 재출시하며 캠페인 영상부터 나만의 캐릭터로 카드를 만드는 사이트까지 롯데리아를 매개체로 연말연시 고마운 사람들에게 땡스~한 마음을 서로 전할 수 있는 IMC 캠페인을 설계.",
    description: [
      "롯데리아에서 한 해 가장 사랑받은 버거를 재출시하며 캠페인 영상부터 나만의 캐릭터로 카드를 만드는 사이트까지 롯데리아를 매개체로 연말연시 고마운 사람들에게 땡스~한 마음을 서로 전할 수 있는 IMC 캠페인을 설계.",
    ],
    links: [
      { label: "유튜브에서 영상 보기", url: "https://www.youtube.com/watch?v=Vy_--uYhmwc" },
    ],
    gallery: [
      {
        columns: 3,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/1.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/2.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/3.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/4.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/5.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/6.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/7.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/8.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/9.avif", width: 1713, height: 964 },
        ],
      },
      {
        heading: "TEASER POSTER",
        filmstrip: true,
        feature: { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/10.avif", width: 1470, height: 827 },
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/11.avif", width: 937, height: 1400 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/12.avif", width: 937, height: 1400 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/13.avif", width: 937, height: 1400 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/14.avif", width: 937, height: 1400 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/15.avif", width: 937, height: 1400 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/16.avif", width: 937, height: 1400 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/17.avif", width: 937, height: 1400 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/18.avif", width: 937, height: 1400 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/19.avif", width: 937, height: 1400 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/20.avif", width: 937, height: 1400 },
        ],
      },
      {
        heading: "DIGITAL CAMPAIGN MICROSITE",
        filmstrip: true,
        feature: { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/21.avif", width: 1470, height: 827 },
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/22.avif", width: 479, height: 599 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/23.avif", width: 479, height: 599 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/24.avif", width: 479, height: 599 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/25.avif", width: 479, height: 599 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/26.avif", width: 479, height: 599 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/27.avif", width: 479, height: 599 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/28.avif", width: 479, height: 599 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/29.avif", width: 479, height: 599 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/30.avif", width: 479, height: 599 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/31.avif", width: 479, height: 599 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/32.avif", width: 479, height: 599 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/33.avif", width: 479, height: 599 },
        ],
      },
      {
        heading: "OOH & OFFLINE CAMPAIGN",
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/34.avif", width: 1470, height: 827 },
        ],
      },
      {
        heading: "CAMPAIGN RESULTS",
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LOTTERIA%20-%20THANKS%20BURGER/35.avif", width: 1470, height: 827 },
        ],
      },
    ],
  },
  {
    slug: "nike-airmax-dn",
    title: "NIKE : AIRMAX Dn",
    category: "Content",
    year: 2024,
    role: "Copywriter",
    client: "나이키코리아",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/3.avif",
    summary:
      "과감한 개성의 나이키 에어맥스Dn 스타일 컨텐츠. 케이팝 아티스트들의 스타일링을 책임지고 있는 스타일리스트 김영진과 모델 채종석의 룩을 통해 에어맥스 Dn만의 독보적인 스타일을 표현하다.",
    description: [
      "과감한 개성의 나이키 에어맥스Dn 스타일 컨텐츠.",
      "케이팝 아티스트들의 스타일링을 책임지고 있는 스타일리스트 김영진과 모델 채종석의 룩을 통해 에어맥스 Dn만의 독보적인 스타일을 표현하다.",
    ],
  },
  {
    slug: "lg-gram-go-busan",
    title: "LG gram GO in Busan",
    category: "Campaign",
    year: 2023,
    role: "Copywriter",
    client: "LG전자",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/7.avif",
    summary:
      "LG 그램을 더 많은 고객들이 체험해 볼 수 있도록 찾아가는 그램고 팝업 스토어 진행. 코레일과 협업하여 부산 KTX역 내에 팝업 스토어를 설치하여 한 달 간 운영. 애써 찾아와야 하는 팝업 스토어의 한계를 넘어 총 12만명에게 노트북 체험 기회 제공",
    description: [
      "LG 그램을 더 많은 고객들이 체험해 볼 수 있도록 찾아가는 그램고 팝업 스토어 진행.",
      "코레일과 협업하여 부산 KTX역 내에 팝업 스토어를 설치하여 한 달 간 운영.",
      "애써 찾아와야 하는 팝업 스토어의 한계를 넘어 총 12만명에게 노트북 체험 기회 제공",
    ],
  },
  {
    slug: "lg-gram-go-ai-travel",
    title: "LG gram GO : AI 상상여행사",
    category: "Campaign",
    year: 2024,
    role: "Copywriter",
    client: "LG전자",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/8.avif",
    summary:
      "gramGO AI 상상여행사, AI를 활용한 BTL 캠페인. 신제품 LG 그램 프로의 고성능을 체험시키기 위해 음악, 이미지, 대화형 3종의 생성형 AI를 해치와 함께 여행을 떠나듯 경험해보는 여행사 컨셉의 체험형 캠페인 진행",
    description: [
      "gramGO AI 상상여행사, AI를 활용한 BTL 캠페인.",
      "신제품 LG 그램 프로의 고성능을 체험시키기 위해 음악, 이미지, 대화형 3종의 생성형 AI를 해치와 함께 여행을 떠나듯 경험해보는 여행사 컨셉의 체험형 캠페인 진행",
    ],
    links: [
      { label: "유튜브에서 영상 보기", url: "https://www.youtube.com/watch?v=anuBmMuAM_w" },
    ],
  },
  {
    slug: "lg-gram-vi-beop",
    title: "LG gram VI법",
    category: "Content",
    year: 2025,
    role: "Copywriter",
    client: "LG전자",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/4.avif",
    summary:
      "LG 그램 AI를 활용하는 나만의 VI법을 소개하는 그램VI법 컨텐츠 제작. 대학생과 직장인들을 타겟으로 총 8편 에피소드로 구성. LG 그램 Pro의 핵심 AI 기능들을 다양한 방법으로 소개한다.",
    description: [
      "LG 그램 AI를 활용하는 나만의 VI법을 소개하는 그램VI법 컨텐츠 제작.",
      "대학생과 직장인들을 타겟으로 총 8편 에피소드로 구성.",
      "LG 그램 Pro의 핵심 AI 기능들을 다양한 방법으로 소개한다.",
    ],
    links: [
      { label: "LG 그램 : 그램VI법_Teaser편", url: "https://tvcf.co.kr/play/bh07658-973485" },
      { label: "그램VI법01_에러 난 과제 파일 구출법", url: "https://tvcf.co.kr/play/bh12431-970127" },
      { label: "그램VI법02_시험 준비 교수님 소환술", url: "https://tvcf.co.kr/play/bh12795-970131" },
      { label: "그램VI법03_과제 지옥 탈출법", url: "https://tvcf.co.kr/play/ah12886-970132" },
      { label: "그램VI법04_일잘러의 회의 준비법", url: "https://tvcf.co.kr/play/ah15221-970658" },
      { label: "그램VI법05_휴가 복귀 후 밀린 메일 정리법", url: "https://tvcf.co.kr/play/ah11265-972014" },
      { label: "그램VI법06_경력같은 신입사원 되는 법", url: "https://tvcf.co.kr/play/bh11538-972017" },
      { label: "그램VI법07_누구보다 빠르게 남들과는 다른 편집법", url: "https://tvcf.co.kr/play/ah23604-972040" },
      { label: "그램VI법08_쿨하게 무릎 책상 쓰기", url: "https://tvcf.co.kr/play/ah04686-972852" },
    ],
  },
  {
    slug: "lg-gram-vi-beop-class",
    title: "LG gram VI법 CLASS",
    category: "Content",
    year: 2025,
    role: "Copywriter",
    client: "LG전자",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/5.avif",
    summary:
      "새롭게 출시한 LG 그램 Pro의 혁신적 성능을 숏폼형 클래스로 소개하는 'LG 그램VI법 클래스' 컨텐츠 제작. 구독자 20.7만의 테크 유튜버 '잇츠 오케이 민성'이 새로워진 LG 그램 Pro의 CPU 특징, 멀티태스킹 비법, 4K 영상 편집법을 누구나 이해하기 쉽도록 재미있게 소개하다.",
    description: [
      "새롭게 출시한 LG 그램 Pro의 혁신적 성능을 숏폼형 클래스로 소개하는 'LG 그램VI법 클래스' 컨텐츠 제작.",
      "구독자 20.7만의 테크 유튜버 '잇츠 오케이 민성'이 새로워진 LG 그램 Pro의 CPU 특징, 멀티태스킹 비법, 4K 영상 편집법을 누구나 이해하기 쉽도록 재미있게 소개하다.",
    ],
    links: [
      { label: "잇츠 오케이의 그램VI법 01_애로우? 루나? CPU 뭐가 다르지?", url: "https://tvcf.co.kr/play/ah11083-975012" },
      { label: "잇츠 오케이의 그램VI법 02_프로들을 위한 멀티태스킹", url: "https://tvcf.co.kr/play/bh11174-975013" },
      { label: "잇츠 오케이의 그램VI법 03_4K 편집 가능한 그램 Pro 외장그래픽", url: "https://tvcf.co.kr/play/ah11265-975014" },
    ],
  },
  {
    slug: "gshock-iconic-styles",
    title: "G-SHOCK ICONIC STYLES",
    category: "Content",
    year: 2025,
    role: "Copywriter",
    client: "지코스모",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/6.avif",
    summary:
      "G-Shock 아이코닉 스타일 시리즈를 소개하는 콘텐츠 제작. 아이돌 그룹 엔플라잉의 리더이자, '선재 업고 튀어'에서 배우로 다양한 분야에 도전하며 바쁜 일정을 소화하는 이승협. G-Shock과 함께하는 그의 일상을 담아내며 오랜 시간 사랑받은 아이코닉 스타일처럼 시대를 뛰어넘어 사랑받는 아티스트가 되기 위해 노력하는 그만의 스토리로 도전 그리고 스타일에 대한 영감을 주다.",
    description: [
      "G-Shock 아이코닉 스타일 시리즈를 소개하는 콘텐츠 제작.",
      "아이돌 그룹 엔플라잉의 리더이자, '선재 업고 튀어'에서 배우로 다양한 분야에 도전하며 바쁜 일정을 소화하는 이승협.",
      "G-Shock과 함께하는 그의 일상을 담아내며 오랜 시간 사랑받은 아이코닉 스타일처럼 시대를 뛰어넘어 사랑받는 아티스트가 되기 위해 노력하는 그만의 스토리로 도전 그리고 스타일에 대한 영감을 주다.",
    ],
    links: [
      { label: "G-SHOCK : ICONIC STYLES : LEE SEUNG HYUB 가로편", url: "https://tvcf.co.kr/play/ah1548-979206" },
      { label: "G-SHOCK : ICONIC STYLES : LEE SEUNG HYUB 세로편", url: "https://tvcf.co.kr/play/ah1366-979204" },
    ],
  },
];

export async function getWorks(): Promise<Work[]> {
  if (!supabase) {
    return [...fallbackWorks].reverse().sort((a, b) => b.year - a.year);
  }

  const { data, error } = await supabase
    .from("works")
    .select(
      "slug, title, category, year, role, client, summary, description, cover_image, images, links, stats, gallery"
    )
    .order("year", { ascending: false })
    .order("sort_order", { ascending: false });

  if (error) throw error;
  return (data as WorkRow[]).map(fromRow);
}

export async function getWorkBySlug(slug: string): Promise<Work | undefined> {
  if (!supabase) {
    return fallbackWorks.find((work) => work.slug === slug);
  }

  const { data, error } = await supabase
    .from("works")
    .select(
      "slug, title, category, year, role, client, summary, description, cover_image, images, links, stats, gallery"
    )
    .eq("slug", slug)
    .maybeSingle();

  if (error) throw error;
  return data ? fromRow(data as WorkRow) : undefined;
}

export async function getAdjacentWorks(slug: string) {
  const ordered = await getWorks();
  const current = ordered.find((work) => work.slug === slug);
  if (!current) {
    return { prev: undefined, next: undefined };
  }

  // 같은 카테고리(섹션) 안에서, 그 섹션의 연도 순서를 기준으로 이전/다음을 찾습니다.
  const sameCategory = ordered.filter((work) => work.category === current.category);
  const index = sameCategory.findIndex((work) => work.slug === slug);
  return {
    prev: index > 0 ? sameCategory[index - 1] : undefined,
    next:
      index >= 0 && index < sameCategory.length - 1
        ? sameCategory[index + 1]
        : undefined,
  };
}

export async function getCategories(): Promise<string[]> {
  const works = await getWorks();
  return Array.from(new Set(works.map((work) => work.category))).sort();
}
