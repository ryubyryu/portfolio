import type { Metadata } from "next";
import { siteConfig } from "@/lib/site-config";

export const metadata: Metadata = {
  title: "About",
};

const career = [
  {
    period: "2016",
    title: "일본 규슈 아사히 방송 주식회사(KBC) 〈TV 제작팀〉 인턴",
  },
  { period: "2019", title: "광고 프로덕션 〈파파가 준 카메라〉 프로듀서" },
  { period: "2021", title: "광고 프로덕션 〈꾸욱꾸욱〉 프로듀서" },
  {
    period: "2022–2026",
    title: "디지털 광고 에이전시 〈디크리에잇〉 카피라이터",
  },
];

// TODO: 영문/일문 병기 여부 추후 결정
const awards = [
  {
    period: "2024",
    title: "앤어워드 Grand Prix — LG gram GO 〈AI 상상여행사〉 온·오프라인 캠페인",
  },
  {
    period: "2024",
    title: "앤어워드 Grand Prix — 롯데리아 연말연시 〈땡스버거 카드〉 IMC 캠페인",
  },
  {
    period: "2023",
    title: "앤어워드 Grand Prix & Winner — 카카오 기업PR 캠페인 〈1㎠ 속 보이지 않는 카카오의 노력〉",
  },
  {
    period: "2022",
    title: "앤어워드 Grand Prix — 노루페인트 〈포스터 챌린지〉 캠페인",
  },
  { period: "2011", title: "TVCF 서울영상광고제 YCA 부문 대상" },
  { period: "2011", title: "부산국제광고제(AD STARS) 일반인 부문 파이널리스트" },
];

export default function AboutPage() {
  return (
    <div className="mx-auto max-w-3xl px-6 py-16 sm:px-8">
      <section>
        <p className="mb-2 font-mono text-xs uppercase tracking-widest text-stone">
          {siteConfig.role}
        </p>
        <h1 className="mb-8 font-display text-3xl text-ink">{siteConfig.name}</h1>

        <ul className="space-y-3">
          {career.map((item) => (
            <li key={item.title} className="flex items-baseline gap-x-4">
              <span className="w-20 shrink-0 font-mono text-xs text-stone">
                {item.period}
              </span>
              <span className="flex-1 text-ink">{item.title}</span>
            </li>
          ))}
        </ul>

        <p className="mt-6 text-ink-soft">서울 기반으로 활동 중.</p>
      </section>

      <section className="mt-14 border-t border-line pt-10">
        <h2 className="mb-5 font-mono text-xs uppercase tracking-widest text-stone">
          Awards
        </h2>
        <ul className="space-y-3">
          {awards.map((item, i) => (
            <li key={i} className="flex items-baseline gap-x-4">
              <span className="w-20 shrink-0 font-mono text-xs text-stone">
                {item.period}
              </span>
              <span className="flex-1 text-ink-soft">{item.title}</span>
            </li>
          ))}
        </ul>
      </section>
    </div>
  );
}
