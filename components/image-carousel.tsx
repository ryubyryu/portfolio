"use client";

import { useCallback, useEffect, useState } from "react";
import Image from "next/image";
import type { WorkGalleryImage } from "@/lib/works";

const AUTO_ADVANCE_MS = 4000;

export default function ImageCarousel({
  images,
  alt,
  aspectRatio = "1.91 / 1",
}: {
  images: WorkGalleryImage[];
  alt: string;
  aspectRatio?: string;
}) {
  const [index, setIndex] = useState(0);
  const [paused, setPaused] = useState(false);

  const goTo = useCallback(
    (next: number) => {
      setIndex(((next % images.length) + images.length) % images.length);
    },
    [images.length]
  );

  useEffect(() => {
    if (paused || images.length <= 1) return;
    const id = setInterval(() => {
      setIndex((i) => (i + 1) % images.length);
    }, AUTO_ADVANCE_MS);
    return () => clearInterval(id);
  }, [paused, images.length]);

  return (
    <div
      className="relative w-full overflow-hidden bg-line"
      style={{ aspectRatio }}
      onMouseEnter={() => setPaused(true)}
      onMouseLeave={() => setPaused(false)}
    >
      <div
        className="flex h-full transition-transform duration-700 ease-in-out"
        style={{ transform: `translateX(-${index * 100}%)` }}
      >
        {images.map((image, i) => (
          <div key={image.url} className="relative h-full w-full shrink-0">
            <Image
              src={image.url}
              alt={`${alt} ${i + 1}`}
              fill
              sizes="(min-width: 1024px) 1024px, 100vw"
              className="object-cover"
              priority={i === 0}
            />
          </div>
        ))}
      </div>

      <button
        onClick={() => goTo(index - 1)}
        disabled={index === 0}
        aria-label="이전 이미지"
        className="absolute left-2 top-1/2 flex h-8 w-8 -translate-y-1/2 items-center justify-center rounded-full bg-black/30 text-white transition-colors hover:bg-black/50 disabled:cursor-not-allowed disabled:opacity-30 disabled:hover:bg-black/30"
      >
        ‹
      </button>
      <button
        onClick={() => goTo(index + 1)}
        disabled={index === images.length - 1}
        aria-label="다음 이미지"
        className="absolute right-2 top-1/2 flex h-8 w-8 -translate-y-1/2 items-center justify-center rounded-full bg-black/30 text-white transition-colors hover:bg-black/50 disabled:cursor-not-allowed disabled:opacity-30 disabled:hover:bg-black/30"
      >
        ›
      </button>

      <span className="absolute bottom-3 right-3 rounded bg-black/40 px-2 py-1 font-mono text-xs text-white">
        {index + 1}/{images.length}
      </span>
    </div>
  );
}
