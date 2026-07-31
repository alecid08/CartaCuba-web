import { setReviewStatus } from '../../../lib/db.js';

const VALID = ['pending', 'approved', 'rejected'];

export async function POST({ request, redirect }) {
  const form = await request.formData();
  const id = form.get('id');
  const status = form.get('status');

  if (!id || !VALID.includes(status)) {
    return new Response('Solicitud inválida', { status: 400 });
  }

  await setReviewStatus(id, status);
  return redirect('/admin/reviews/', 303);
}
