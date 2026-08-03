import { getTour, submitBooking } from '../../lib/db.js';
import { verifyTurnstile } from '../../lib/turnstile.js';

const EMAIL_RE = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

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
  const email = (body.email || '').trim();
  const travelDate = (body.travelDate || '').trim();
  const travelers = parseInt(body.travelers, 10);
  const notes = (body.notes || '').trim();

  if (!tourId || !name || !email || !travelDate) {
    return json({ error: 'Tour, nombre, correo y fecha son obligatorios.' }, 400);
  }
  if (!EMAIL_RE.test(email)) {
    return json({ error: 'Correo electrónico inválido.' }, 400);
  }
  if (!Number.isInteger(travelers) || travelers < 1 || travelers > 10) {
    return json({ error: 'Número de viajeros inválido.' }, 400);
  }

  const verified = await verifyTurnstile(body.turnstileToken, request.headers.get('CF-Connecting-IP'));
  if (!verified) {
    return json({ error: 'Verificación anti-bots fallida.' }, 403);
  }

  const tour = await getTour(tourId);
  if (!tour) {
    return json({ error: 'Tour no encontrado.' }, 404);
  }

  await submitBooking({ tourId, name, email, travelDate, travelers, notes });
  return json({ ok: true });
}
