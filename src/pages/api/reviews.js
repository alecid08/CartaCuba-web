import { getTour, submitReview } from '../../lib/db.js';

function json(body, status = 200) {
  return new Response(JSON.stringify(body), {
    status,
    headers: { 'Content-Type': 'application/json' },
  });
}

export async function POST({ request }) {
  let body;
  try {
    body = await request.json();
  } catch {
    return json({ error: 'Cuerpo de solicitud inválido.' }, 400);
  }

  const tourId = (body.tourId || '').trim();
  const name = (body.name || '').trim();
  const country = (body.country || '').trim();
  const rating = parseInt(body.rating, 10);
  const text = (body.text || '').trim();

  if (!tourId || !name || !country || !text) {
    return json({ error: 'Todos los campos son obligatorios.' }, 400);
  }
  if (!Number.isInteger(rating) || rating < 1 || rating > 5) {
    return json({ error: 'Valoración inválida.' }, 400);
  }
  if (text.length < 30) {
    return json({ error: 'La opinión debe tener al menos 30 caracteres.' }, 400);
  }
  if (name.length > 200 || country.length > 200 || text.length > 5000) {
    return json({ error: 'Uno de los campos excede la longitud permitida.' }, 400);
  }

  const tour = await getTour(tourId);
  if (!tour) {
    return json({ error: 'Tour no encontrado.' }, 404);
  }

  await submitReview({ tourId, name, country, rating, text });
  return json({ ok: true });
}
