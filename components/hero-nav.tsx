"use client";

import { useState } from "react";
import Link from "next/link";

const NAV_LINKS = [
  { label: "Works", href: "/works" },
  { label: "Projects", href: "/projects" },
  { label: "About", href: "/about" },
  { label: "Contact", href: "/contact" },
];

export default function HeroNav({ name }: { name: string }) {
  const [open, setOpen] = useState(false);

  return (
    <>
      <div className="relative z-50 flex items-start justify-between">
        <span
          className={`font-display text-lg font-bold tracking-wide transition-colors ${
            open ? "text-ink" : "text-white"
          }`}
        >
          {name}
        </span>

        <nav className="hidden grid-cols-[auto_auto] gap-x-10 gap-y-1.5 text-sm text-white/90 sm:grid">
          <Link href="/works" className="col-start-1 row-start-1 transition-colors hover:text-white">
            Works
          </Link>
          <Link
            href="/contact"
            className="col-start-2 row-start-1 justify-self-end transition-colors hover:text-white"
          >
            Contact
          </Link>
          <Link href="/projects" className="col-start-1 row-start-2 transition-colors hover:text-white">
            Projects
          </Link>
          <Link href="/about" className="col-start-1 row-start-3 transition-colors hover:text-white">
            About
          </Link>
        </nav>

        <button
          type="button"
          onClick={() => setOpen((v) => !v)}
          aria-expanded={open}
          aria-label="메뉴 열기/닫기"
          className={`text-sm transition-colors sm:hidden ${
            open ? "text-stone" : "text-white/70"
          }`}
        >
          Menu
        </button>
      </div>

      {open && (
        <div
          className="fixed inset-0 z-40 flex flex-col items-center justify-center gap-10 bg-paper px-6 sm:hidden"
          onClick={() => setOpen(false)}
        >
          {NAV_LINKS.map((link) => (
            <Link
              key={link.href}
              href={link.href}
              className="font-body text-4xl font-bold tracking-tight text-ink"
            >
              {link.label}
            </Link>
          ))}
        </div>
      )}
    </>
  );
}
