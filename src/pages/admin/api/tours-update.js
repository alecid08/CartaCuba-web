import { getTour, updateTour } from '../../../lib/db.js';

function parseJsonArray(value, fallback) {
  try {
    const parsed = JSON.parse(value);
    return Array.isArray(parsed) ? parsed : fallback;
  } catch {
    return fallback;
  }
}

export async function POST({ request, redirect }) {
  const form = await request.formData();
  const id = form.get('id');

  const existing = await getTour(id);
  if (!existing) {
    return new Response('Tour no encontrado', { status: 404 });
  }

  await updateTour(id, {
    title: form.get('title') || existing.title,
    category: form.get('category') || existing.category,
    badgeIcon: form.get('badgeIcon') || '',
    duration: form.get('duration') || '',
    price: parseInt(form.get('price'), 10) || existing.price,
    priceDisplay: form.get('priceDisplay') || '',
    image: form.get('image') || '',
    shortDescription: form.get('shortDescription') || '',
    fullDescription: form.get('fullDescription') || '',
    included: parseJsonArray(form.get('included'), existing.included),
    excluded: parseJsonArray(form.get('excluded'), existing.excluded),
    galleryImages: parseJsonArray(form.get('galleryImages'), existing.galleryImages),
    itinerary: parseJsonArray(form.get('itinerary'), existing.itinerary),
  });

  return redirect(`/admin/tours/${id}/?saved=1`, 303);
}
