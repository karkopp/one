<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · modern e‑commerce</title>
  <!-- Google Fonts & Font Awesome -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400..700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    /* ----- reset & base ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      background: #0d0f14;
      color: #eef2f6;
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      line-height: 1.5;
      padding: 0 20px;
    }
    a {
      color: inherit;
      text-decoration: none;
    }
    .container {
      max-width: 1300px;
      margin: 0 auto;
      padding: 0 20px;
    }
    /* ----- glassmorphism / neumorphism accents ----- */
    :root {
      --glass: rgba(255, 255, 255, 0.04);
      --glass-border: rgba(255, 255, 255, 0.06);
      --glow: #00d4ff;
      --primary-dark: #0b1219;
      --card-bg: rgba(18, 25, 35, 0.7);
      --surface: #181f2b;
      --text-muted: #9aa6b5;
    }
    /* ----- header ----- */
    header {
      position: sticky;
      top: 12px;
      z-index: 50;
      backdrop-filter: blur(18px) saturate(1.6);
      background: rgba(13, 18, 25, 0.65);
      border: 1px solid var(--glass-border);
      border-radius: 60px;
      padding: 8px 20px;
      margin: 12px auto 28px;
      max-width: 1300px;
      box-shadow: 0 12px 40px -10px rgba(0, 0, 0, 0.6);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 10px;
      flex-wrap: wrap;
    }
    .brand {
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 700;
      font-size: 1.5rem;
      letter-spacing: -0.5px;
      background: linear-gradient(135deg, #e0f2fe, #a5f3fc);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .brand i {
      font-size: 1.2rem;
      color: #00d4ff;
      -webkit-text-fill-color: #00d4ff;
    }
    nav.main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
      align-items: center;
    }
    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.9rem;
      color: #ccd7e6;
      transition: 0.2s;
      background: transparent;
    }
    nav.main-nav li a:hover {
      background: rgba(0, 212, 255, 0.08);
      color: #fff;
      box-shadow: 0 0 12px rgba(0, 212, 255, 0.08);
    }
    .search {
      display: flex;
      align-items: center;
      background: rgba(255, 255, 255, 0.05);
      border: 1px solid rgba(255, 255, 255, 0.06);
      border-radius: 40px;
      padding: 4px 8px 4px 18px;
      min-width: 200px;
      transition: 0.25s;
    }
    .search:focus-within {
      border-color: #00d4ff;
      box-shadow: 0 0 0 3px rgba(0, 212, 255, 0.15);
    }
    .search input {
      background: transparent;
      border: none;
      outline: none;
      color: #eef2f6;
      font-size: 0.9rem;
      width: 100%;
      padding: 8px 0;
    }
    .search input::placeholder {
      color: #6a7a8e;
    }
    .search button {
      background: transparent;
      border: none;
      color: #b0c4db;
      padding: 6px 10px;
      cursor: pointer;
      transition: 0.2s;
      font-size: 1rem;
    }
    .search button:hover {
      color: #00d4ff;
    }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn {
      width: 40px;
      height: 40px;
      border-radius: 40px;
      display: flex;
      align-items: center;
      justify-content: center;
      background: transparent;
      border: 1px solid transparent;
      color: #b0c4db;
      transition: 0.2s;
      font-size: 1.1rem;
      cursor: pointer;
    }
    .icon-btn:hover {
      background: rgba(255, 255, 255, 0.04);
      border-color: rgba(255, 255, 255, 0.06);
      color: #fff;
    }
    .cart {
      position: relative;
      padding: 4px 8px 4px 4px;
      display: flex;
      align-items: center;
      gap: 6px;
      border-radius: 40px;
      background: rgba(0, 212, 255, 0.06);
      border: 1px solid rgba(0, 212, 255, 0.08);
    }
    .cart-count {
      background: #00d4ff;
      color: #0b1219;
      font-weight: 700;
      font-size: 0.7rem;
      min-width: 22px;
      height: 22px;
      border-radius: 30px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      padding: 0 6px;
    }
    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      color: #b0c4db;
      font-size: 1.4rem;
      cursor: pointer;
    }
    /* mobile menu */
    #mobileMenu {
      background: rgba(13, 18, 25, 0.96);
      backdrop-filter: blur(12px);
      border-radius: 24px;
      margin-top: 10px;
      padding: 14px 0;
      border: 1px solid rgba(255, 255, 255, 0.03);
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
      padding: 0 16px;
    }
    #mobileMenu ul li a {
      display: block;
      padding: 12px 14px;
      border-radius: 16px;
      color: #ccd7e6;
      font-weight: 500;
      transition: 0.15s;
    }
    #mobileMenu ul li a:hover {
      background: rgba(255, 255, 255, 0.04);
      color: #fff;
    }
    /* ----- hero ----- */
    .hero {
      background: radial-gradient(ellipse at 30% 30%, #192838, #0b1018);
      border-radius: 40px;
      padding: 64px 40px;
      margin: 20px 0 48px;
      border: 1px solid rgba(255, 255, 255, 0.03);
      box-shadow: inset 0 0 80px rgba(0, 212, 255, 0.02);
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 30px;
    }
    .hero-content {
      max-width: 620px;
    }
    .hero-content h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 3.2rem;
      font-weight: 700;
      letter-spacing: -1px;
      line-height: 1.1;
      background: linear-gradient(to right, #f0f9ff, #b6e6ff);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .hero-content p {
      color: #b6c8db;
      font-size: 1.1rem;
      max-width: 460px;
      margin: 18px 0 28px;
    }
    .btn-group {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      transition: 0.2s;
      font-size: 0.95rem;
    }
    .btn-primary {
      background: #00d4ff;
      color: #0b1219;
      box-shadow: 0 4px 20px rgba(0, 212, 255, 0.25);
    }
    .btn-primary:hover {
      transform: scale(1.02);
      box-shadow: 0 8px 30px rgba(0, 212, 255, 0.35);
    }
    .btn-ghost {
      background: rgba(255, 255, 255, 0.04);
      border: 1px solid rgba(255, 255, 255, 0.08);
      color: #eef2f6;
    }
    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.08);
    }
    .hero-stats {
      display: flex;
      gap: 24px;
      background: rgba(255, 255, 255, 0.02);
      padding: 18px 28px;
      border-radius: 60px;
      border: 1px solid rgba(255, 255, 255, 0.03);
      backdrop-filter: blur(4px);
    }
    .hero-stats span {
      color: #b6c8db;
      font-size: 0.9rem;
    }
    .hero-stats strong {
      color: #fff;
      font-weight: 600;
    }
    /* ----- section titles ----- */
    .section-title {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 2rem;
      font-weight: 600;
      letter-spacing: -0.5px;
      margin-bottom: 6px;
    }
    .section-sub {
      color: var(--text-muted);
      margin-bottom: 28px;
    }
    .section {
      margin: 48px 0;
    }
    /* ----- categories grid ----- */
    .grid-categories {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
      gap: 16px;
    }
    .cat-card {
      background: var(--card-bg);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255, 255, 255, 0.03);
      border-radius: 24px;
      padding: 20px 8px;
      text-align: center;
      transition: 0.25s;
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      border-color: rgba(0, 212, 255, 0.2);
      box-shadow: 0 12px 30px -10px rgba(0, 0, 0, 0.6);
    }
    .cat-card .icon {
      font-size: 2rem;
      color: #00d4ff;
      margin-bottom: 8px;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 1rem;
    }
    /* ----- products grid ----- */
    .grid-products {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: var(--card-bg);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255, 255, 255, 0.03);
      border-radius: 28px;
      overflow: hidden;
      transition: 0.3s;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: scale(1.01);
      border-color: rgba(0, 212, 255, 0.15);
      box-shadow: 0 20px 40px -15px rgba(0, 0, 0, 0.7);
    }
    .product-card img {
      width: 100%;
      height: 180px;
      object-fit: cover;
      display: block;
      background: #10171f;
    }
    .product-body {
      padding: 14px 16px 10px;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 4px;
    }
    .product-body .category-tag {
      font-size: 0.7rem;
      color: var(--text-muted);
      text-transform: uppercase;
      letter-spacing: 0.3px;
    }
    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin: 10px 0 4px;
    }
    .price {
      font-weight: 700;
      font-size: 1.2rem;
    }
    .old-price {
      color: var(--text-muted);
      text-decoration: line-through;
      font-size: 0.85rem;
      margin-left: 6px;
    }
    .rating {
      color: #fbbf24;
      font-size: 0.8rem;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .product-footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 8px;
      margin-top: auto;
    }
    .add-btn {
      flex: 1;
      background: rgba(0, 212, 255, 0.08);
      border: 1px solid rgba(0, 212, 255, 0.1);
      padding: 10px 0;
      border-radius: 40px;
      color: #eef2f6;
      font-weight: 600;
      cursor: pointer;
      transition: 0.2s;
    }
    .add-btn:hover {
      background: #00d4ff;
      color: #0b1219;
      box-shadow: 0 0 20px rgba(0, 212, 255, 0.2);
    }
    .wish-btn {
      background: transparent;
      border: 1px solid rgba(255, 255, 255, 0.04);
      border-radius: 40px;
      width: 44px;
      color: #b0c4db;
      cursor: pointer;
      transition: 0.2s;
    }
    .wish-btn:hover {
      background: rgba(255, 255, 255, 0.04);
      color: #ff6b8a;
    }
    /* ----- deal block ----- */
    .deal-block {
      display: flex;
      flex-wrap: wrap;
      background: radial-gradient(circle at 20% 30%, #1b293a, #0d131b);
      border-radius: 40px;
      border: 1px solid rgba(255, 255, 255, 0.03);
      overflow: hidden;
      margin: 16px 0;
      align-items: stretch;
    }
    .deal-block img {
      width: 45%;
      object-fit: cover;
      min-height: 260px;
      background: #10171f;
    }
    .deal-content {
      padding: 30px 32px;
      flex: 1;
    }
    .deal-content h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 1.8rem;
    }
    .timer-box {
      display: flex;
      gap: 14px;
      margin: 18px 0;
    }
    .time-unit {
      background: rgba(0, 0, 0, 0.4);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255, 255, 255, 0.04);
      border-radius: 20px;
      padding: 10px 14px;
      min-width: 64px;
      text-align: center;
    }
    .time-unit div:first-child {
      font-weight: 700;
      font-size: 1.5rem;
    }
    .time-unit div:last-child {
      font-size: 0.7rem;
      color: var(--text-muted);
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }
    .deal-price {
      display: flex;
      align-items: center;
      gap: 14px;
      flex-wrap: wrap;
    }
    .deal-price .price {
      font-size: 1.8rem;
    }
    .badge-discount {
      background: #f43f5e;
      padding: 4px 14px;
      border-radius: 60px;
      font-weight: 700;
      font-size: 0.9rem;
    }
    /* testimonials */
    .testimonial-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scrollbar-width: thin;
    }
    .testimonial-card {
      min-width: 270px;
      background: var(--card-bg);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255, 255, 255, 0.02);
      border-radius: 28px;
      padding: 22px;
    }
    .testimonial-card .stars {
      color: #fbbf24;
      margin-bottom: 6px;
    }
    /* newsletter */
    .newsletter-box {
      background: radial-gradient(circle at 70% 40%, #1b2b3f, #0d131b);
      border-radius: 40px;
      padding: 40px 32px;
      border: 1px solid rgba(255, 255, 255, 0.02);
      text-align: center;
    }
    .newsletter-box input {
      padding: 14px 24px;
      border-radius: 60px;
      border: 1px solid rgba(255, 255, 255, 0.06);
      background: rgba(0, 0, 0, 0.3);
      color: #fff;
      width: 280px;
      max-width: 100%;
      outline: none;
      transition: 0.2s;
    }
    .newsletter-box input:focus {
      border-color: #00d4ff;
    }
    .newsletter-box .btn {
      margin-left: 6px;
    }
    /* footer */
    footer {
      margin: 50px 0 20px;
      padding: 32px 0 12px;
      border-top: 1px solid rgba(255, 255, 255, 0.03);
      color: var(--text-muted);
    }
    .footer-links {
      display: flex;
      flex-wrap: wrap;
      gap: 40px;
      justify-content: space-between;
    }
    .footer-links a {
      color: var(--text-muted);
      transition: 0.15s;
    }
    .footer-links a:hover {
      color: #fff;
    }
    /* responsive */
    @media (max-width: 860px) {
      nav.main-nav {
        display: none;
      }
      .mobile-toggle {
        display: inline-block;
      }
      .hero-content h1 {
        font-size: 2.4rem;
      }
      .deal-block img {
        width: 100%;
        height: 200px;
      }
    }
    @media (max-width: 600px) {
      header {
        border-radius: 32px;
        padding: 6px 14px;
      }
      .search {
        min-width: 130px;
      }
      .hero {
        padding: 32px 20px;
      }
      .grid-products {
        grid-template-columns: 1fr 1fr;
      }
    }
    @media (max-width: 450px) {
      .grid-products {
        grid-template-columns: 1fr;
      }
    }
    /* misc */
    .muted {
      color: var(--text-muted);
    }
    .text-center {
      text-align: center;
    }
    .mt-2 {
      margin-top: 12px;
    }
  </style>
</head>
<body>

<header>
  <div class="header-inner">
    <div style="display:flex;align-items:center;gap:12px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-cube"></i> Nexus<span style="color:#00d4ff; -webkit-text-fill-color:#00d4ff;">Shop</span></a>
    </div>

    <nav class="main-nav" id="mainNav">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      </ul>
    </nav>

    <div style="display:flex;align-items:center;gap:12px;">
      <div class="search">
        <input type="text" id="searchInput" placeholder="Search..." />
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <a class="icon-btn" href="#"><i class="far fa-user"></i></a>
        <a class="icon-btn" href="#"><i class="far fa-heart"></i></a>
        <a class="cart" href="#" id="cartBtn">
          <i class="fas fa-shopping-cart"></i>
          <span class="cart-count" id="cartCount">0</span>
        </a>
      </div>
    </div>
  </div>

  <!-- mobile menu -->
  <div id="mobileMenu" style="display:none;">
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Categories</a></li>
      <li><a href="#">Trending</a></li>
      <li><a href="#deals">Deals</a></li>
    </ul>
  </div>
</header>

<main class="container">
  <!-- hero -->
  <section class="hero">
    <div class="hero-content">
      <h1>Winter drop <br />premium picks</h1>
      <p>Discover the latest in tech, fashion & lifestyle. Curated for you.</p>
      <div class="btn-group">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
        <button class="btn btn-ghost" id="exploreDeals">Explore deals</button>
      </div>
    </div>
    <div class="hero-stats">
      <div><strong>200+</strong> <span>brands</span></div>
      <div><strong>4.8★</strong> <span>avg. rating</span></div>
    </div>
  </section>

  <!-- categories -->
  <section class="section">
    <h2 class="section-title">Shop by category</h2>
    <p class="section-sub">Browse our curated collections</p>
    <div class="grid-categories" id="categoriesGrid"></div>
  </section>

  <!-- products -->
  <section class="section">
    <h2 class="section-title">Trending now</h2>
    <p class="section-sub">Popular picks based on recent activity</p>
    <div class="grid-products" id="productsGrid"></div>
  </section>

  <!-- deal -->
  <section id="deals" class="section">
    <h2 class="section-title">Flash sale</h2>
    <p class="section-sub">Limited-time offers</p>
    <div class="deal-block">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air" />
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="muted">Thin, light, and power efficient.</p>
        <div class="timer-box" id="timerBox">
          <div class="time-unit"><div id="dealDays">0</div><div>Days</div></div>
          <div class="time-unit"><div id="dealHours">00</div><div>Hrs</div></div>
          <div class="time-unit"><div id="dealMinutes">00</div><div>Min</div></div>
          <div class="time-unit"><div id="dealSeconds">00</div><div>Sec</div></div>
        </div>
        <div class="deal-price">
          <span class="price">$999</span>
          <span class="old-price">$1,199</span>
          <span class="badge-discount">-17%</span>
        </div>
        <p style="margin:8px 0 16px;">Only <strong>12</strong> left at this price</p>
        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-bolt"></i> Buy now</button>
      </div>
    </div>
  </section>

  <!-- testimonials -->
  <section class="section">
    <h2 class="section-title">Real reviews</h2>
    <p class="section-sub">What our customers say</p>
    <div class="testimonial-scroll" id="testimonials">
      <div class="testimonial-card">
        <div class="stars">★★★★★</div>
        <p>“Fast shipping, great quality. Will order again.”</p>
        <div style="display:flex;align-items:center;gap:8px;margin-top:10px;">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=60&h=60&q=80" style="width:36px;height:36px;border-radius:50%;object-fit:cover;" alt="avatar" />
          <div><strong>Ava</strong> <div class="muted" style="font-size:0.75rem;">Verified</div></div>
        </div>
      </div>
      <div class="testimonial-card">
        <div class="stars">★★★★☆</div>
        <p>“Smooth checkout and excellent selection.”</p>
        <div style="display:flex;align-items:center;gap:8px;margin-top:10px;">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=60&h=60&q=80" style="width:36px;height:36px;border-radius:50%;object-fit:cover;" alt="avatar" />
          <div><strong>Michael</strong> <div class="muted" style="font-size:0.75rem;">Frequent</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- newsletter -->
  <section class="section">
    <div class="newsletter-box">
      <h3 style="font-family:'Space Grotesk',sans-serif;font-size:1.6rem;">Stay in the loop</h3>
      <p class="muted">Get exclusive offers & new arrivals</p>
      <form id="newsletterForm" style="display:flex;justify-content:center;gap:10px;flex-wrap:wrap;margin-top:10px;">
        <input type="email" id="newsletterEmail" placeholder="Enter your email" required />
        <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:14px;font-size:0.95rem;display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-links">
    <div>
      <div style="font-weight:700;font-size:1.2rem;color:#eef2f6;">NexusShop</div>
      <p class="muted" style="max-width:240px;margin:6px 0 12px;">Modern e‑commerce demo with a fresh UI.</p>
      <div style="display:flex;gap:12px;">
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-github"></i></a>
      </div>
    </div>
    <div><strong>Company</strong><br /><a href="#">About</a><br /><a href="#">Careers</a></div>
    <div><strong>Support</strong><br /><a href="#">Help</a><br /><a href="#">Returns</a></div>
  </div>
  <div class="text-center muted" style="margin-top:24px;font-size:0.8rem;">© <span id="year"></span> NexusShop — all rights reserved.</div>
</footer>

<script>
  (function(){
    // ----- data -----
    const CATEGORIES = [
      { id:'phones', name:'Smartphones', icon:'fa-mobile-alt' },
      { id:'laptops', name:'Laptops', icon:'fa-laptop' },
      { id:'clothing', name:'Clothing', icon:'fa-tshirt' },
      { id:'gadgets', name:'Gadgets', icon:'fa-headphones' },
      { id:'footwear', name:'Footwear', icon:'fa-shoe-prints' },
      { id:'accessories', name:'Accessories', icon:'fa-watch' }
    ];
    const PRODUCTS = [
      { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category:'phones' },
      { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category:'laptops' },
      { id:3, title:'Apple Watch Series 8', price:349, oldPrice:399, rating:5, reviews:214, img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category:'accessories' },
      { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category:'footwear' },
      { id:5, title:'Sony A7 IV', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category:'gadgets' },
      { id:6, title:'Chanel No.5', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category:'accessories' },
      { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category:'accessories' },
      { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category:'gadgets' }
    ];

    // ----- refs -----
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');
    let cartCount = 0;

    // ----- render -----
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const div = document.createElement('div');
        div.className = 'cat-card';
        div.innerHTML = `<div class="icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4>`;
        div.addEventListener('click', ()=>{
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.querySelector('.section-title').scrollIntoView({ behavior:'smooth', block:'start' });
        });
        categoriesGrid.appendChild(div);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      list.forEach(p => {
        const card = document.createElement('div');
        card.className = 'product-card';
        const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
        card.innerHTML = `
          <img src="${p.img}" alt="${p.title}" loading="lazy" />
          <div class="product-body">
            <h5>${p.title}</h5>
            <div class="category-tag">${p.category}</div>
            <div class="price-row">
              <span><span class="price">$${p.price.toLocaleString()}</span>${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</span>
              <span class="rating"><span>${stars}</span> <span style="color:var(--text-muted);font-size:0.7rem;">(${p.reviews})</span></span>
            </div>
          </div>
          <div class="product-footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
            <button class="wish-btn"><i class="far fa-heart"></i></button>
          </div>
        `;
        productsGrid.appendChild(card);
      });
      // attach add listeners
      document.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', function(e) {
          const id = parseInt(this.dataset.id);
          addToCart(id);
        });
      });
    }

    function filterProducts(query) {
      const q = (query || '').trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
      renderProducts(filtered);
    }

    function addToCart(id) {
      const product = PRODUCTS.find(p => p.id === id);
      if (!product) return;
      cartCount++;
      cartCountEl.textContent = cartCount;
      const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
      if (btn) {
        const orig = btn.innerHTML;
        btn.innerHTML = '<i class="fas fa-check"></i> Added';
        btn.disabled = true;
        setTimeout(() => { btn.innerHTML = orig; btn.disabled = false; }, 1000);
      }
    }

    // ----- search -----
    searchBtn.addEventListener('click', ()=> filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', e => { if(e.key === 'Enter') filterProducts(e.target.value); });

    // ----- mobile toggle -----
    document.getElementById('mobileToggle').addEventListener('click', function() {
      const menu = document.getElementById('mobileMenu');
      menu.style.display = menu.style.display === 'none' || !menu.style.display ? 'block' : 'none';
    });

    // ----- newsletter -----
    document.getElementById('newsletterForm').addEventListener('submit', function(e) {
      e.preventDefault();
      const email = document.getElementById('newsletterEmail').value.trim();
      const msg = document.getElementById('newsletterMsg');
      if (!email || !email.includes('@')) {
        msg.style.display = 'block';
        msg.textContent = 'Please enter a valid email.';
        msg.style.color = '#f87171';
        return;
      }
      msg.style.display = 'block';
      msg.textContent = '✅ You\'re subscribed!';
      msg.style.color = '#86efac';
      document.getElementById('newsletterEmail').value = '';
      setTimeout(() => msg.style.display = 'none', 3000);
    });

    // ----- deal timer -----
    (function setupTimer() {
      const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);
      function tick() {
        const diff = target - new Date();
        if (diff <= 0) { clearInterval(timer); return; }
        document.getElementById('dealDays').textContent = Math.floor(diff / (24*3600*1000));
        document.getElementById('dealHours').textContent = String(Math.floor((diff % (24*3600*1000)) / (3600*1000))).padStart(2,'0');
        document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600*1000)) / (60*1000))).padStart(2,'0');
        document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60*1000)) / 1000)).padStart(2,'0');
      }
      tick();
      const timer = setInterval(tick, 1000);
    })();

    // ----- buttons -----
    document.getElementById('shopNow').addEventListener('click', ()=> document.querySelector('.section-title').scrollIntoView({ behavior:'smooth' }));
    document.getElementById('exploreDeals').addEventListener('click', ()=> document.getElementById('deals').scrollIntoView({ behavior:'smooth' }));
    document.getElementById('buyDeal').addEventListener('click', ()=>{
      cartCount++;
      cartCountEl.textContent = cartCount;
      alert('Deal added to cart (demo).');
    });

    // ----- init -----
    renderCategories();
    renderProducts(PRODUCTS);
    document.getElementById('year').textContent = new Date().getFullYear();
  })();
</script>
</body>
</html>
