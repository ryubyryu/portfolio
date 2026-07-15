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

// TODO: 실제 썸네일 이미지가 준비되면 next/image로 교체
export default function WorkThumb({
  slug,
  title,
  className = "",
}: {
  slug: string;
  title: string;
  className?: string;
}) {
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
