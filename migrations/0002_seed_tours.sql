-- One-time seed from the old tours.js + src/data/tours/*.json data model.

INSERT INTO tours (id, title, category, badge_icon, duration, price, price_display, image, short_description, full_description, included, excluded, gallery_images, itinerary, sort_order)
VALUES (
  'camaguey-laberintica',
  'Camagüey Laberíntica',
  'Patrimonio',
  'architecture',
  '3–4 horas',
  30,
  '$30–40 USD',
  'https://lh3.googleusercontent.com/aida-public/AB6AXuChv-vowG9d03HtQirv__UJDgtUcZIPm9yg8qFhoFhulqs_z_1Al73RjgayNpw_4JW9KCn7gzkP87-cQj3SraSYdbej78YvCUqw9uS1888KTLXwVJslmarZjWSarP4l-tLYUrVbFh5RR0P_eifLXzjZJs77oI6UDq5_6ak1TL4FF3-NSrHarAmCL-4zKQ94j8Wg6DIhm38ojZCqYM-38Y65wZaT0xkfrg3S5g9bsUPGW3FUHtD0bV0ba6TD6TqG6y-Fc7fHSyuTJkQ',
  'Recorre el laberinto colonial de Camagüey, Patrimonio UNESCO. Plazas ocultas, tinajones centenarios, iglesias coloniales y la historia de una ciudad diseñada para confundir piratas. Guía historiador local incluido.',
  'Plazas coloniales, tinajones, Iglesia de la Merced, Teatro Principal. Un recorrido por el laberinto urbano diseñado para despistar piratas ingleses en el siglo XVII. Grupos de máximo 6 personas.',
  '["Guía historiador local", "Entradas a plazas y casonas coloniales", "Jugo natural de cortesía"]',
  '["Transporte", "Comidas adicionales"]',
  '["https://lh3.googleusercontent.com/aida-public/AB6AXuDdZaxGTqcU3VljN47-J2B4dwG8T4kHolxGOskpiUkGe8zfWJnciSbow6Z8GfaTo_pwjBS8A6HRpnW8VGhQVhCSs9sNDEP2EVRBIcs2JDqWNhfhLkU6hjwjr19DyIAs6IUPStl-n-Q0KE8zwo2KkTmVWUNq8MpsCT95k5gUyvqPYM2qBvu3f7dHquufaijeQPc5AFEjhDjpfNgpysicZE4zrx3I-0TY0pJQumksxY865lDYVKymnYUkJKaoSV4XH677TZuaz2NBBbg", "https://lh3.googleusercontent.com/aida-public/AB6AXuBa5jAGWdeBkStoCs7PV-exl9DF_yD5nfdRlQzr5da38uZEMfhc4gqXFQMtedzuM3BHPUMOY4dFtaiNiLnv37rpUQL8BVJ3SBW-wuGC6aNk-QFJi0KUj3N89GeGGfAyFHRuD4dakcNxS8oPM6EVF0RM4W2KUEiyN2Wj2mgLlt3S6W1c4U_BPOHv369ykJdnGHm-RXGCkROsgSTBReednyWNoY6p5ek4FgRv-Ez3VO9eDx7Aj8HF4_0gP8vFL9jaXCZn11_x34k4rbg", "https://lh3.googleusercontent.com/aida-public/AB6AXuB8FY2kJslYFvOlbxrrE3ClhAGZk7vUyr5CPROjHnB6LT5Yu-swxN9qIbt1FBafpEt_W2ZSKENg-xXOcJayYKDofYgG7h5EaMRyv8TSs6pOObTwCmO9xW4iFzKIGP7By1j9xBxa89SRp31z3muF6OP89pGNBb3JtCrfxQAG7t-a7KHgOFt6jODnthLfSnn145kggDYfSASR3kLnJqpLuYdUFpI6aV7keWzKKktn3RKomwEuXe8hkPIC0G0jJPWmLtWCc9qgunA3USSk1w", "https://lh3.googleusercontent.com/aida-public/AB6AXuASFCuBlQGan0OrbajQaJKvX4-YlHSdw6tOCAoAYwTpOJHQ7CzokKc5yvsZBti0hw1l4Ywyx3yx_u0-zU6_Wm3LM88Uu5AH8avA5l9dp0rOdveubOV7cZZZwfhiaSznXpaa8_ICX3ZpYqX4G8-8gfwabciv3g41f5JgBiib2w6CMSi2DvXSX78L0OwBoI5rL7R8Vo4qyNMC_9muKAx-hWykjUS5h6Tx5E7tJeoXjnnE0_D8WIrcgb3GWUkEg-WV0JHsgTXO3-mWGlQ"]',
  '[{"time": "09:00", "title": "Inicio", "desc": "Encuentro en Plaza San Juan de Dios e introducción al Camagüey colonial."}, {"time": "09:45", "title": "Trayecto", "desc": "Recorrido por calles tortuosas y explicación del porqué de su trazado antipirata."}, {"time": "10:30", "title": "Tradición", "desc": "Visita a los tinajones centenarios, descubriendo su historia y la leyenda del amor."}, {"time": "11:30", "title": "Historia", "desc": "Visita a la emblemática Iglesia de la Merced."}, {"time": "12:30", "title": "Cierre", "desc": "Finalización de la jornada en el entorno histórico del Teatro Principal."}]',
  0
);

INSERT INTO tours (id, title, category, badge_icon, duration, price, price_display, image, short_description, full_description, included, excluded, gallery_images, itinerary, sort_order)
VALUES (
  'arte-bohemia',
  'Arte y Bohemia Camagüeyana',
  'Cultura',
  'palette',
  '2–3 horas',
  25,
  '$25–35 USD',
  '/images/joel_jover.jpeg',
  'Talleres de artistas plásticos, músicos trovadores y artesanos de la cerámica. Acceso directo a la escena creativa camagüeyana que no aparece en ninguna guía turística.',
  'Pintores, ceramistas, trovadores y artesanos en sus espacios reales. Acceso a la galería provincial y estudios privados que normalmente permanecen cerrados al público general.',
  '["Visita a talleres de artistas activos", "Encuentro con músicos", "Café local"]',
  '["Compras de obras de arte", "Transporte"]',
  '["https://lh3.googleusercontent.com/aida-public/AB6AXuCa3JeHwXcw11lEsFE6Zx1CKz6PBudf3NZHvt02FAE_7dMfI3rxfOIEff04K4moXph3sX2UKgaUoD3uNXyGperCWpYHoq1R4X58ljTOhrePdDI9RnC2TBixIoIhtciu12-2fX1uB55d4a6y4TwzbxVxhQyw_kEmJPEp6vyy0V98AbNGk8_JR3-h34grFYJ7gcAx-XKvIHtKKejkFVCFG2gUWhEUPE7E5hW9DlADqNyOq74yCsLyhYYDtX0fbueqxemzb36TTB-YH9Q", "https://lh3.googleusercontent.com/aida-public/AB6AXuCYkf7WyKrLoAo84V_pSeSTFUM8svSMqWh4X2yMBkk4fp33no_SxlSWAKSyJ1VdB2V0wkorpFBZbvqF7VbS_qUfFVbMbpiIX61qCmNDV-ynzPoEDSPnhMEbfgK5teX4w5KA7oggkLRA76HInicTpAbvJu5B4P74fog-QTb1xnIxG4nfFBob2DUMpAapOfigeC2Z_t25hqoS-fbZbL61R-ABBZzd0pvoLt6OAR3W5MGOE0NzYZHzxrbJd1Zey07Rf1C8_ZMBcE8P1Bs", "https://lh3.googleusercontent.com/aida-public/AB6AXuB4CGZIsFgj5ptXEY0lJL24TwAkiwFrvwwKBoXx2zXM2Zz6FF1YbzNV3AERkk2DLRPd8rvhGHvnLyTluS86zY-QJgbPt9jSOR71RYDyqOjOawnTM4vrIIfXIlAYOXhDa-7YU81AlEXAs3NOsof_EG0H3Ne2KULYS2hCv8oHdLTD3xE7rnoOklIr95gx5vikjjwLXO7RrbcYwLT3k1mdHzErHUf514zyW5kCBKbz53CjZinrN5n_xWZQrSkrSQIZ1JHVKQI3b1yNUNA", "https://lh3.googleusercontent.com/aida-public/AB6AXuCptiss7N2AWTgPothLayC95TWVYgsnVHXtumaiT0yOM1a_lxe0So5KvhhM11Jdmfvl2oYbSychr-qBsAEVb9KeUOywtYDBTJf30k8nmrOM3AeUM2mw1XvK3xq5zBwY5SsQUjyssKh79pcuXfGAX4tJ4T6W7vN8aRX1JlCi59rN95XtO-zkgiUqryu-FHg-Hm6JLMF_1ynSiBIiuRIWjWlENsj22dQ--nleiih-vQjSwyq4NhV29zK3NTBqUZ76kGARpim7-Mz9lpE"]',
  '[{"time": "9:00", "title": "Inicio", "desc": "Encuentro en la zona cultural del centro histórico para dar inicio al recorrido."}, {"time": "9:30", "title": "Visita a Taller de Joel Jover, artista plástico", "desc": "Conozca en la intimidad a unos de los artistas de la plástica más destacados en camaguey "}, {"time": "10:15", "title": "Visita a taller de artista de la cerámica", "desc": "Visita exclusiva al taller de un renombrado artista plástico local en activo."}, {"time": "11:00", "title": "Tradición", "desc": "Encuentro cercano con trovadores o repentistas locales, conociendo su arte de improvisación."}, {"time": "12:00", "title": "Oficios", "desc": "Recorrido por los talleres de experimentados artesanos de la cerámica y el cuero."}, {"time": "12:45", "title": "Cierre", "desc": "Visita y cierre de la experiencia artística en la Galería de Arte Provincial."}]',
  1
);

INSERT INTO tours (id, title, category, badge_icon, duration, price, price_display, image, short_description, full_description, included, excluded, gallery_images, itinerary, sort_order)
VALUES (
  'limones-tuabaquey',
  'Limones y Tuabaquey',
  'Naturaleza',
  'eco',
  'Día completo (5-6 horas)',
  55,
  '$55–70 USD',
  '/images/limones_tuabaquey.png',
  'Senderismo guiado por la Reserva Ecológica Limones-Tuabaquey, en la Sierra de Cubitas: cuevas con arte rupestre precolombino, cañones de piedra caliza y el canto del tocororo y la cartacuba en su hábitat natural.',
  'A 32 km al norte de Camagüey, la Sierra de Cubitas guarda uno de los paisajes más singulares de Cuba: un carso tabular tallado por millones de años, con cañones, cuevas y un microclima propio. Aquí camina el visitante entre pictografías aborígenes de más de mil años, desciende a una depresión kárstica única en la isla y escucha el canto del tocororo —ave nacional— y de la cartacuba, la misma que da nombre a nuestra agencia. El acceso a los senderos es exclusivamente con guía, lo que convierte esta experiencia en un privilegio, no en un recorrido más.',
  '["Transporte privado", "Guía naturalista local", "Almuerzo campestre"]',
  '["Equipamiento fotográfico", "Propinas"]',
  '["https://lh3.googleusercontent.com/aida-public/AB6AXuCXb3g3-vDuDx-GJe0ZkIOPJ0QQdfGNJLAEwYoTcKfysmwUuKhL-v1fn5QwjsyhIas4Tb5jvCaLKsGrhL5ZeNiZ9bIXjSf2_PwQJ9FctJFfhSHfNH6qLTWIorcHB2rjcu3cMUg0CIpOAhwopcLL8ZD0WhyY4ECSxM4S3XIeKiPqs7tF-fOs95G2VJgOeDY7Avq9dwW2GGoiKEiRlWPBGZiTeH0nWDJXWfjxLJS3V9jRQXuVTo5LrG7xrc71Aoz__kntjy4UHLGiTE0", "https://lh3.googleusercontent.com/aida-public/AB6AXuCTYekWgiJg7mjash0-EsDEHFVkz1vF6vcLYV7cyTMJ_TbNCZ0IWBIdike0XnolMCk12c7MGJQq8XhL1EVD0dQSPPdbXmkHi05SYQAXMrl24PU7k-NuITvj36bbwfwwKRE6yTawSliJHwvtuyENpOz6_tWK0CxCaw5jbbApo5nTPEnEEMTO8opD5YWlNynq95nXhasbYxQO8ecGFQHsr_9QAyjmcsYbFlkW0F_AjOg6B_VW8K_T8Yw0gkzlrKP4WwSm8nZdHBhkQjM", "https://lh3.googleusercontent.com/aida-public/AB6AXuDUw__XYkIP58d9K9uc_OnugN6K_rJGts7KrDmPaxXq-llydk_d9bR-H7JWOKDCsk6gXs9z3qGg-nO_jrunH-mes9g71-13XPkLUwmNHZ_E1_PPrFjy4m5HOyBSkxndbj5v4wVFUS2lyFN26BDhuQzvb1TFZ0VX37doJpIT4_f1dt--WX3fIgSBaejy_FXRDzYNUez8y0XaCJn01QYlo8L-hW72eI7VzzL4P_O4xq47v9ENAqJVh6BuPxPT_azfiNUvXFNZ2hU4l5Y", "https://lh3.googleusercontent.com/aida-public/AB6AXuCaYBuZ4CAf6xdm8j6JAHxFHfix6AQ29Qqyl2xsbTkG6fTKrWwKXmf1mcIwgPYsVrV7OIufBfsc9eHd9gJStDz9EXTWru80Bjl2fHlNvuCtqEo6uAPgzrDpeONrgOr5E3POKOoEY1Ijt-9AGA5hvByrPvnS06tk6pbBkbWJ-l2WaNsy3Oe84F6yvJH2qERLjX7L7JxdhjoHy5tK2nss-rqXzyW_n01hEcYYqI4yeZpJBJU262eb69nEWHIwtSXxxiAAhvomzKq7fiQ"]',
  '[{"time": "08:00", "title": "Salida", "desc": "Salida temprano desde Camagüey hacia Sierra de Cubitas (32 km)."}, {"time": "09:00", "title": "Llegada", "desc": "Llegada al Paso de los Paredones, inicio del sendero con guía."}, {"time": "09:30", "title": "Exploración", "desc": "Visita a la Cueva María Teresa para apreciar el arte rupestre aborigen."}, {"time": "11:00", "title": "Naturaleza", "desc": "Caminata al Hoyo de Bonet, una impresionante depresión kárstica rodeada de helechos gigantes."}, {"time": "12:30", "title": "Observación", "desc": "Avistamiento de aves locales, con la oportunidad de ver y escuchar al tocororo y a la cartacuba."}, {"time": "13:30", "title": "Almuerzo", "desc": "Almuerzo campestre criollo incluido en medio del entorno natural."}, {"time": "15:30", "title": "Retorno", "desc": "Regreso a Camagüey al final de la tarde."}]',
  2
);

INSERT INTO tours (id, title, category, badge_icon, duration, price, price_display, image, short_description, full_description, included, excluded, gallery_images, itinerary, sort_order)
VALUES (
  'campina-sierra-najasa',
  'Campiña y Sierra de Najasa',
  'Naturaleza',
  'eco',
  'Día completo',
  55,
  '$55–70 USD',
  '/images/orquideas.jpeg',
  'Reserva natural Sierra de Najasa. Tocororo, Cartacuba, orquídeas endémicas, palma real. Paisaje rural auténtico con historia precolombina ciboney. Transporte incluido.',
  'Reserva natural con ecosistema único en Cuba central. Tocororo, Cartacuba, orquídeas endémicas, palma real. Sitios arqueológicos precolombinos de la cultura ciboney. Fincas reales, trabajo del campo, almuerzo auténtico.',
  '["Transporte privado", "Guía naturalista e historiador", "Gastronomía criolla rural"]',
  '["Equipo de senderismo", "Propinas"]',
  '["https://lh3.googleusercontent.com/aida-public/AB6AXuCQwIULpWJ17ul5O1lHNna3YCyoTqOcSpFNP6hAEr2R3LJZQh0wTv2e2W4dELlbm4L6cwIXQPJ70029GuW8QIgG6u4lSDvDIGN5k1yulQv01LD1Zq7j_yCmbrlTJwNXI44iZ7VJMm_K50md6EjmwJ8fqZUj2C8iSXe6ZCBZch1Ao9EfptJ5TeWuhkf1SvHss0q35zRjb5Sh6omjUBP-JRGL2t3JW91GHlBx4pTA3Kk32k3e_PhvumMRJ9rZH-BeAQcW5HLf8VrJKRXQCg", "https://lh3.googleusercontent.com/aida-public/AB6AXuCtWux-LkZsDIbemoZp4_eDA2UwVG4nQ5pklxwmaMA-TYUQdHTEUAAA1ZkHsEDQuBDVBJFLxwQs-8GkVTP_ha5TNlvwA5mQcu9UN64FHGpGSRj3gN5LhzCErUM8p905C8ZVU99rdbtIsRS9p6A2ZfNHeWl6B8pFHzDqbUcIyRJCbsgFoSljMgVN5ih2_SX78SJXmyiQ9nUmFGOk7kXSW9gOdefbkF84KLt8FBd4BpDNZ0SRxL5lDwqHYzzK9KpULbf12Ze9W4MYZ8w", "https://lh3.googleusercontent.com/aida-public/AB6AXuDTe9B-JxqZ5szupHDRwc5neO0AKDCxeePxR3izli7HwDtI5beVViJrZEhrmNBo9rLfhfikRO5L25Nz4Ya-QemDffoxjgPD7ZxZbRoVxjyJq3LHhLz2fRAC6KvUvP66yPKS4OR0QqgX-_NZCYniCe1vM8WqtjyqQVv27iaTrHc90FOH05JSFjKp3QxH8_tNq_SOGVzLbM8Wt0kOQPPL_j1kb8cgTp4-kcuM0HynDqFhKWm55JzfqQUMDTJ5ekaaOTnNjOVcClxVBMw", "https://lh3.googleusercontent.com/aida-public/AB6AXuAb4YNF0ee5dMvmvsRiZkC9RT7hrxVpwHxM-dUSqWlJUx4I9bG6MOYhN-41-wBlI8wVufM4b-_uHekwl8l4KPVhl8MMFQ_LYP_qCENsL9FGX7FEmQGAQf9VP7ghpOAxQ0x_nwZCNnTooObAn9kXmnPem2mrMplNIAPPgSc0D579G3o9yr66bsEjsd3n_cFSSWJM7EtjckLzuNyyexoAgVa4DJcfXbfHTY-jC9zmxzGTmPJqwjTrJ-v4-GokMAxCNDcZbrH3UiIB6cE"]',
  '[{"time": "08:30", "title": "Salida", "desc": "Salida desde Camagüey hacia la reserva natural de Najasa."}, {"time": "09:30", "title": "Historia", "desc": "Recorrido guiado por sitios arqueológicos precolombinos vinculados a la cultura ciboney."}, {"time": "10:45", "title": "Senderismo", "desc": "Observación y disfrute de la flora endémica, incluyendo orquídeas salvajes, palma real y ceibas."}, {"time": "12:00", "title": "Tradición", "desc": "Visita a una finca rural local, compartiendo directamente con el trabajo cotidiano del campo."}, {"time": "13:30", "title": "Almuerzo", "desc": "Disfrute de un delicioso almuerzo con gastronomía criolla campesina tradicional."}, {"time": "15:30", "title": "Retorno", "desc": "Regreso a Camagüey al final de la tarde."}]',
  3
);

INSERT INTO tours (id, title, category, badge_icon, duration, price, price_display, image, short_description, full_description, included, excluded, gallery_images, itinerary, sort_order)
VALUES (
  'mesa-camagueyana',
  'Mesa Camagüeyana',
  'Gastronomía',
  'restaurant',
  '4–5 horas',
  45,
  '$45–55 USD',
  'https://lh3.googleusercontent.com/aida-public/AB6AXuBEUzMaxQGf76bMPOMV9IjzwWGYhY8uiMS0-tcT33gwDFkpqFWEOAF8VGVCtTibOTM-UCGUu65MEIkyCeaYLyDQ_Q87jxFlFbxQY6ZbHe21mHh50xsPoqW0Cuub4Qun96mMoojv6ZnDeBdihS9uOKbAB0UBw0Ov0b4xBEgWfaSV9Dljm1-1a-iTNn0GU3Ktv1mYUgnX2fy216pg6q3m08DC2wZfJbfqqn90Az4TNBDDWu8cTdgFe6llXYqr3qiTa6zU5ZkeDzgv2b8',
  'Mercado agropecuario local, cocina en casa particular con anfitriona camagüeyana, ajiaco, ropa vieja, fufú y ron artesanal. El turista cocina y come como un camagüeyano real.',
  'Mercado agropecuario local, cocina en casa particular camagüeyana. Ajiaco, ropa vieja, fufú. Historia de la gastronomía cubana con raíces africanas, españolas y aborígenes. El turista cocina, comparte y come como un camagüeyano real.',
  '["Visita al mercado", "Todos los ingredientes", "Cocción con anfitriona local", "Almuerzo completo", "Ron cubano artesanal"]',
  '["Transporte al mercado", "Propinas"]',
  '["https://lh3.googleusercontent.com/aida-public/AB6AXuD9aYh5j-rWStO4H8aY8WEXvQ99RGAzQpqxLgM9e_Zp4m5E5vX7k_B7Yt8KOK7Z4c7-Q5hV_XhX5L25NzGZ_S8kP_T_T8J3Z_P_S8Z9_S8kP_T8J3Z_P_S8Z9_S8kP_T8J3Z_P_S8Z9_S8kP_T8J3Z_P_S8Z9_S8kP_T8", "https://lh3.googleusercontent.com/aida-public/AB6AXuDTB1JxqZ5szupHDRwc5neO0AKDCxeePxR3izli7HwDtI5beVViJrZEhrmNBo9rLfhfikRO5L25Nz4Ya-QemDffoxjgPD7ZxZbRoVxjyJq3LHhLz2fRAC6KvUvP66yPKS4OR0QqgX-_NZCYniCe1vM8WqtjyqQVv27iaTrHc90FOH05JSFjKp3QxH8_tNq_SOGVzLbM8Wt0kOQPPL_j1kb8cgTp4-kcuM0HynDqFhKWm55JzfqQUMDTJ5ekaaOTnNjOVcClxVBMw", "https://lh3.googleusercontent.com/aida-public/AB6AXuAb4YNF0ee5dMvmvsRiZkC9RT7hrxVpwHxM-dUSqWlJUx4I9bG6MOYhN-41-wBlI8wVufM4b-_uHekwl8l4KPVhl8MMFQ_LYP_qCENsL9FGX7FEmQGAQf9VP7ghpOAxQ0x_nwZCNnTooObAn9kXmnPem2mrMplNIAPPgSc0D579G3o9yr66bsEjsd3n_cFSSWJM7EtjckLzuNyyexoAgVa4DJcfXbfHTY-jC9zmxzGTmPJqwjTrJ-v4-GokMAxCNDcZbrH3UiIB6cE", "https://lh3.googleusercontent.com/aida-public/AB6AXuCQwIULpWJ17ul5O1lHNna3YCyoTqOcSpFNP6hAEr2R3LJZQh0wTv2e2W4dELlbm4L6cwIXQPJ70029GuW8QIgG6u4lSDvDIGN5k1yulQv01LD1Zq7j_yCmbrlTJwNXI44iZ7VJMm_K50md6EjmwJ8fqZUj2C8iSXe6ZCBZch1Ao9EfptJ5TeWuhkf1SvHss0q35zRjb5Sh6omjUBP-JRGL2t3JW91GHlBx4pTA3Kk32k3e_PhvumMRJ9rZH-BeAQcW5HLf8VrJKRXQCg"]',
  '[{"time": "10:00", "title": "Compras", "desc": "Visita guiada al mercado agropecuario para seleccionar ingredientes frescos y locales."}, {"time": "11:00", "title": "Traslado", "desc": "Traslado y bienvenida en la acogedora casa de la familia anfitriona."}, {"time": "11:30", "title": "Cocina", "desc": "Experiencia de cocina en vivo preparando platos tradicionales cubanos como el ajiaco, la ropa vieja y el fufú."}, {"time": "13:30", "title": "Almuerzo", "desc": "Disfrute de la comida elaborada, maridada con ron cubano artesanal."}, {"time": "14:30", "title": "Sobremesa", "desc": "Conversación y sobremesa amena con la familia anfitriona compartiendo costumbres e historias locales."}]',
  4
);
