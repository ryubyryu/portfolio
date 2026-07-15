import { createClient } from "@supabase/supabase-js";

const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
const anonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

// Supabase 환경변수가 없으면 null을 반환해, 아직 프로젝트를 연결하지 않은
// 상태(목데이터 사용 중)에서도 앱이 그대로 동작하도록 합니다.
export const supabase = url && anonKey ? createClient(url, anonKey) : null;
