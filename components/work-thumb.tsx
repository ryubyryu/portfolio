import Image from "next/image";

const GRADIENTS = [
  "linear-gradient(135deg, #33415c, #8ca0c8)",
  "linear-gradient(135deg, #8a8579, #ddd8cc)",
  "linear-gradient(135deg, #17181c, #5a6a87)",
  "linear-gradient(135deg, #5a6a87, #efebe1)",
];

function gradientFor(slug: string) {
  const index =
    slug.split("").reduce((sum, char) => sum + char.charCodeAt(0), 0) %
    GRADIENTS.length;
  return GRADIENTS[index];
}

export default function WorkThumb({
  slug,
  title,
  coverImage,
  className = "",
  sizes = "(min-width: 1024px) 20vw, (min-width: 640px) 33vw, 100vw",
}: {
  slug: string;
  title: string;
  coverImage?: string;
  className?: string;
  sizes?: string;
}) {
  if (coverImage) {
    return (
      <div className={`relative overflow-hidden ${className}`}>
        <Image
          src={coverImage}
          alt={title}
          fill
          sizes={sizes}
          className="object-cover"
        />
      </div>
    );
  }

  return (
    <div
      className={`flex items-end p-4 ${className}`}
      style={{ background: gradientFor(slug) }}
    >
      <span className="font-mono text-xs uppercase tracking-widest text-white/80">
        {title}
      </span>
    </div>
  );
}
