import { Fragment } from "react";
import type { Metadata } from "next";
import Image from "next/image";
import Link from "next/link";
import { notFound } from "next/navigation";
import { getAdjacentWorks, getWorkBySlug, getWorks } from "@/lib/works";
import WorkThumb from "@/components/work-thumb";
import ImageCarousel from "@/components/image-carousel";
import ImageFilmstrip from "@/components/image-filmstrip";

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
        <h1 className="font-body text-lg font-bold text-ink">
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

      {!work.images?.length && (
        <div className="mt-10 max-w-2xl space-y-3 text-xs tracking-tight text-ink-soft">
          {work.description.map((paragraph, i) => (
            <p key={i}>{paragraph}</p>
          ))}
        </div>
      )}

      {work.images && work.images.length > 0 && (
        <div className="mt-10 divide-y divide-line border-y border-line text-xs tracking-tight">
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

      {work.stats && work.stats.length > 0 && (
        <dl className="mt-10 grid max-w-2xl grid-cols-2 gap-x-4 gap-y-2 font-mono text-xs text-stone sm:grid-cols-[auto_1fr]">
          {work.stats.map((stat) => (
            <Fragment key={stat.label}>
              <dt className="tracking-widest">{stat.label}</dt>
              <dd className="text-ink">{stat.value}</dd>
            </Fragment>
          ))}
        </dl>
      )}

      {work.gallery && work.gallery.length > 0 && (
        <div className="mt-10 space-y-10">
          {work.gallery.map((group, groupIndex) => {
            const cols = group.columns ?? group.images.length;
            const rows = Math.ceil(group.images.length / cols);
            const refImage = group.images[0];
            const featureMedia = group.video ?? group.feature;
            const featureFr =
              featureMedia && refImage
                ? rows *
                  (refImage.height / refImage.width) *
                  (featureMedia.width / featureMedia.height)
                : 0;

            return (
              <div key={groupIndex} className="space-y-4">
                {group.heading && (
                  <h2 className="font-mono text-xs tracking-widest text-stone">
                    ▼ {group.heading}
                  </h2>
                )}
                {group.list ? (
                  <div className="grid gap-8 sm:grid-cols-3">
                    {group.list.map((item, i) => (
                      <div key={item.title} className="space-y-2">
                        <div className="flex items-baseline gap-2">
                          <span className="font-mono text-sm text-ink">{i + 1}</span>
                          <h3 className="text-xs font-bold text-ink">{item.title}</h3>
                        </div>
                        <p className="text-xs leading-relaxed tracking-tight text-ink-soft">
                          {item.body}
                        </p>
                      </div>
                    ))}
                  </div>
                ) : group.text ? (
                  <div className="max-w-2xl space-y-3 text-xs tracking-tight text-ink-soft">
                    {group.text.map((paragraph, i) => (
                      <p key={i}>{paragraph}</p>
                    ))}
                  </div>
                ) : group.filmstrip ? (
                  <div className="space-y-1">
                    {group.feature && (
                      <div
                        className="relative"
                        style={{
                          aspectRatio: `${group.feature.width} / ${group.feature.height}`,
                        }}
                      >
                        <Image
                          src={group.feature.url}
                          alt={work.title}
                          fill
                          sizes="(min-width: 1024px) 1024px, 100vw"
                          className="object-cover"
                        />
                      </div>
                    )}
                    <ImageFilmstrip images={group.images} alt={work.title} />
                  </div>
                ) : featureMedia ? (
                  <div
                    className="grid gap-0"
                    style={{
                      gridTemplateColumns: `${featureFr}fr repeat(${cols}, minmax(0, 1fr))`,
                    }}
                  >
                    {group.video ? (
                      <video
                        src={group.video.url}
                        controls
                        playsInline
                        className="h-full w-full object-cover"
                        style={{ gridRow: `span ${rows}` }}
                      />
                    ) : (
                      <div className="relative" style={{ gridRow: `span ${rows}` }}>
                        <Image
                          src={featureMedia.url}
                          alt={work.title}
                          fill
                          sizes={`(min-width: 1024px) ${Math.round(
                            1024 * (featureFr / (cols + featureFr))
                          )}px, ${Math.round((100 * featureFr) / (cols + featureFr))}vw`}
                          className="object-cover"
                        />
                      </div>
                    )}
                    {group.images.map((image) => (
                      <div
                        key={image.url}
                        className="relative"
                        style={{ aspectRatio: `${image.width} / ${image.height}` }}
                      >
                        <Image
                          src={image.url}
                          alt={work.title}
                          fill
                          sizes={`(min-width: 1024px) ${Math.round(
                            1024 / (cols + featureFr)
                          )}px, ${Math.round(100 / (cols + featureFr))}vw`}
                          className="object-cover"
                        />
                      </div>
                    ))}
                  </div>
                ) : group.carousel ? (
                  <ImageCarousel images={group.images} alt={work.title} />
                ) : group.columns ? (
                  <div
                    className="grid"
                    style={{
                      gridTemplateColumns: `repeat(${group.columns}, minmax(0, 1fr))`,
                      gap: `${group.gap ?? 0}px`,
                    }}
                  >
                    {group.images.map((image, i) => (
                      <div key={image.url}>
                        <div className="relative">
                          <Image
                            src={image.url}
                            alt={work.title}
                            width={image.width}
                            height={image.height}
                            sizes={`(min-width: 1024px) ${Math.round(
                              1024 / group.columns!
                            )}px, ${Math.round(100 / group.columns!)}vw`}
                            className="h-auto w-full"
                          />
                          {group.playOverlay && (
                            <div className="absolute inset-0 flex items-center justify-center">
                              <div className="flex h-10 w-10 items-center justify-center rounded-full border border-white/80 bg-black/20 text-white">
                                ▶
                              </div>
                            </div>
                          )}
                        </div>
                        {group.captions?.[i] && (
                          <p className="mt-2 font-mono text-xs text-stone">
                            ▲ {group.captions[i]}
                          </p>
                        )}
                      </div>
                    ))}
                  </div>
                ) : (
                  <div className="flex flex-wrap gap-0">
                    {group.images.map((image) => (
                      <div
                        key={image.url}
                        className="min-w-[240px]"
                        style={{ flexGrow: image.width, flexBasis: 0 }}
                      >
                        <Image
                          src={image.url}
                          alt={work.title}
                          width={image.width}
                          height={image.height}
                          sizes="(min-width: 1024px) 1024px, 100vw"
                          className="h-auto w-full"
                        />
                      </div>
                    ))}
                  </div>
                )}
              </div>
            );
          })}
        </div>
      )}

      {work.links && work.links.length > 0 && (
        <div className="mt-6 divide-y divide-line border-y border-line text-xs tracking-tight">
          {work.links.map((link) => (
            <a
              key={link.url}
              href={link.url}
              target="_blank"
              rel="noopener noreferrer"
              className="flex items-center justify-between py-4 text-ink transition-colors hover:text-stone"
            >
              <span>{link.label}</span>
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
            ← Prev
          </Link>
        ) : (
          <span />
        )}
        {next ? (
          <Link href={`/works/${next.slug}`} className="hover:text-ink">
            Next →
          </Link>
        ) : (
          <span />
        )}
      </div>
    </div>
  );
}
