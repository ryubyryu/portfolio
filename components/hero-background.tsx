// TODO: 실제 배경 사진/영상으로 교체.
// 지금은 next/image 없이 순수 CSS 그라디언트로 만든 임시 placeholder입니다.
export default function HeroBackground() {
  return (
    <div className="absolute inset-0 -z-10 bg-[#0a0b0e]">
      <div
        aria-hidden
        className="absolute inset-0"
        style={{
          background: `
            radial-gradient(560px 480px at 14% 20%, rgba(232,224,201,0.5), transparent 62%),
            radial-gradient(460px 400px at 68% 10%, rgba(232,224,201,0.32), transparent 65%),
            radial-gradient(680px 560px at 88% 62%, rgba(232,224,201,0.16), transparent 60%),
            radial-gradient(820px 680px at 28% 92%, rgba(8,9,12,0.9), transparent 70%),
            linear-gradient(165deg, #05060a 0%, #15161c 55%, #0a0b0e 100%)
          `,
          filter: "blur(1px) saturate(0.9)",
        }}
      />
      <div aria-hidden className="absolute inset-0 bg-black/25" />
    </div>
  );
}
