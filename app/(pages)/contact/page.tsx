import { Fragment } from "react";
import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Contact",
};

const info = [
  { label: "Location", value: "Seoul, Republic of Korea" },
  { label: "Email", suffix: "(KOR)", value: "ryutsby@gmail.com" },
  { label: "Email", suffix: "(JPN)", value: "hellokanmiru@gmail.com" },
];

const social = [
  { label: "X（Twitter）", href: "https://x.com/" },
  { label: "Instagram", href: "https://www.instagram.com/ryutsby/" },
];

export default function ContactPage() {
  return (
    <div className="px-6 py-16 sm:px-10 sm:py-20">
      <section className="max-w-4xl">
        <h1 className="mb-8 font-body text-lg font-bold text-ink">Contact</h1>

        <ul className="space-y-2 text-xs tracking-tight">
          {info.map((item) => (
            <li key={item.label + (item.suffix ?? "")} className="flex items-baseline gap-x-3">
              <span className="flex w-28 shrink-0 items-baseline gap-x-1 font-mono text-stone">
                <span>{item.label}</span>
                {item.suffix && <span>{item.suffix}</span>}
              </span>
              <span className="flex-1 text-ink">{item.value}</span>
            </li>
          ))}
        </ul>
      </section>

      <section className="mt-14 max-w-4xl">
        <div className="flex items-center gap-x-4 text-xs font-bold tracking-tight">
          {social.map((item, i) => (
            <Fragment key={item.label}>
              {i > 0 && <span className="text-stone">/</span>}
              <a
                href={item.href}
                target="_blank"
                rel="noopener noreferrer"
                className="text-ink transition-colors hover:text-ink-soft"
              >
                {item.label}
              </a>
            </Fragment>
          ))}
        </div>
      </section>
    </div>
  );
}
