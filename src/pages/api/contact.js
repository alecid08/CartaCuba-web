import { submitContact } from '../../lib/db.js';
import { verifyTurnstile } from '../../lib/turnstile.js';

const VALID_SUBJECTS = ['consulta', 'reserva', 'personalizado', 'conservacion'];
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

  const name = (body.name || '').trim();
  const email = (body.email || '').trim();
  const subject = VALID_SUBJECTS.includes(body.subject) ? body.subject : 'consulta';
  const message = (body.message || '').trim();

  if (!name || !email || !message) {
    return json({ error: 'Nombre, correo y mensaje son obligatorios.' }, 400);
  }
  if (!EMAIL_RE.test(email)) {
    return json({ error: 'Correo electrónico inválido.' }, 400);
  }
  if (name.length > 200 || email.length > 200 || message.length > 5000) {
    return json({ error: 'Uno de los campos excede la longitud permitida.' }, 400);
  }

  const verified = await verifyTurnstile(body.turnstileToken, request.headers.get('CF-Connecting-IP'));
  if (!verified) {
    return json({ error: 'Verificación anti-bots fallida.' }, 403);
  }

  await submitContact({ name, email, subject, message });
  return json({ ok: true });
}
