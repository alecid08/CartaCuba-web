-- Tours: replaces src/data/tours.js + src/data/tours/*.json as single source of truth.
CREATE TABLE tours (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  category TEXT NOT NULL,
  badge_icon TEXT NOT NULL DEFAULT '',
  duration TEXT NOT NULL DEFAULT '',
  price INTEGER NOT NULL,
  price_display TEXT NOT NULL DEFAULT '',
  image TEXT NOT NULL DEFAULT '',
  short_description TEXT NOT NULL DEFAULT '',
  full_description TEXT NOT NULL DEFAULT '',
  included TEXT NOT NULL DEFAULT '[]',
  excluded TEXT NOT NULL DEFAULT '[]',
  gallery_images TEXT NOT NULL DEFAULT '[]',
  itinerary TEXT NOT NULL DEFAULT '[]',
  sort_order INTEGER NOT NULL DEFAULT 0,
  updated_at TEXT NOT NULL DEFAULT (datetime('now'))
);

-- Reviews: moderation queue. Public form inserts as 'pending'; admin approves/rejects.
CREATE TABLE reviews (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  tour_id TEXT NOT NULL REFERENCES tours(id),
  name TEXT NOT NULL,
  country TEXT NOT NULL DEFAULT '',
  rating INTEGER NOT NULL CHECK (rating BETWEEN 1 AND 5),
  text TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'approved', 'rejected')),
  created_at TEXT NOT NULL DEFAULT (datetime('now'))
);

CREATE INDEX idx_reviews_tour_status ON reviews(tour_id, status);

-- Contact form leads (nosotros.astro).
CREATE TABLE contact_submissions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  subject TEXT NOT NULL DEFAULT 'consulta',
  message TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'new' CHECK (status IN ('new', 'read', 'archived')),
  created_at TEXT NOT NULL DEFAULT (datetime('now'))
);

-- Booking leads (tour detail pages). Payment is handled in person with the operator,
-- this table just tracks the request so it isn't only visible inside a WhatsApp chat.
CREATE TABLE booking_requests (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  tour_id TEXT NOT NULL REFERENCES tours(id),
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  travel_date TEXT NOT NULL DEFAULT '',
  travelers INTEGER NOT NULL DEFAULT 1,
  notes TEXT NOT NULL DEFAULT '',
  status TEXT NOT NULL DEFAULT 'new' CHECK (status IN ('new', 'contacted', 'confirmed', 'cancelled')),
  created_at TEXT NOT NULL DEFAULT (datetime('now'))
);
