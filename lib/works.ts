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
    slug: "quiet-mark",
    title: "Quiet Mark",
    category: "Campaign",
    year: 2025,
    role: "Brand Identity",
    client: "Quiet Mark Studio",
    summary: "절제된 타이포그래피를 중심으로 한 스튜디오 브랜드 아이덴티티.",
    description: [
      "로고, 타이포그래피 시스템, 명함/봉투 등 기본 응용 세트를 설계했습니다.",
      "브랜드의 절제된 톤을 유지하기 위해 컬러는 흑백 두 가지로 제한했습니다.",
    ],
  },
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
    slug: "field-notes",
    title: "Field Notes",
    category: "Content",
    year: 2024,
    role: "Editorial Design",
    summary: "여행 저널 매거진의 지면 레이아웃 디자인.",
    description: [
      "이미지와 텍스트의 비율을 페이지마다 다르게 구성해 리듬을 만들었습니다.",
      "그리드는 12컬럼을 기본으로 하되 필요한 곳에서만 깨뜨렸습니다.",
    ],
  },
  {
    slug: "low-tide",
    title: "Low Tide",
    category: "Content",
    year: 2024,
    role: "Photography",
    summary: "해안 마을을 기록한 개인 사진 시리즈.",
    description: [
      "이른 아침과 늦은 오후, 빛이 낮게 깔리는 시간대만 골라 촬영했습니다.",
    ],
  },
  {
    slug: "index-type",
    title: "Index Type",
    category: "Campaign",
    year: 2023,
    role: "Type Design & Identity",
    client: "Index",
    summary: "커스텀 서체를 기반으로 한 편집 스튜디오 아이덴티티.",
    description: [
      "숫자와 라벨이 많은 편집 작업 특성에 맞춰 고정폭 유틸리티 서체를 함께 설계했습니다.",
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
  // TODO: 아래는 그리드/페이지네이션 레이아웃 확인용 임시 목업 항목입니다.
  // 실제 작업물이 준비되면 교체하세요.
  {
    slug: "placeholder-07",
    title: "Placeholder Work 07",
    category: "Campaign",
    year: 2022,
    role: "Brand Identity",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-08",
    title: "Placeholder Work 08",
    category: "Production",
    year: 2022,
    role: "Web Design & Development",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-09",
    title: "Placeholder Work 09",
    category: "Content",
    year: 2021,
    role: "Editorial Design",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-10",
    title: "Placeholder Work 10",
    category: "Content",
    year: 2021,
    role: "Photography",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-11",
    title: "Placeholder Work 11",
    category: "Campaign",
    year: 2021,
    role: "Brand Identity",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-12",
    title: "Placeholder Work 12",
    category: "Production",
    year: 2020,
    role: "Web Design & Development",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-13",
    title: "Placeholder Work 13",
    category: "Content",
    year: 2020,
    role: "Editorial Design",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-14",
    title: "Placeholder Work 14",
    category: "Content",
    year: 2020,
    role: "Photography",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-15",
    title: "Placeholder Work 15",
    category: "Campaign",
    year: 2019,
    role: "Brand Identity",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-16",
    title: "Placeholder Work 16",
    category: "Production",
    year: 2019,
    role: "Web Design & Development",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-17",
    title: "Placeholder Work 17",
    category: "Content",
    year: 2019,
    role: "Editorial Design",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-18",
    title: "Placeholder Work 18",
    category: "Content",
    year: 2019,
    role: "Photography",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-19",
    title: "Placeholder Work 19",
    category: "Campaign",
    year: 2018,
    role: "Brand Identity",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-20",
    title: "Placeholder Work 20",
    category: "Production",
    year: 2018,
    role: "Web Design & Development",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-21",
    title: "Placeholder Work 21",
    category: "Content",
    year: 2018,
    role: "Editorial Design",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-22",
    title: "Placeholder Work 22",
    category: "Content",
    year: 2018,
    role: "Photography",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-23",
    title: "Placeholder Work 23",
    category: "Campaign",
    year: 2017,
    role: "Brand Identity",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-24",
    title: "Placeholder Work 24",
    category: "Production",
    year: 2017,
    role: "Web Design & Development",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-25",
    title: "Placeholder Work 25",
    category: "Content",
    year: 2017,
    role: "Editorial Design",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-26",
    title: "Placeholder Work 26",
    category: "Content",
    year: 2017,
    role: "Photography",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-27",
    title: "Placeholder Work 27",
    category: "Campaign",
    year: 2016,
    role: "Brand Identity",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-28",
    title: "Placeholder Work 28",
    category: "Production",
    year: 2016,
    role: "Web Design & Development",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-29",
    title: "Placeholder Work 29",
    category: "Content",
    year: 2016,
    role: "Editorial Design",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
  {
    slug: "placeholder-30",
    title: "Placeholder Work 30",
    category: "Content",
    year: 2016,
    role: "Photography",
    summary: "임시로 추가된 목업 콘텐츠입니다.",
    description: ["실제 작업물로 교체될 예정입니다."],
  },
];

export async function getWorks(): Promise<Work[]> {
  if (!supabase) {
    return [...fallbackWorks].sort((a, b) => b.year - a.year);
  }

  const { data, error } = await supabase
    .from("works")
    .select(
      "slug, title, category, year, role, client, summary, description, cover_image, images"
    )
    .order("year", { ascending: false })
    .order("sort_order", { ascending: true });

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
