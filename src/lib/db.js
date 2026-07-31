import { env } from 'cloudflare:workers';

function parseTourRow(row) {
  return {
    id: row.id,
    title: row.title,
    category: row.category,
    badgeIcon: row.badge_icon,
    duration: row.duration,
    price: row.price,
    priceDisplay: row.price_display,
    image: row.image,
    shortDescription: row.short_description,
    fullDescription: row.full_description,
    included: JSON.parse(row.included || '[]'),
    excluded: JSON.parse(row.excluded || '[]'),
    galleryImages: JSON.parse(row.gallery_images || '[]'),
    itinerary: JSON.parse(row.itinerary || '[]'),
  };
}

export async function getTours() {
  const { results } = await env.DB.prepare(
    'SELECT * FROM tours ORDER BY sort_order'
  ).all();
  return results.map(parseTourRow);
}

export async function getTour(id) {
  const row = await env.DB.prepare('SELECT * FROM tours WHERE id = ?').bind(id).first();
  return row ? parseTourRow(row) : null;
}

export async function getApprovedReviews(tourId) {
  const { results } = await env.DB.prepare(
    "SELECT name, country, rating, text, created_at FROM reviews WHERE tour_id = ? AND status = 'approved' ORDER BY created_at DESC"
  )
    .bind(tourId)
    .all();
  return results.map((r) => ({
    name: r.name,
    country: r.country,
    rating: r.rating,
    text: r.text,
    date: r.created_at,
  }));
}

export async function submitReview({ tourId, name, country, rating, text }) {
  await env.DB.prepare(
    "INSERT INTO reviews (tour_id, name, country, rating, text, status) VALUES (?, ?, ?, ?, ?, 'pending')"
  )
    .bind(tourId, name, country, rating, text)
    .run();
}

export async function submitContact({ name, email, subject, message }) {
  await env.DB.prepare(
    'INSERT INTO contact_submissions (name, email, subject, message) VALUES (?, ?, ?, ?)'
  )
    .bind(name, email, subject, message)
    .run();
}

export async function submitBooking({ tourId, name, email, travelDate, travelers, notes }) {
  await env.DB.prepare(
    'INSERT INTO booking_requests (tour_id, name, email, travel_date, travelers, notes) VALUES (?, ?, ?, ?, ?, ?)'
  )
    .bind(tourId, name, email, travelDate, travelers, notes || '')
    .run();
}

export async function updateTour(id, fields) {
  await env.DB.prepare(
    `UPDATE tours SET
      title = ?, category = ?, badge_icon = ?, duration = ?, price = ?, price_display = ?,
      image = ?, short_description = ?, full_description = ?, included = ?, excluded = ?,
      gallery_images = ?, itinerary = ?, updated_at = datetime('now')
    WHERE id = ?`
  )
    .bind(
      fields.title,
      fields.category,
      fields.badgeIcon,
      fields.duration,
      fields.price,
      fields.priceDisplay,
      fields.image,
      fields.shortDescription,
      fields.fullDescription,
      JSON.stringify(fields.included),
      JSON.stringify(fields.excluded),
      JSON.stringify(fields.galleryImages),
      JSON.stringify(fields.itinerary),
      id
    )
    .run();
}

export async function listReviews() {
  const { results } = await env.DB.prepare(
    `SELECT r.id, r.tour_id, t.title AS tour_title, r.name, r.country, r.rating, r.text, r.status, r.created_at
     FROM reviews r JOIN tours t ON t.id = r.tour_id
     ORDER BY (r.status = 'pending') DESC, r.created_at DESC`
  ).all();
  return results;
}

export async function setReviewStatus(id, status) {
  await env.DB.prepare('UPDATE reviews SET status = ? WHERE id = ?').bind(status, id).run();
}

export async function listContactSubmissions() {
  const { results } = await env.DB.prepare(
    'SELECT * FROM contact_submissions ORDER BY created_at DESC'
  ).all();
  return results;
}

export async function setContactStatus(id, status) {
  await env.DB.prepare('UPDATE contact_submissions SET status = ? WHERE id = ?')
    .bind(status, id)
    .run();
}

export async function listBookingRequests() {
  const { results } = await env.DB.prepare(
    `SELECT b.*, t.title AS tour_title FROM booking_requests b
     JOIN tours t ON t.id = b.tour_id
     ORDER BY b.created_at DESC`
  ).all();
  return results;
}

export async function setBookingStatus(id, status) {
  await env.DB.prepare('UPDATE booking_requests SET status = ? WHERE id = ?')
    .bind(status, id)
    .run();
}
