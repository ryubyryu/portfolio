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

export type WorkGalleryListItem = {
  title: string;
  body: string;
};

export type WorkGalleryGroup = {
  heading?: string;
  columns?: number;
  gap?: number;
  carousel?: boolean;
  carouselGroups?: WorkGalleryImage[][];
  filmstrip?: boolean;
  video?: WorkGalleryVideo;
  feature?: WorkGalleryImage;
  featureLink?: string;
  text?: string[];
  list?: WorkGalleryListItem[];
  captions?: string[];
  captionPosition?: "above" | "below";
  links?: string[];
  playOverlay?: boolean;
  marginBottom?: number;
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
    title: "NOROO POSTER CHALLENGE",
    category: "Campaign",
    year: 2022,
    role: "Copywriter",
    client: "노루페인트",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/1.avif",
    summary:
      "1회의 포스터 참여가 1m²의 페인트가 되어, 코로나로 사람들의 발길이 끊긴 전통시장에 페인트를 기부하는 #포스터챌린지 캠페인. 온라인에서의 참여가 실제 오프라인으로 이어져 세월의 흔적으로 낡고 벗겨진 벽면에 아티스트의 그래픽을 페인팅하여, 시장을 전시장으로 만들다.",
    description: [
      "노루페인트 #포스터챌린지, 포스터 한 장이 페인트 1㎡가 되는 기부 캠페인",
      "'[ ] 가치를 올리다' 캠페인 아래 전통시장을 대상지로 잡았다. 2005년 환경개선 사업 이후 다시 관심에서 밀려난 망원동 월드컵시장이었다. 사이트에서 아티스트 콜라보 캐릭터와 페인트 컬러를 고르고 올리고 싶은 가치를 적으면 참여 1회가 페인트 1㎡로 환산됐고, 1만 건 넘게 쌓인 참여분이 노후 벽면과 바닥의 아트 페인팅으로 실체화됐다. 온라인 참여가 눈에 보이는 결과물로 되돌아오는 구조 자체가 이 캠페인의 설득력이었다.",
      "옥외 설치물과 메이킹 필름 카피라이팅, 이벤트 사이트 스토리보드 기획과 웹 개발사 핸들링을 맡았다. 시장 상인, 옥외 설치 업체와의 현장 커뮤니케이션도 함께 진행했다.",
      "NOROO Paint #PosterChallenge — one poster becomes one square meter of paint.",
      "Under the brand platform \"Raising the Value of [ ],\" the campaign chose a traditional market as its ground: Mangwon-dong World Cup Market, renovated in 2005 and quietly forgotten since. On the site, visitors picked an artist-collaboration character and a paint color, wrote down the value they wanted to raise, and each entry converted into one square meter of donated paint. More than 10,000 entries later, that paint appeared on the market's worn walls and floors as artwork. The structure itself carried the argument — participation online came back as something you could stand in front of.",
      "Copywriting for outdoor installations and the making-of film, storyboarding the event site, and directing the web development partner. Also handled on-site communication with market vendors and the installation crew.",
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
      { label: "노루페인트 '포스터챌린지' 리캡 영상 @YOUTUBE", url: "https://www.youtube.com/watch?v=Uzo8pRUjMHk" },
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
      "LG 그램 360과 클래스101이 함께한 온라인 클래스",
      "스펙을 설명하는 브랜디드 컨텐츠 대신 클래스 자체를 제품 데모로 삼았다. 색감으로 알려진 작가 '누아'의 드로잉 수업 안에서 화면을 접고 펴는 동작과 펜 입력이 작업 흐름의 일부로 노출됐다.",
      "클래스 작가 서칭과 제안, 제작팀 커뮤니케이션, 클래스 소개 및 이벤트 페이지 카피라이팅을 맡았다.",
      "An online class with LG gram 360 and CLASS101",
      "Instead of branded content explaining specs, the class itself became the product demo. Inside the drawing lessons of Nua, an illustrator known for her use of color, folding the screen and drawing with the pen simply appeared as part of the workflow.",
      "Sourcing and proposing the class instructor, communication with the production team, and copywriting for the class introduction and event page.",
    ],
    gallery: [
      {
        heading: "LG gram 360 x CLASS101 (feat. Libere_Nuage)",
        columns: 3,
        gap: 8,
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
    title: "NIKE WORLD CUP 2022",
    category: "Campaign",
    year: 2022,
    role: "Copywriter",
    client: "나이키코리아",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/2.avif",
    summary:
      "NIKE 너만의 무늬 [    ] 우리의 무기. 2022년 카타르 월드컵 모멘텀의 나이키 캠페인 \"서로가 다르기에 우리는 더 강해진다\"는 메시지로 승리를 뜨겁게 응원하며 국가대표 선수들을 하이라이팅하다.",
    description: [
      "나이키 2022 카타르 월드컵 캠페인 컨텐츠〈너만의 무늬 [ ] 우리의 무기〉",
      "대표팀을 하나의 덩어리로 묶는 대신 선수 각자의 무늬를 남겨두는 쪽을 택했다. 서로 다르기 때문에 팀이 더 강해진다는 전제 위에서, 개별 선수의 플레이 특성이 그대로 컨텐츠의 재료가 됐다.",
      "영상 제작을 위한 아이데이션에 참여했다.",
      "Content for Nike's 2022 Qatar World Cup campaign〈Your Own Pattern, Our Weapon〉",
      "Rather than compressing the national team into a single body, the work kept each player's own pattern intact. Built on the premise that difference is what makes a team stronger, each player's style of play became the material of the content itself.",
      "Contributed to ideation for the film.",
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
    title: "NIKE Runners Helping Runners",
    category: "Campaign",
    year: 2023,
    role: "Copywriter",
    client: "나이키코리아",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/4.avif",
    summary:
      "러닝에 도전하는 초보 러너 류준열의 Runners Helping Runners. 그의 목소리로 시작을 망설이는 많은 러너들에게 동기 부여와 도움이 되는 정보를 전달하는 캠페인",
    description: [
      "나이키〈Runners Helping Runners〉",
      "러닝 캠페인의 화자를 잘 뛰는 사람이 아니라 이제 막 시작한 사람으로 잡았다. 류준열이 직접 겪은 시행착오를 정보의 재료로 쓰면서, 시작을 망설이는 러너와 같은 위치에서 말을 걸었다.",
      "영상 제작을 위한 아이데이션에 참여했다.",
      "Nike〈Runners Helping Runners〉",
      "The narrator wasn't a strong runner but someone who had only just started. His own missteps became the information, spoken from the same position as anyone still hesitating to go outside.",
      "Contributed to ideation for the film.",
    ],
    gallery: [
      {
        heading: "NIKE RUNNERS HELPING RUNNERS (Feat. RYU JUNYEOL)",
        columns: 3,
        gap: 8,
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
        gap: 8,
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
    title: "NIKE AIR FORCE 1 x T1",
    category: "Content",
    year: 2023,
    role: "Copywriter",
    client: "나이키코리아",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/1.avif",
    summary:
      "NIKE Air Force 1 x T1. 각자의 게임 플레이 스타일처럼 개성 넘치게 나이키 에어포스1을 커스텀하는 T1 선수들의 모습을 담다.",
    description: [
      "나이키 에어포스 1 × T1 커스텀 필름",
      "플레이 스타일이 곧 개성이라는 점을 커스텀이라는 형식으로 옮겼다. 선수들이 저마다 다른 방식으로 에어포스 1을 꾸며가는 과정과 그 안에서 나온 이야기에 초점을 맞췄다.",
      "영상 제작을 위한 아이데이션에 참여했다.",
      "Nike Air Force 1 × T1 custom film",
      "Playing style as personality, translated into the form of customization. The focus stayed on the process — each player decorating the Air Force 1 in their own way, and the stories that came out of it.",
      "Contributed to ideation for the film.",
    ],
    gallery: [
      {
        columns: 4,
        gap: 8,
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
    title: "KAKAO Corp. PR Campaign",
    category: "Campaign",
    year: 2023,
    role: "Copywriter",
    client: "카카오",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/5.avif",
    summary:
      "카카오 기업 PR 캠페인 [1cm² 속 보이지 않는 노력]. 이미 모두의 일상이 된 카카오톡 앱, 그 뒤에서 보이지 않지만 지금 이 순간도 트래픽과 씨름하는 카카오 메시징 파트의 생생한 현장 이야기 - 365일 24시간 카톡을 지키는 그들의 노력을 담다.",
    description: [
      "카카오 기업 PR 캠페인〈1cm² 속 보이지 않는 노력〉",
      "새해 첫 0시, 예기치 못한 재해, 월드컵 득점 순간. 모두가 카카오톡을 여는 시점에 가장 바빠지는 트래픽 개발팀을 화자로 세웠다. 각 트래픽 이슈를 발생 날짜 기준으로 재구성해 현재와 과거를 오가는 다큐멘터리 구성을 잡고, 이해하기 어려운 트래픽 개념은 고속도로와 앰뷸런스에 빗대 시각화했다.",
      "영상 제작을 위한 아이데이션에 참여하고, 제작사와의 커뮤니케이션을 담당했다.",
      "Kakao corporate PR campaign〈Invisible Work Inside 1cm²〉",
      "Midnight on New Year's Day, an unexpected disaster, the moment a World Cup goal goes in. The people who get busiest exactly when everyone opens KakaoTalk became the narrators. Each traffic incident was rebuilt by date into a documentary moving between present and past, and traffic itself — hard to picture — was visualized as an ambulance caught on a blocked highway.",
      "Contributed to ideation for the film and handled communication with the production company.",
    ],
    stats: [
      { label: "Awards", value: "A.N.D. Award Grand Prix 2023 (디지털 광고 캠페인 부문 대기업 분야)" },
      { label: "Awards", value: "A.N.D. Award Winner 2023 (디지털 광고 캠페인 부문 IT서비스 분야)" },
    ],
    gallery: [
      {
        columns: 3,
        gap: 8,
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
        label: "1cm² 속 보이지 않는 카카오의 노력 🔍 | 365일 24시간 카톡을 지키는 사람들 @YOUTUBE",
        url: "https://www.youtube.com/watch?v=ro_6M5qc604&t=41s",
      },
    ],
  },
  {
    slug: "nike-hoshi-style-story",
    title: "NIKE HOSHI's Style Story",
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
        gap: 8,
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
        gap: 8,
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
      "나이키〈Style Story〉세븐틴 호시 편",
      "\"내가 되고 싶은 나처럼 옷을 입는다\"는 호시의 문장을 필름의 출발점으로 삼았다. 그의 스타일과 철학을 스토리 필름으로 담아내고, 보메로 5를 활용한 세 가지 룩으로 스타일링에 대한 영감을 줬다.",
      "영상 제작을 위한 아이데이션에 참여했다.",
      "Nike〈Style Story〉, with SEVENTEEN's HOSHI",
      "The film began from his own line: I dress like the person I want to become. It captured his style and philosophy as a story film, and offered inspiration for styling through three looks built around the Vomero 5.",
      "Contributed to ideation for the film.",
    ],
  },
  {
    slug: "lotteria-thanks-burger",
    title: "LOTTERIA THANKS BURGER",
    category: "Campaign",
    year: 2023,
    role: "Copywriter",
    client: "롯데리아",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/6.avif",
    summary:
      "롯데리아에서 한 해 가장 사랑받은 버거를 재출시하며 캠페인 영상부터 나만의 캐릭터로 카드를 만드는 사이트까지 롯데리아를 매개체로 연말연시 고마운 사람들에게 땡스~한 마음을 서로 전할 수 있는 IMC 캠페인을 설계.",
    description: [
      "롯데리아 연말 IMC 캠페인〈땡스버거〉",
      "투표로 뽑은 올해의 버거 '전주 비빔 라이스 버거'를 연말에 재출시하면서, 제품 이슈를 안부라는 정서로 바꿔 걸었다. \"버거싶다 친구야\"라는 한 줄이 티저 포스터부터 매장 키오스크와 트레이지까지 캠페인 전체의 문법이 됐고, 사이트에서는 자신이나 받는 사람을 닮은 캐릭터를 커스터마이징해 카드를 보내게 했다. 온라인에서 만든 카드는 전국 매장에서 나눠준 실물 카드로도 이어져, 화면 안팎에서 같은 인사를 주고받을 수 있게 했다.",
      "옥외 설치물과 캠페인 필름 카피라이팅, 이벤트 사이트 스토리보드 제작과 웹 개발사 핸들링을 맡았다. 매장 점장, 옥외 설치 업체와의 커뮤니케이션도 함께 진행했다.",
      "Lotteria year-end IMC campaign〈Thanks Burger〉",
      "The burger of the year, chosen by public vote, returned at the end of the year — and the product news was reframed as an exchange of greetings. A single line, 버거싶다 친구야, a play on the Korean for \"I miss you,\" became the grammar of everything from teaser posters to in-store kiosks and tray mats. On the site, people customized a character resembling themselves or the person receiving the card. Cards made online continued into physical cards handed out at stores nationwide, so the same greeting could travel on and off screen.",
      "Copywriting for outdoor installations and the campaign film, storyboarding the event site, and directing the web development partner. Also handled communication with store managers and the installation crew.",
    ],
    stats: [
      { label: "Awards", value: "A.N.D. Award Grand Prix 2024 (디지털 광고 캠페인 부문 대기업 분야)" },
    ],
    links: [
      { label: "고마운 사람에게 마음을 전하세요ㅣ롯데리아 땡스버거 @YOUTUBE", url: "https://www.youtube.com/watch?v=Vy_--uYhmwc" },
    ],
    gallery: [
      {
        columns: 3,
        gap: 8,
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
        gap: 8,
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
        gap: 8,
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
    title: "NIKE AIRMAX Dn Style",
    category: "Content",
    year: 2024,
    role: "Copywriter",
    client: "나이키코리아",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/3.avif",
    summary:
      "과감한 개성의 나이키 에어맥스Dn 스타일 컨텐츠. 케이팝 아티스트들의 스타일링을 책임지고 있는 스타일리스트 김영진과 모델 채종석의 룩을 통해 에어맥스 Dn만의 독보적인 스타일을 표현하다.",
    description: [
      "나이키 에어맥스 Dn 스타일 컨텐츠",
      "제품 설명 대신 착장으로 답하는 방식을 택했다. 케이팝 아티스트들의 스타일링을 맡아온 김영진이 모델 채종석에게 룩을 입히며, 에어맥스 Dn 하나로 소화할 수 있는 코디의 스펙트럼을 넓게 보여줬다.",
      "영상 제작을 위한 아이데이션에 참여했다.",
      "Nike Air Max Dn style content",
      "Rather than explaining the product, the answer arrived as an outfit. Stylist Kim Young-jin, who has dressed K-pop artists for years, built looks on model Chae Jong-seok, showing how wide a range of styling a single pair of Air Max Dn can carry.",
      "Contributed to ideation for the film.",
    ],
    gallery: [
      {
        heading: "NIKE AIRMAX Dn STYLE by KIM YOUNGJIN",
        columns: 4,
        gap: 8,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/1.avif", width: 878, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/2.avif", width: 878, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/3.avif", width: 878, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/4.avif", width: 878, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/5.avif", width: 878, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/6.avif", width: 878, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/7.avif", width: 878, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/8.avif", width: 878, height: 1562 },
        ],
      },
      {
        heading: "CHAE JONGSUK'S AIRMAX Dn STYLED BY KIM YOUNGJIN",
        columns: 4,
        gap: 8,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/9.avif", width: 878, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/10.avif", width: 878, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/11.avif", width: 878, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/12.avif", width: 878, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/13.avif", width: 878, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/14.avif", width: 878, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/15.avif", width: 878, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIRMAX%20Dn/16.avif", width: 878, height: 1562 },
        ],
      },
    ],
    links: [
      { label: "NIKE : AIRMAX Dn STYLE by KIM YOUNGJIN @NIKESEOUL ON INSTAGRAM", url: "https://www.instagram.com/p/C5fqASvR2jm/" },
      { label: "NIKE : CHAE JONGSUK'S AIRMAX Dn STYLED BY KIM YOUNGJIN @NIKESEOUL ON INSTAGRAM", url: "https://www.instagram.com/p/C5hX_EbB2Q7/" },
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
      "LG 그램이 찾아가는 팝업〈그램고〉부산 편",
      "팝업은 방문 의사가 있는 사람에게만 도달한다는 구조적 한계가 있다. 코레일과 협업해 부산역 안에 한 달간 매장을 열어, 열차를 기다리는 대기 시간을 체험 시간으로 바꿨다. 목적지로 찾아오게 하는 대신 이미 형성된 동선 위에 놓는 방식으로 12만 명이 LG 그램을 체험했다.",
      "팝업 상세 운영안 기획과 제안, 옥외 설치물과 메이킹 필름 카피라이팅을 맡았다. 코레일유통, 팝업 진행사와의 커뮤니케이션도 함께 진행했다.",
      "LG gram's traveling pop-up store〈gramGO〉, Busan",
      "A pop-up only reaches people who already intend to visit. Working with KORAIL, the store opened inside Busan Station for a month, turning the wait for a train into time spent with a laptop. Instead of asking people to come to a destination, it was placed on a path they were already walking — 120,000 people tried an LG gram.",
      "Planning and proposing the detailed pop-up operation, and copywriting for outdoor installations and the making-of film. Also handled communication with KORAIL Retail and the pop-up operator.",
    ],
    gallery: [
      {
        columns: 3,
        gap: 8,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/1.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/2.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/3.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/4.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/5.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/6.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/7.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/8.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/9.avif", width: 1713, height: 964 },
        ],
      },
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
      "gramGO AI 상상여행사, AI를 활용한 BTL 캠페인. 신제품 LG 그램 프로의 고성능을 체험시키기 위해 음악, 이미지, 대화형 3종의 생성형 AI를 해치와 함께 여행을 떠나듯 경험해보는 여행사 컨셉의 체험형 캠페인 진행",
    description: [
      "LG 그램 BTL 캠페인〈그램고 AI 상상여행사〉",
      "여름휴가 시즌에 맞춰 그램 프로의 AI 성능을 여행사라는 형식에 담았다. 서울시 캐릭터 해치와 소울프렌즈를 안내자로 두고, 취향에 맞는 여행지를 추천받아 티켓을 발급하고 가사를 입력해 목적지에 어울리는 음원을 만들고 포토부스 사진의 배경을 AI로 편집해 키링으로 가져가는 동선을 설계했다. 성능을 설명하는 대신 하루치 체험으로 번역한 셈이다.",
      "팝업 상세 운영안 기획과 제안, 옥외 설치물과 메이킹 필름 카피라이팅을 맡았다. 서울시 관계자, 팝업 진행사와의 커뮤니케이션도 함께 진행했다.",
      "LG gram BTL campaign〈gramGO AI Imaginary Travel Agency〉",
      "For the summer holiday season, the gram Pro's AI performance was housed inside the form of a travel agency. With Seoul's city characters Haechi and Soul Friends as guides, visitors were recommended a destination and issued a ticket, wrote lyrics to generate a song suited to that city, and edited a photo booth image with AI to take home as a keyring. Performance wasn't explained; it was translated into a day of travel.",
      "Planning and proposing the detailed pop-up operation, and copywriting for outdoor installations and the making-of film. Also handled communication with the Seoul Metropolitan Government and the pop-up operator.",
    ],
    stats: [
      { label: "Awards", value: "A.N.D. Award Grand Prix 2024 (디지털 광고 캠페인 부문 IT기기 분야)" },
    ],
    gallery: [
      {
        columns: 3,
        gap: 8,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/1.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/2.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/3.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/4.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/5.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/6.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/7.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/8.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/9.avif", width: 1713, height: 964 },
        ],
      },
      {
        heading: "MISSION",
        images: [{ url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/10.avif", width: 1910, height: 1080 }],
      },
      {
        heading: "INTRODUCTION",
        images: [{ url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/11.avif", width: 1910, height: 1080 }],
      },
      {
        heading: "IMAGINARY AI TICKET BOOTH",
        images: [{ url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/12.avif", width: 1910, height: 1080 }],
      },
      {
        heading: "IMAGINARY BGM STUDIO",
        images: [{ url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/13.avif", width: 1910, height: 1080 }],
      },
      {
        heading: "IMAGINARY PHOTO STUDIO",
        images: [{ url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/14.avif", width: 1910, height: 1080 }],
      },
      {
        heading: "LUCKY DRAW",
        images: [{ url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/15.avif", width: 1910, height: 1080 }],
      },
      {
        heading: "POP-UP BOOTH",
        columns: 1,
        images: [{ url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/16.avif", width: 1910, height: 1080 }, { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20SEASON%202/17.avif", width: 1880, height: 1063 }],
      },
    ],
    links: [
      { label: "LG 그램 : LG gram GO AI 상상여행사 2024", url: "https://tvcf.co.kr/play/ah04681-971352" },
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
      "LG 그램 AI 활용법 컨텐츠 시리즈〈그램VI법〉",
      "기능 소개가 아니라 사용 맥락에서 출발했다. 대학생과 직장인이 반복해서 마주치는 상황을 여덟 편으로 나누고, 그램 프로의 AI 기능이 그 상황 안에서 어떻게 쓰이는지를 편마다 다른 방식으로 풀었다.",
      "영상 제작을 위한 아이데이션과 카피라이팅, 신규 프로그램 개발사 커뮤니케이션을 맡았다. 그램 AI를 효과적으로 활용하기 위한 사용자 안내서도 기획하고 제작했다.",
      "〈gram VI-beop〉, a content series on using LG gram's AI",
      "The starting point was context, not a feature list. Eight episodes were built around situations students and office workers meet again and again, each showing the gram Pro's AI at work inside one of them, in a different way.",
      "Ideation and copywriting for the films, and communication with the developer of the new gram program. Also planned and produced a user guide for making better use of gram AI.",
    ],
    gallery: [
      {
        heading: "BACKGROUND",
        text: [
          "LG 그램은 2025년 On-device AI를 탑재한 그램 AI 제품 출시를 앞두고 노트북 시장의 새로운 패러다임을 제시하고자 했다.\n기존의 무게, 기능, 속도 중심의 시장에서 벗어나 그램 AI만의 독특한 가치와 활용성을 효과적으로 전달하기위한 전략적 캠페인이 필요한 상황.",
          "이에 '그램VI법 캠페인'을 기획했다.\n이 캠페인은 LG 그램 Pro만의 차별화된 AI 기능과 실용적 가치를 부각시키는 데 중점을 두었다.\n특히 주요 타겟층인 대학생과 직장인들의 실제 사용 환경을 고려한 시나리오를 통해 그램 AI의 실질적인 효용성을 공감할 수 있는 숏폼 콘텐츠로 제작했다.\n총 8편의 에피소드로 구성된 이 캠페인은 각 편마다 LG 그램 Pro의 핵심 AI 기능을 하나씩 집중적으로 소개한다.",
        ],
        images: [],
      },
      {
        columns: 3,
        gap: 8,
        playOverlay: true,
        captions: [
          "LG gram VI법 (Teaser 편)",
          "LG gram VI법 (EP. 01)",
          "LG gram VI법 (EP. 02)",
          "LG gram VI법 (EP. 03)",
          "LG gram VI법 (EP. 04)",
          "LG gram VI법 (EP. 05)",
          "LG gram VI법 (EP. 06)",
          "LG gram VI법 (EP. 07)",
          "LG gram VI법 (EP. 08)",
        ],
        links: [
          "https://tvcf.co.kr/play/bh07658-973485",
          "https://tvcf.co.kr/play/bh12431-970127",
          "https://tvcf.co.kr/play/bh12795-970131",
          "https://tvcf.co.kr/play/ah12886-970132",
          "https://tvcf.co.kr/play/ah15221-970658",
          "https://tvcf.co.kr/play/ah11265-972014",
          "https://tvcf.co.kr/play/bh11538-972017",
          "https://tvcf.co.kr/play/ah23604-972040",
          "https://tvcf.co.kr/play/ah04686-972852",
        ],
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai/0.png", width: 1080, height: 1920 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai/1.jpg", width: 1080, height: 1920 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai/2.jpg", width: 1080, height: 1920 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai/3.jpg", width: 1080, height: 1920 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai/4.jpg", width: 1080, height: 1920 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai/5.jpg", width: 1080, height: 1920 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai/6.jpg", width: 1080, height: 1920 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai/7.jpg", width: 1080, height: 1920 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai/8.jpg", width: 1080, height: 1920 },
        ],
      },
      {
        heading: "IDEA",
        list: [
          {
            title: "기존의 AI, 상식을 뒤집는 슬로건",
            body: "그램비법이 말하는 AI는 챗지피티와 같은 오픈AI가 아닌 온디바이스 기반의 나만의 AI였다.\n그램비법 캠페인 슬로건에 새로운 AI의 의미를 녹여내기 위해 'AI'를 180° 회전시켜\n'AI'와 '비법'이라는 두 가지 의미를 동시에 표현했다.\n이 변화하는 슬로건을 모션 그래픽으로 제작하여 숏폼 콘텐츠의 인트로 타이틀에 적용함으로써\n캠페인의 핵심 메시지를 효과적으로 전달하도록 했다.",
          },
          {
            title: "그램 AI의 GUI 구현",
            body: "각 에피소드마다 그램 AI의 GUI (Graphical User Interface)를 기능별 특성에 맞게 구성했다.\n'타임트래블'은 이전 기록을 타임라인처럼 드래그해 보여주고, 'AI 요약'은 문서 추가와 결과 출력 과정을 시각적으로 표현했다.\n'AI 검색'은 검색한 이미지를 작업 중인 툴에 바로 적용하는 모습을 직관적으로 보여주었으며,\n'AI 냉각 모드'는 듀얼 쿨링팬 작동을 3D 효과로 보여주어 기능의 생동감을 더했다.",
          },
          {
            title: "시선을 사로잡는 전략적 색감",
            body: "각 에피소드마다 특색 있는 배경 색상을 활용해 제품을 돋보이게 했다.\n영상의 썸네일도 동일한 색상으로 디자인하여 SNS 피드에서 콘텐츠의 가시성을 높였다.",
          },
        ],
        images: [],
      },
      {
        heading: "EXECUTION",
        text: [
          "'그램VI법 캠페인'은 신제품 출시와 신학기를 앞두고 노트북 구매가 활발한 1월~2월 기간 동안\nLG 그램 공식 인스타그램(@mylggram)을 통해 순차적으로 진행되었다.\n1월 3일 티저편을 공개하고, 1월 13일에는 대학생을 타겟으로 한 에피소드 01, 02, 03편을 발행했다.\n이어서 1월 21일부터 2월 18일까지는 직장인을 타겟으로 한 에피소드 04, 05, 06, 07을 매주 1편씩 공개했다.",
          "'그램VI법 캠페인'은 온라인에만 그치지 않고 오프라인으로도 확장하여\n'그램 AI를 효과적으로 활용하기 위한 사용자 안내서: 그램VI법'을 책자로 제작했다.\n이 안내서는 2025 그램 Pro 구매 고객에게 무상으로 제공하여 사용자들이 그램 AI를 더욱 재미있게 활용할 수 있도록 했다.",
        ],
        images: [],
      },
      {
        heading: "그램VI법 TVCF 댓글 반응",
        images: [{ url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai/9.avif", width: 1700, height: 1010 }],
      },
      {
        heading: "RESULT",
        text: [
          "(2025.04.15 기준) 총 167만 2,467 인게이지먼트를 달성했다.\n모든 에피소드는 약 166만 5,798회 시청되었으며, 영상 발행과 함께 진행된 '그램비법이 필요한 친구 태그 이벤트' 등\n다양한 참여형 소셜 이벤트를 통해 4,542개의 댓글이 수집되었다.\n이러한 활동으로 콘텐츠의 확산력을 높이고 소비자 반응을 통한 인사이트를 확보할 수 있었다.\n그리고 국내 영상 광고 전문 플랫폼 TVCF에서는 \"AI를 뒤집어 비법으로 만든 것이 인상적이었다\",\n\"AI를 어떻게 활용할 수 있는지 잘 보여주고 있어 호감이 느껴진다\" 등 긍정적인 평가가 이어졌고, 결과적으로 그램 AI의 이슈화와 브랜드 긍정 여론 형성에 성공했다.",
        ],
        images: [],
      },
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
      "〈그램VI법〉에서 이어진 숏폼 클래스",
      "시리즈의 포맷을 강의로 바꿔 정보 밀도를 올렸다. 테크 유튜버 '잇츠 오케이 민성'이 그램 프로의 CPU 특성, 멀티태스킹, 4K 편집을 짧은 호흡으로 나눠 다루면서 사양표로는 전달되지 않는 체감 차이를 화면으로 보여줬다.",
      "클래스 인플루언서 서칭과 제안, 영상 제작을 위한 아이데이션과 카피라이팅을 맡았다.",
      "A short-form class series continuing from〈gram VI-beop〉",
      "Shifting the format to lessons raised the density of information. Tech YouTuber \"It's OK Minseong\" took the gram Pro's CPU characteristics, multitasking, and 4K editing in short segments, showing on screen the difference a spec sheet can't carry.",
      "Sourcing and proposing the class influencer, plus ideation and copywriting for the films.",
    ],
    gallery: [
      {
        heading: "LG 그램VI법 클래스 EP. 01",
        columns: 4,
        gap: 8,
        feature: { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/0.jpg", width: 1080, height: 1920 },
        featureLink: "https://tvcf.co.kr/play/ah11083-975012",
        playOverlay: true,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/1.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/2.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/3.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/4.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/5.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/6.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/7.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/8.avif", width: 688, height: 1224 },
        ],
      },
      {
        heading: "LG 그램VI법 클래스 EP. 02",
        columns: 4,
        gap: 8,
        feature: { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/9.jpg", width: 1080, height: 1920 },
        featureLink: "https://tvcf.co.kr/play/bh11174-975013",
        playOverlay: true,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/10.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/11.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/12.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/13.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/14.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/15.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/16.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/17.avif", width: 688, height: 1224 },
        ],
      },
      {
        heading: "LG 그램VI법 클래스 EP. 03",
        columns: 4,
        gap: 8,
        feature: { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/18.jpg", width: 1080, height: 1920 },
        featureLink: "https://tvcf.co.kr/play/ah11265-975014",
        playOverlay: true,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/19.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/20.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/21.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/22.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/23.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/24.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/25.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/LG%20gram%20ai%20-%20Class/26.avif", width: 688, height: 1224 },
        ],
      },
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
      "G-SHOCK 아이코닉 스타일 시리즈 컨텐츠",
      "엔플라잉의 리더이면서 배우로 활동 반경을 넓히고 있는 이승협의 일상을 따라갔다. 오래도록 형태를 바꾸지 않고 사랑받아온 시계처럼, 그 역시 오래 기억되는 아티스트가 되기 위해 자기 자리를 지키고 있었다.",
      "영상 제작을 위한 아이데이션과 카피라이팅을 맡았다.",
      "G-SHOCK Iconic Styles series content",
      "The film followed a day with Lee Seung-hyub, leader of N.Flying and now widening his range as an actor. Like a watch that has kept both its shape and its following for decades, he was holding his own ground, working to become an artist people remember for a long time.",
      "Ideation and copywriting for the film.",
    ],
    gallery: [
      {
        heading: "G-SHOCK ICONIC STYLES (Feat. LEE SEUNGHYUB)",
        columns: 1,
        marginBottom: 8,
        playOverlay: true,
        links: ["https://www.youtube.com/watch?v=r3U0wLYNuCY"],
        images: [{ url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/0.png", width: 1920, height: 1080 }],
      },
      {
        columns: 3,
        gap: 8,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/1.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/2.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/3.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/4.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/5.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/6.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/7.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/8.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/9.avif", width: 1713, height: 964 },
        ],
      },
      {
        heading: "G-SHOCK ICONIC STYLES (Feat. LEE SEUNGHYUB)",
        columns: 4,
        gap: 8,
        feature: { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/10.png", width: 1080, height: 1920 },
        featureLink: "https://www.youtube.com/shorts/KJDjpDyFMsk",
        playOverlay: true,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/11.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/12.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/13.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/14.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/15.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/16.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/17.avif", width: 688, height: 1224 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/G-SHOCK%20ICONIC%20STYLES/18.avif", width: 688, height: 1224 },
        ],
      },
    ],
  },
  {
    slug: "ourhome-taste-of-ourhome",
    title: "OURHOME 급이 다른 미식",
    category: "Campaign",
    year: 2026,
    role: "Creative Planner",
    client: "아워홈",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/0.avif",
    summary:
      "아워홈 급식 블루리본 캠페인 '급이 다른 미식'. 급식이 미식의 기준을 넘을 수 있을까? 그 답을 증명하기 위한 아워홈 급식 연구소의 '급이 다른 미식' 캠페인 런칭. 급식 최초 블루리본 도전 과정을 담은 비하인드 영상부터 급식 셰프 5인의 메뉴 개발 과정 소개, 캠페인 사이트 운영과 리뷰 이벤트 진행.",
    description: [
      "아워홈 급식 블루리본 캠페인〈급이 다른 미식〉",
      "급식이 미식의 기준을 넘을 수 있을까. 아워홈 급식연구소의 급식 최초 블루리본 도전을 캠페인의 출발점으로 잡고, 그 과정을 비하인드 영상으로 기록했다. 셰프 5인이 블루리본 심사를 통과한 메뉴는 캠페인 사이트에 순차적으로 공개했고, 실제로 먹어본 고객들이 시식평을 남기는 온라인 이벤트로 이어갔다.",
      "캠페인 사이트 스토리보드 기획과 웹 개발사 핸들링, 리뷰 이벤트 관리, 런칭 바이럴 컨텐츠 제작 전반을 맡았다.",
      "OURHOME catering Blue Ribbon campaign〈A Different Class of Taste〉",
      "Can catering food cross the standard of fine dining? The campaign began from the OURHOME Food Research Center's Blue Ribbon attempt — a first for catering — and recorded the process on film. Menus that passed the five chefs' Blue Ribbon review were revealed on the campaign site one by one, leading into an online event where customers who tried the food left their own reviews.",
      "Storyboarding the campaign site and directing the web development partner, managing the review event, and overall production of the launch viral content.",
    ],
    gallery: [
      {
        heading: "OURHOME BLUE RIBBON CAMPAIGN FILM",
        columns: 3,
        gap: 8,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/1.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/2.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/3.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/4.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/5.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/6.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/7.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/8.avif", width: 1713, height: 964 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/9.avif", width: 1713, height: 964 },
        ],
      },
      {
        heading: "OURHOME BLUE RIBBON BEHIND-THE-SCENE FILM",
        columns: 3,
        gap: 8,
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/10.avif", width: 2776, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/11.avif", width: 2776, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/12.avif", width: 2776, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/13.avif", width: 2776, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/14.avif", width: 2776, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/15.avif", width: 2776, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/16.avif", width: 2776, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/17.avif", width: 2776, height: 1562 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/18.avif", width: 2776, height: 1562 },
        ],
      },
      {
        heading: "CAMPAIGN MICROSITE",
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/OURHOME%20-%20Taste%20of%20ourhome/19.avif", width: 1912, height: 1080 },
        ],
      },
    ],
    links: [
      { label: "아워홈 : 급이 다른 미식 캠페인 사이트", url: "https://taste-of-ourhome.com/" },
      { label: "아워홈 : 급식, 미식이 되다. 아워홈 편", url: "https://www.youtube.com/watch?v=1Nsw9YN1Fmg" },
      { label: "아워홈 : 급식의 RE:BORN. 아워홈 편", url: "https://www.youtube.com/watch?v=1Nsw9YN1Fmg" },
      { label: "아워홈 : 급이 다른 미식 셰프, 디테일 장인", url: "https://www.youtube.com/shorts/a_EohBXbzJ0" },
      { label: "아워홈 : 급이 다른 미식 셰프, 육수 마스터", url: "https://www.youtube.com/shorts/3KIqp1vxwCk" },
      { label: "아워홈: 급이 다른 미식 셰프, 불꽃예술가", url: "https://www.youtube.com/shorts/B5yPcc9sxHE" },
      { label: "아워홈: 급이 다른 미식 셰프, 한식 미학가", url: "https://www.youtube.com/shorts/BLjPqVwKV_Y" },
      { label: "아워홈: 급이 다른 미식 셰프, 중식의 대가", url: "https://www.youtube.com/shorts/yudUIv0Qr7A" },
    ],
  },
  {
    slug: "bibigo-svt-social",
    title: "bibigo Global Ambassador SVT Campaign",
    category: "Content",
    year: 2025,
    role: "Copywriter",
    client: "CJ제일제당",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20SVT%20Social/0.jpeg",
    summary:
      "CJ제일제당의 글로벌 K-푸드 브랜드 비비고와 세븐틴이 함께한 글로벌 캠페인. 비비고 글로벌 SNS 채널 @bibigo.global의 인스타그램 및 X 콘텐츠를 기획·제작했다.",
    description: [
      "비비고 × 세븐틴 글로벌 캠페인 소셜 컨텐츠",
      "브랜드 필름과 마이크로사이트 bibigo HOUSE에서 나온 비주얼 에셋을 소셜의 호흡에 맞게 다시 편집했다. @bibigo.global 인스타그램과 X에서 캠페인 메시지가 채널마다 흩어지지 않도록 톤을 하나로 유지했다.",
      "비주얼 에셋을 활용한 소셜 컨텐츠 기획과 제안, 국문 카피라이팅을 맡았다. 인스타그램과 X 계정 운영, 실시간 고객 반응 모니터링도 함께 진행했다.",
      "Social content for the bibigo × SEVENTEEN global campaign",
      "Visual assets from the brand film and the bibigo HOUSE microsite were re-edited to the rhythm of social. Across @bibigo.global on Instagram and X, the campaign message was held in a single tone rather than scattering channel by channel.",
      "Planning and proposing social content built on the campaign's visual assets, and Korean copywriting. Also ran the Instagram and X accounts and monitored audience response in real time.",
    ],
    links: [
      { label: "bibigo.global @INSTAGRAM", url: "https://www.instagram.com/bibigo.global/" },
      { label: "bibigo.global @X", url: "https://x.com/bibigoGlobal" },
    ],
  },
  {
    slug: "bibigo-gyustaurant",
    title: "MINGYU's bibigo Restaurant",
    category: "Content",
    year: 2026,
    role: "Copywriter",
    client: "CJ제일제당",
    coverImage: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/0.jpeg",
    summary:
      "CJ제일제당의 글로벌 K-푸드 브랜드 비비고와 세븐틴이 함께한 글로벌 캠페인의 후속 콘텐츠〈비비고 규스토랑〉. 세븐틴 민규가 비비고 제품을 활용한 메뉴와 조리법을 소개하는 글로벌 SNS 콘텐츠를 기획·제작했다.",
    description: [
      "비비고 × 세븐틴 글로벌 캠페인 컨텐츠〈비비고 규스토랑〉",
      "캠페인이 이어지는 동안, 민규가 비비고 제품으로 직접 메뉴를 만드는 컨텐츠로 축을 하나 더 세웠다. CJ더마켓 라이브커머스 공개 일정에 맞춰 레시피와 비하인드, 밸런스 게임으로 포맷을 나눠, 글로벌 팬들이 여러 번 다시 보고 따라 해볼 만한 컨텐츠로 구성했다.",
      "영상 제작을 위한 카피라이팅과 신규 레시피 개발을 위한 푸드스타일리스트 커뮤니케이션을 맡았다.",
      "〈MINGYU's bibigo Restaurant〉, content from the bibigo × SEVENTEEN global campaign",
      "While the campaign was running, a second axis was added: Mingyu cooking his own menu with bibigo products. Timed to the CJ TheMarket live commerce release, the content was divided into recipes, behind-the-scenes, and balance games — built to be watched more than once and cooked along with.",
      "Copywriting for the films, and communication with the food stylist developing the new recipes.",
    ],
    gallery: [
      {
        columns: 3,
        gap: 8,
        playOverlay: true,
        captions: ["Teaser @bibigo.global INSTAGRAM", "Teaser2 @bibigo.global INSTAGRAM", "Main @bibigo.global INSTAGRAM"],
        captionPosition: "above",
        links: [
          "https://www.instagram.com/p/DUSPEDLEhkY/",
          "https://www.instagram.com/p/DUZ9dWtkmGx/",
          "https://www.instagram.com/p/DUkQpaIEqJi/",
        ],
        images: [
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/1.jpeg", width: 1080, height: 1920 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/2.jpeg", width: 1080, height: 1920 },
          { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/3.jpeg", width: 1080, height: 1920 },
        ],
      },
      {
        columns: 3,
        gap: 8,
        captions: ["Recipe1 (ENG Ver.)", "Recipe2 (ENG Ver.)", "Recipe3 (ENG Ver.)"],
        captionPosition: "above",
        carouselGroups: [
          [
            { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe1_1_eng.jpeg", width: 1015, height: 1350 },
            { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe1_2_eng.jpeg", width: 1015, height: 1350 },
            { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe1_3_eng.jpeg", width: 1015, height: 1350 },
            { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe1_4_eng.jpeg", width: 1015, height: 1350 },
          ],
          [
            { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe2_1_eng.jpeg", width: 1015, height: 1350 },
            { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe2_2_eng.jpeg", width: 1015, height: 1350 },
            { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe2_3_eng.jpeg", width: 1015, height: 1350 },
            { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe2_4_eng.jpeg", width: 1015, height: 1350 },
          ],
          [
            { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe3_1_eng.jpeg", width: 1015, height: 1350 },
            { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe3_2_eng.jpeg", width: 1015, height: 1350 },
            { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe3_3_eng.jpeg", width: 1015, height: 1350 },
            { url: "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/recipe/recipe3_4_eng.jpeg", width: 1015, height: 1350 },
          ],
        ],
        images: [],
      },
    ],
    links: [
      { label: "bibigo.global @INSTAGRAM", url: "https://www.instagram.com/bibigo.global/" },
      { label: "bibigo.global @X", url: "https://x.com/bibigoGlobal" },
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
