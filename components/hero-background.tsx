import Image from "next/image";

export default function HeroBackground() {
  return (
    <div className="fixed inset-y-0 left-0 -z-10 w-screen">
      <Image
        src="/images/home-hero.jpg"
        alt=""
        fill
        priority
        sizes="100vw"
        className="object-cover"
      />
      <div aria-hidden className="absolute inset-0 bg-black/50" />
      <div
        aria-hidden
        className="absolute inset-0"
        style={{
          background:
            "linear-gradient(180deg, rgba(0,0,0,0.6) 0%, rgba(0,0,0,0.15) 30%, rgba(0,0,0,0.15) 55%, rgba(0,0,0,0.7) 100%)",
        }}
      />
    </div>
  );
}
