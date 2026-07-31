import { setContactStatus, setBookingStatus } from '../../../lib/db.js';

const VALID_CONTACT = ['new', 'read', 'archived'];
const VALID_BOOKING = ['new', 'contacted', 'confirmed', 'cancelled'];

export async function POST({ request, redirect }) {
  const form = await request.formData();
  const kind = form.get('kind');
  const id = form.get('id');
  const status = form.get('status');

  if (!id) {
    return new Response('Solicitud inválida', { status: 400 });
  }

  if (kind === 'contact' && VALID_CONTACT.includes(status)) {
    await setContactStatus(id, status);
  } else if (kind === 'booking' && VALID_BOOKING.includes(status)) {
    await setBookingStatus(id, status);
  } else {
    return new Response('Solicitud inválida', { status: 400 });
  }

  return redirect('/admin/leads/', 303);
}
