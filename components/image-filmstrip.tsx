"use client";

import { useRef } from "react";
import Image from "next/image";
import type { WorkGalleryImage } from "@/lib/works";

export default function ImageFilmstrip({
  images,
  alt,
}: {
  images: WorkGalleryImage[];
  alt: string;
}) {
  const scrollRef = useRef<HTMLDivElement>(null);

  const scrollBy = (dir: number) => {
    const el = scrollRef.current;
    if (!el) return;
    el.scrollBy({ left: dir * el.clientWidth * 0.8, behavior: "smooth" });
  };

  return (
    <div className="relative">
      <div
        ref={scrollRef}
        className="flex gap-1 overflow-x-auto scroll-smooth [-ms-overflow-style:none] [scrollbar-width:none] [&::-webkit-scrollbar]:hidden"
      >
        {images.map((image, i) => (
          <div
            key={image.url}
            className="h-64 shrink-0 sm:h-80"
            style={{ aspectRatio: `${image.width} / ${image.height}` }}
          >
            <Image
              src={image.url}
              alt={`${alt} ${i + 1}`}
              width={image.width}
              height={image.height}
              sizes="400px"
              className="h-full w-auto object-cover"
            />
          </div>
        ))}
      </div>
      <button
        onClick={() => scrollBy(-1)}
        aria-label="이전 이미지"
        className="absolute left-2 top-1/2 flex h-9 w-9 -translate-y-1/2 items-center justify-center rounded-full bg-black/40 text-white transition-colors hover:bg-black/60"
      >
        ‹
      </button>
      <button
        onClick={() => scrollBy(1)}
        aria-label="다음 이미지"
        className="absolute right-2 top-1/2 flex h-9 w-9 -translate-y-1/2 items-center justify-center rounded-full bg-black/40 text-white transition-colors hover:bg-black/60"
      >
        ›
      </button>
    </div>
  );
}
