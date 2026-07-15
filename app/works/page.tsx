import type { Metadata } from "next";
import { getWorks, categories } from "@/lib/works";
import WorksGrid from "@/components/works-grid";

export const metadata: Metadata = {
  title: "Works",
};

export default async function WorksPage() {
  const works = await getWorks();

  return (
    <div className="mx-auto max-w-5xl px-6 py-16 sm:px-8">
      <h1 className="mb-10 font-display text-3xl text-ink">Works</h1>
      <WorksGrid works={works} categories={categories} />
    </div>
  );
}
