import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import { getAdjacentWorks, getWorkBySlug, getWorks } from "@/lib/works";
import WorkThumb from "@/components/work-thumb";

export const revalidate = 60;

export async function generateStaticParams() {
  const works = await getWorks();
  return works.map((work) => ({ slug: work.slug }));
}

export async function generateMetadata({
  params,
}: {
  params: Promise<{ slug: string }>;
}): Promise<Metadata> {
  const { slug } = await params;
  const work = await getWorkBySlug(slug);
  return { title: work?.title ?? "Work" };
}

export default async function WorkDetailPage({
  params,
}: {
  params: Promise<{ slug: string }>;
}) {
  const { slug } = await params;
  const work = await getWorkBySlug(slug);

  if (!work) {
    notFound();
  }

  const { prev, next } = await getAdjacentWorks(slug);

  return (
    <div className="mx-auto max-w-5xl px-6 py-16 sm:px-8">
      <Link
        href="/works"
        className="mb-10 inline-block font-mono text-xs uppercase tracking-widest text-stone hover:text-ink"
      >
        ← Works
      </Link>

      <div className="mb-10 grid gap-6 border-b border-line pb-10 sm:grid-cols-[2fr_1fr]">
        <h1 className="font-display text-3xl text-ink sm:text-4xl">
          {work.title}
        </h1>
        <dl className="grid grid-cols-2 gap-x-4 gap-y-2 font-mono text-xs text-stone sm:text-right">
          <dt>Category</dt>
          <dd className="text-ink">{work.category}</dd>
          <dt>Year</dt>
          <dd className="text-ink">{work.year}</dd>
          <dt>Role</dt>
          <dd className="text-ink">{work.role}</dd>
          {work.client && (
            <>
              <dt>Client</dt>
              <dd className="text-ink">{work.client}</dd>
            </>
          )}
        </dl>
      </div>

      <WorkThumb
        slug={work.slug}
        title={work.title}
        coverImage={work.coverImage}
        className="aspect-video"
      />

      <div className="mt-10 max-w-2xl space-y-4 text-ink-soft">
        <p className="text-lg text-ink">{work.summary}</p>
        {!work.images?.length &&
          work.description.map((paragraph, i) => <p key={i}>{paragraph}</p>)}
      </div>

      {work.images && work.images.length > 0 && (
        <div className="mt-10 max-w-2xl divide-y divide-line border-y border-line">
          {work.images.map((url, i) => (
            <a
              key={url}
              href={url}
              target="_blank"
              rel="noopener noreferrer"
              className="flex items-center justify-between py-4 text-ink transition-colors hover:text-stone"
            >
              <span>{work.description[i] ?? work.title}</span>
              <span className="font-mono text-xs uppercase tracking-widest text-stone">
                재생 ↗
              </span>
            </a>
          ))}
        </div>
      )}

      <div className="mt-16 flex justify-between border-t border-line pt-8 font-mono text-xs uppercase tracking-widest text-stone">
        {prev ? (
          <Link href={`/works/${prev.slug}`} className="hover:text-ink">
            ← {prev.title}
          </Link>
        ) : (
          <span />
        )}
        {next ? (
          <Link href={`/works/${next.slug}`} className="hover:text-ink">
            {next.title} →
          </Link>
        ) : (
          <span />
        )}
      </div>
    </div>
  );
}
