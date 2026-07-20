-- 'wrok-images' 오타 버킷을 'work-images'로 마이그레이션한 뒤 cover_image를
-- 새 버킷 URL로 교체하는 1회성 스크립트입니다. (마이올리는 29-1.jpeg -> 29.jpeg로
-- 새 버킷에 재업로드하면서 파일명도 정리됐습니다.) SQL Editor에서 실행하세요.

update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/1.jpeg' where slug = 'lg-prael';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/2.jpeg' where slug = 'ohui-first-genature';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/3.jpeg' where slug = 'lg-hwisen-thinq';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/4.jpeg' where slug = 'whoo-cheongidan';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/5.jpeg' where slug = 'benz-service';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/6.jpeg' where slug = 'whoo-bichup';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/7.jpeg' where slug = 'ohui-first-ample';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/8.jpeg' where slug = 'lotte-himart-20th';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/9.jpeg' where slug = 'dongwon-tuna';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/10.jpeg' where slug = 'kanu-vanilla-latte';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/11.jpeg' where slug = 'duolac';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/12.jpeg' where slug = 'porsche-911-timeless-machine';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/13.jpeg' where slug = 'kanu-signature';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/14.jpeg' where slug = 'pizza-alvolo';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/15.jpeg' where slug = 'samsung-bespoke-dishwasher';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/16.jpeg' where slug = 'ranking-dak';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/17.jpeg' where slug = 'jungkwanjang-2020';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/18.jpeg' where slug = 'sos-state-of-survival';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/19.jpeg' where slug = 'richam';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/20.jpeg' where slug = 'denmark-pocket-cheese';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/21.jpeg' where slug = 'samsung-bespoke-induction';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/22.jpeg' where slug = 'maxim-white-gold';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/23.jpeg' where slug = 'lotte-group';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/24.jpeg' where slug = 'yogiyo-express';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/25.jpeg' where slug = 'porsche-taycan';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/26.jpeg' where slug = 'jungkwanjang-2021';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/27.jpeg' where slug = 'nature-made';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/28.jpeg' where slug = 'beplain';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/29.jpeg' where slug = 'myallri';
update works set cover_image = 'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-production/30.jpeg' where slug = 'woongjin-bookclub';
