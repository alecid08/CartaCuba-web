import { env } from 'cloudflare:workers';

export async function verifyTurnstile(token, ip) {
  if (!token) return false;

  const res = await fetch('https://challenges.cloudflare.com/turnstile/v0/siteverify', {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: new URLSearchParams({
      secret: env.TURNSTILE_SECRET,
      response: token,
      remoteip: ip || '',
    }),
  });
  const result = await res.json();
  return result.success === true;
}
