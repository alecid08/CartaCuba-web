import { env } from 'cloudflare:workers';

export async function GET({ params, request }) {
  const key = params.path;
  if (!key) return new Response('Not found', { status: 404 });

  const ifNoneMatch = request.headers.get('If-None-Match');
  const object = await env.IMAGES.get(key, {
    onlyIf: ifNoneMatch ? { etagDoesNotMatch: ifNoneMatch } : undefined,
  });

  if (object === null) return new Response('Not found', { status: 404 });

  if (!object.body) {
    return new Response(null, { status: 304, headers: { etag: object.httpEtag } });
  }

  const headers = new Headers();
  object.writeHttpMetadata(headers);
  headers.set('etag', object.httpEtag);
  headers.set('Cache-Control', 'public, max-age=31536000, immutable');

  return new Response(object.body, { headers });
}
