export type Work = {
  slug: string;
  title: string;
  category: string;
  year: number;
  role: string;
  client?: string;
  summary: string;
  description: string[];
};

// TODO: 실제 프로젝트로 교체. 추후 이 파일의 함수들을 Supabase 쿼리로 바꿔도
// 반환 형태(Work[] / Work | undefined)는 그대로 유지되도록 설계했습니다.
const works: Work[] = [
  {
    slug: "quiet-mark",
    title: "Quiet Mark",
    category: "Branding",
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
    category: "Web",
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
    category: "Editorial",
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
    category: "Photography",
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
    category: "Branding",
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
    category: "Web",
    year: 2023,
    role: "Web Design & Development",
    summary: "가구 브랜드의 제품 아카이브 웹사이트.",
    description: [
      "제품 하나하나를 큰 이미지로 보여주는 데 집중한 미니멀 커머스 페이지입니다.",
    ],
  },
];

export const categories = Array.from(
  new Set(works.map((work) => work.category))
).sort();

export async function getWorks(): Promise<Work[]> {
  return [...works].sort((a, b) => b.year - a.year);
}

export async function getWorkBySlug(slug: string): Promise<Work | undefined> {
  return works.find((work) => work.slug === slug);
}

export async function getAdjacentWorks(slug: string) {
  const ordered = await getWorks();
  const index = ordered.findIndex((work) => work.slug === slug);
  return {
    prev: index > 0 ? ordered[index - 1] : undefined,
    next: index >= 0 && index < ordered.length - 1 ? ordered[index + 1] : undefined,
  };
}
