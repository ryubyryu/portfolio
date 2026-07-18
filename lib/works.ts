import { supabase } from "@/lib/supabase";

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
  };
}

// Supabase 환경변수가 없을 때(로컬 개발 초기 등) 화면이 비지 않도록 쓰는
// 목데이터. supabase/seed.sql과 내용을 맞춰뒀습니다.
const fallbackWorks: Work[] = [
  {
    slug: "paper-house",
    title: "Paper House",
    category: "Production",
    year: 2025,
    role: "Web Design & Development",
    client: "Paper House",
    summary: "종이 질감을 모티프로 한 소규모 출판사 웹사이트.",
    description: [
      "Next.js 기반으로 개발했고, 여백과 스크롤 리듬에 신경 썼습니다.",
      "출간 도서 아카이브를 그리드 형태로 정리했습니다.",
    ],
  },
  {
    slug: "still-room",
    title: "Still Room",
    category: "Production",
    year: 2023,
    role: "Web Design & Development",
    summary: "가구 브랜드의 제품 아카이브 웹사이트.",
    description: [
      "제품 하나하나를 큰 이미지로 보여주는 데 집중한 미니멀 커머스 페이지입니다.",
    ],
  },
  // 아래는 TVCF 포트폴리오(star.tvcf.co.kr) 기준 2018.10.12 ~ 2021.10.06
  // Production 실제 경력입니다. 캠페인 단위로 묶었습니다.
  {
    slug: "lg-prael",
    title: "LG 프라엘",
    category: "Production",
    year: 2018,
    role: "Producer",
    client: "LG",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000358/A0003585631C89.jpg",
    summary: "맑은피부, 동안피부를 소구한 뷰티 디바이스 런칭 캠페인.",
    description: ["맑은피부", "동안피부"],
  },
  {
    slug: "ohui-first-genature",
    title: "오휘 더 퍼스트 제너츄어",
    category: "Production",
    year: 2018,
    role: "Producer",
    client: "오휘",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000361/A000361963071C.jpg",
    summary: "피부감도를 소구한 스킨케어 캠페인.",
    description: ["피부감도"],
  },
  {
    slug: "lg-hwisen-thinq",
    title: "LG 휘센 인공지능 스스로에어컨 ThinQ",
    category: "Production",
    year: 2018,
    role: "Producer",
    client: "LG",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000363/A000363620C0E2.jpg",
    summary: "제습·냉방·난방·공기청정 4종 컷으로 구성된 에어컨 캠페인.",
    description: ["제습", "냉방", "난방", "공기청정"],
  },
  {
    slug: "whoo-cheongidan",
    title: "후 천기단 화현 에센스 쿠션",
    category: "Production",
    year: 2018,
    role: "Producer",
    client: "후(Whoo)",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000364/A000364828CCC8.jpg",
    summary: '"세상 위에 빛나다"를 콘셉트로 한 쿠션 캠페인.',
    description: ["세상 위에 빛나다"],
  },
  {
    slug: "benz-service",
    title: "메르세데스 벤츠 서비스",
    category: "Production",
    year: 2019,
    role: "Producer",
    client: "Mercedes-Benz",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000369/A0003697882565.jpg",
    summary: '"동행(Go Together)"을 콘셉트로 한 서비스 캠페인.',
    description: ["동행(Go Together)"],
  },
  {
    slug: "whoo-bichup",
    title: "후 비첩 순환 에센스",
    category: "Production",
    year: 2019,
    role: "Producer",
    client: "후(Whoo)",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000369/A0003697334437.jpg",
    summary: '"순환의 힘"을 소구한 에센스 캠페인.',
    description: ["순환의 힘"],
  },
  {
    slug: "ohui-first-ample",
    title: "오휘 더 퍼스트 앰플",
    category: "Production",
    year: 2019,
    role: "Producer",
    client: "오휘",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000374/A000374065BF22.jpg",
    summary: '"빛의 시그니처"를 콘셉트로 한 앰플 캠페인.',
    description: ["빛의 시그니처"],
  },
  {
    slug: "lotte-himart-20th",
    title: "롯데하이마트",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "롯데하이마트",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000395/A000395640C4C0.jpg",
    summary: "창립 20주년 세일 캠페인.",
    description: ["창립 20주년 세일 20년만의 기회"],
  },
  {
    slug: "dongwon-tuna",
    title: "동원참치",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "동원참치",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000401/A000401676F9A1.jpg",
    summary: '"캔을 따"를 콘셉트로 한 브랜드 캠페인.',
    description: [
      "캔을 따",
      "캔을 따 Full",
      "캔을 따 인터뷰",
      "동원이도 캔을 따!",
    ],
  },
  {
    slug: "kanu-vanilla-latte",
    title: "카누 바닐라 라떼",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "카누",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000402/A000402120C1F1.jpg",
    summary: '"음~ 왜 이제 왔어요"를 콘셉트로 한 신제품 캠페인.',
    description: ["음~ 왜 이제 왔어요"],
  },
  {
    slug: "duolac",
    title: "듀오락",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "듀오락",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000404/A0004041601064.jpg",
    summary: "우리나라 유산균 듀오락 캠페인.",
    description: ["우리나라 유산균 듀오락", "우리나라 유산균 듀오락 2"],
  },
  {
    slug: "porsche-911-timeless-machine",
    title: "포르쉐 911 Timeless Machine",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "Porsche",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000405/A000405404EC29.jpg",
    summary: "오너들의 이야기를 담은 오너 스토리 시리즈.",
    description: [
      "오너 스토리 종합",
      "오너 스토리 티저",
      "오너 스토리 신태윤",
      "오너 스토리 김택",
      "오너 스토리 전용훈",
      "오너 스토리 정규영",
    ],
  },
  {
    slug: "kanu-signature",
    title: "카누 시그니처",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "카누",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000406/A0004067366FBD.jpg",
    summary: "프리미엄 라인 런칭 캠페인 (가치·언박싱·범퍼 컷).",
    description: [
      "가치",
      "언박싱 디자인",
      "언박싱 맛",
      "범퍼A",
      "범퍼B",
      "범퍼C",
    ],
  },
  {
    slug: "pizza-alvolo",
    title: "피자알볼로",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "피자알볼로",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000409/A000409849737C.jpg",
    summary: '"본"을 콘셉트로 한 브랜드 캠페인.',
    description: ["본"],
  },
  {
    slug: "samsung-bespoke-dishwasher",
    title: "삼성 비스포크 식기세척기",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "Samsung",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000412/A000412187D985.jpg",
    summary: '"당신이 바라던 식기세척기"를 소구한 런칭 캠페인.',
    description: [
      "당신이 바라던 식기세척기 - TVC",
      "당신이 바라던 식기세척기 - 디지털",
    ],
  },
  {
    slug: "ranking-dak",
    title: "랭킹닭컴",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "랭킹닭컴",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000414/A0004141238722.jpg",
    summary: '"나홀로이식당" 시리즈 캠페인.',
    description: [
      "나홀로이식당_외국어ver",
      "나홀로이식당_치팅데이",
      "나홀로이식당_식단관리",
    ],
  },
  {
    slug: "jungkwanjang-2020",
    title: "정관장",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "정관장",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000417/A00041755917AA.jpg",
    summary: "안성기, 유지태가 출연한 홍삼 브랜드 캠페인.",
    description: ["종합", "안성기", "유지태"],
  },
  {
    slug: "dongwon-gift-set",
    title: "동원 선물세트",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "동원",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000418/A000418779860C.jpg",
    summary: '"건강 총동원"을 콘셉트로 한 선물세트 캠페인.',
    description: ["건강 총동원"],
  },
  {
    slug: "sos-state-of-survival",
    title: "S.O.S : 스테이트 오브 서바이벌",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "State of Survival",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000419/A000419157B67C.jpg",
    summary: "혜리, 정우성이 출연한 모바일 게임 광고.",
    description: [
      "티저",
      "티저 - 혜리",
      "티저 - 정우성",
      "혜리",
      "정우성",
    ],
  },
  {
    slug: "richam",
    title: "리챔",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "리챔",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000421/A000421108866F.jpg",
    summary: '"햄맛챔피온리챔"을 콘셉트로 한 캠페인.',
    description: ["햄맛챔피온리챔 15초", "햄맛챔피온리챔 30초"],
  },
  {
    slug: "denmark-pocket-cheese",
    title: "덴마크 인 포켓치즈",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "덴마크",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000422/A0004220445AD3.jpg",
    summary: '"10초면 찢기에 충분해"를 소구한 신제품 캠페인.',
    description: ["10초면 찢기에 충분해 (15s_A)"],
  },
  {
    slug: "samsung-bespoke-induction",
    title: "삼성 비스포크 인덕션",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "Samsung",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000423/A0004231617C27.jpg",
    summary: '김이나가 출연한 "Kitchen for You" 캠페인.',
    description: ["김이나의 Kitchen for You"],
  },
  {
    slug: "maxim-white-gold",
    title: "맥심 화이트골드",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "맥심",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000423/A000423111E5E6.jpg",
    summary: '"나에게 부드러워지는 시간"을 콘셉트로 한 캠페인.',
    description: ["나에게 부드러워지는 시간"],
  },
  {
    slug: "lotte-group",
    title: "롯데그룹",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "롯데그룹",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000423/A000423202B160.jpg",
    summary: '"함께 가는 친구, 롯데" 기업PR 캠페인.',
    description: ["함께 가는 친구, 롯데"],
  },
  {
    slug: "yogiyo-express",
    title: "요기요",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "요기요",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000424/A000424490E806.jpg",
    summary: '"익스프레스" 배달 서비스 캠페인.',
    description: ["익스프레스 라이더", "익스프레스 속도"],
  },
  {
    slug: "porsche-taycan",
    title: "포르쉐 더 뉴 타이칸",
    category: "Production",
    year: 2020,
    role: "Producer",
    client: "Porsche",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000424/A000424675E088.jpg",
    summary: '"Seoul, Electrified"를 콘셉트로 한 타이칸 런칭 캠페인.',
    description: [
      "더 뉴 타이칸 : Seoul, Electrified",
      "Seoul, electrified : 티저",
      "영혼의 전율",
    ],
  },
  {
    slug: "jungkwanjang-2021",
    title: "정관장",
    category: "Production",
    year: 2021,
    role: "Producer",
    client: "정관장",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000429/A0004294034F74.jpg",
    summary: '한석규, 김성령이 출연한 "제자리" 캠페인.',
    description: ["제자리:한석규", "제자리:김성령", "정관장몰:정몰"],
  },
  {
    slug: "nature-made",
    title: "네이처 메이드",
    category: "Production",
    year: 2021,
    role: "Producer",
    client: "Nature Made",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000430/A0004302297F37.jpg",
    summary: '"홈트", "배달음식" 등 일상 속 건강 캠페인.',
    description: ["홈트", "배달음식"],
  },
  {
    slug: "beplain",
    title: "비플레인",
    category: "Production",
    year: 2021,
    role: "Producer",
    client: "비플레인",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000450/A00045015209fd.jpg",
    summary: "녹두Song 캠페인.",
    description: ["녹두Song 캠페인"],
  },
  {
    slug: "myallri",
    title: "마이올리",
    category: "Production",
    year: 2021,
    role: "Producer",
    client: "마이올리",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000454/A000454832345C.jpg",
    summary:
      "건강기능식품 라인업 캠페인 (알티지 오메가3, 루테인, 비타민B, 프로바이오틱스 외).",
    description: [
      "나를 위한 케어레시피",
      "골든루트 밀크시슬(feat.간건강)",
      "코어 비타민B 플러스(feat.활력)",
      "프로바이오틱스(feat.장건강)",
      "알티지 알래스카 오메가3(feat.혈액순환)",
      "슈퍼크리티컬 루테인(feat.눈건강)",
      "나를 위한 케어 레시피2",
      "카마디 엑스투(feat.뼈건강)",
    ],
  },
  {
    slug: "woongjin-bookclub",
    title: "웅진북클럽",
    category: "Production",
    year: 2021,
    role: "Producer",
    client: "웅진북클럽",
    coverImage: "https://nmedia.tvcf.co.kr/media/print/0000454/A000454349D3B0.jpg",
    summary: '"독서의 기준"을 콘셉트로 한 브랜드 캠페인.',
    description: ["독서의 기준"],
  },
];

export async function getWorks(): Promise<Work[]> {
  if (!supabase) {
    return [...fallbackWorks].reverse().sort((a, b) => b.year - a.year);
  }

  const { data, error } = await supabase
    .from("works")
    .select(
      "slug, title, category, year, role, client, summary, description, cover_image, images"
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
      "slug, title, category, year, role, client, summary, description, cover_image, images"
    )
    .eq("slug", slug)
    .maybeSingle();

  if (error) throw error;
  return data ? fromRow(data as WorkRow) : undefined;
}

export async function getAdjacentWorks(slug: string) {
  const ordered = await getWorks();
  const index = ordered.findIndex((work) => work.slug === slug);
  return {
    prev: index > 0 ? ordered[index - 1] : undefined,
    next: index >= 0 && index < ordered.length - 1 ? ordered[index + 1] : undefined,
  };
}

export async function getCategories(): Promise<string[]> {
  const works = await getWorks();
  return Array.from(new Set(works.map((work) => work.category))).sort();
}
