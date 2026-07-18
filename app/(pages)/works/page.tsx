import type { Metadata } from "next";
import { getCategories, getWorks } from "@/lib/works";
import WorksGrid from "@/components/works-grid";

export const metadata: Metadata = {
  title: "Works",
};

export default async function WorksPage() {
  const [works, categories] = await Promise.all([getWorks(), getCategories()]);

  return (
    <div className="max-w-5xl px-6 py-16 sm:px-10 sm:py-20">
      <h1 className="mb-8 font-body text-lg font-bold text-ink">Works</h1>
      <WorksGrid works={works} categories={categories} />
    </div>
  );
}
