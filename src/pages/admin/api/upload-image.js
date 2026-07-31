import { env } from 'cloudflare:workers';

const ALLOWED_TYPES = new Set(['image/jpeg', 'image/png', 'image/webp', 'image/avif']);
const EXT_BY_TYPE = { 'image/jpeg': 'jpg', 'image/png': 'png', 'image/webp': 'webp', 'image/avif': 'avif' };
const MAX_BYTES = 10 * 1024 * 1024;

export async function POST({ request, url }) {
  const form = await request.formData();
  const file = [...form.values()].find((value) => value instanceof File);

  if (!file) {
    return new Response('No file received', { status: 400 });
  }
  if (!ALLOWED_TYPES.has(file.type)) {
    return new Response('Tipo de archivo no permitido (usa JPEG, PNG, WebP o AVIF)', { status: 415 });
  }
  if (file.size > MAX_BYTES) {
    return new Response('Archivo demasiado grande (máx 10MB)', { status: 413 });
  }

  const tourId = url.searchParams.get('tourId') || 'unassigned';
  const kind = url.searchParams.get('kind') === 'gallery' ? 'gallery' : 'cover';
  const key = `tours/${tourId}/${kind}-${crypto.randomUUID()}.${EXT_BY_TYPE[file.type]}`;

  await env.IMAGES.put(key, file.stream(), {
    httpMetadata: { contentType: file.type },
  });

  return new Response(`/img/${key}`, { status: 200, headers: { 'Content-Type': 'text/plain' } });
}
