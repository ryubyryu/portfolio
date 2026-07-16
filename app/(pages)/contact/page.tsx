import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Contact",
};

const info = [
  { label: "Location", value: "Seoul, Republic of Korea" },
  {
    label: "Email (KOR)",
    value: "ryutsby@gmail.com",
    href: "mailto:ryutsby@gmail.com",
  },
  {
    label: "Email (JPN)",
    value: "hellokanmiru@gmail.com",
    href: "mailto:hellokanmiru@gmail.com",
  },
];

export default function ContactPage() {
  return (
    <div className="px-6 py-16 sm:px-10 sm:py-20">
      <section className="max-w-4xl">
        <h1 className="mb-8 font-body text-lg font-bold text-ink">Contact</h1>

        <ul className="space-y-2 text-xs tracking-tight">
          {info.map((item) => (
            <li key={item.label} className="flex items-baseline gap-x-3">
              <span className="w-28 shrink-0 font-mono text-stone">
                {item.label}
              </span>
              {item.href ? (
                <a
                  href={item.href}
                  className="flex-1 text-ink-soft underline decoration-transparent underline-offset-2 transition-colors hover:text-ink hover:decoration-current"
                >
                  {item.value}
                </a>
              ) : (
                <span className="flex-1 text-ink">{item.value}</span>
              )}
            </li>
          ))}
        </ul>
      </section>
    </div>
  );
}
