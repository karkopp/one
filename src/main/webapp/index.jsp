<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>VibeStore — Modern E-Commerce</title>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@400;500;600;700;800&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
  <style>
    /* ===== CSS Variables ===== */
    :root {
      --bg-primary: #f8fafc;
      --bg-secondary: #ffffff;
      --bg-dark: #0b1120;
      --text-primary: #0f172a;
      --text-secondary: #475569;
      --text-light: #94a3b8;
      --accent-1: #6366f1;
      --accent-2: #8b5cf6;
      --accent-3: #06b6d4;
      --accent-4: #f59e0b;
      --gradient-1: linear-gradient(135deg, #6366f1, #8b5cf6);
      --gradient-2: linear-gradient(135deg, #06b6d4, #3b82f6);
      --gradient-3: linear-gradient(135deg, #f59e0b, #ef4444);
      --shadow-sm: 0 1px 3px rgba(0,0,0,0.06);
      --shadow-md: 0 4px 20px rgba(99, 102, 241, 0.12);
      --shadow-lg: 0 10px 40px rgba(0,0,0,0.08);
      --radius-sm: 12px;
      --radius-md: 20px;
      --radius-lg: 30px;
      --radius-full: 9999px;
      --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
    }

    /* ===== Reset & Base ===== */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    html { scroll-behavior: smooth; }
    body {
      font-family: 'Outfit', sans-serif;
      background: var(--bg-primary);
      color: var(--text-primary);
      line-height: 1.6;
      min-height: 100vh;
    }
    a { color: inherit; text-decoration: none; }
    img { max-width: 100%; display: block; }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ===== Scrollbar ===== */
    ::-webkit-scrollbar { width: 8px; height: 8px; }
    ::-webkit-scrollbar-track { background: var(--bg-primary); }
    ::-webkit-scrollbar-thumb { background: var(--accent-1); border-radius: var(--radius-full); }

    /* ===== Header ===== */
    header {
      background: rgba(255,255,255,0.85);
      backdrop-filter: blur(20px);
      -webkit-backdrop-filter: blur(20px);
      border-bottom: 1px solid rgba(99, 102, 241, 0.08);
      position: sticky;
      top: 0;
      z-index: 100;
      padding: 12px 0;
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      flex-wrap: wrap;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-size: 1.6rem;
      font-weight: 800;
      background: var(--gradient-1);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .brand i {
      font-size: 1.4rem;
      color: var(--accent-1);
      -webkit-text-fill-color: var(--accent-1);
      background: none;
    }
    .nav-links {
      display: flex;
      align-items: center;
      gap: 6px;
      list-style: none;
    }
    .nav-links a {
      padding: 8px 16px;
      border-radius: var(--radius-full);
      font-weight: 500;
      font-size: 0.9rem;
      color: var(--text-secondary);
      transition: var(--transition);
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .nav-links a:hover,
    .nav-links a.active {
      background: rgba(99, 102, 241, 0.08);
      color: var(--accent-1);
    }
    .nav-links a i { font-size: 0.9rem; }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .search-wrapper {
      display: flex;
      align-items: center;
      background: var(--bg-primary);
      border: 2px solid transparent;
      border-radius: var(--radius-full);
      padding: 4px 4px 4px 18px;
      transition: var(--transition);
    }
    .search-wrapper:focus-within {
      border-color: var(--accent-1);
      box-shadow: 0 0 0 4px rgba(99, 102, 241, 0.1);
    }
    .search-wrapper input {
      border: none;
      background: transparent;
      outline: none;
      font-family: inherit;
      font-size: 0.9rem;
      color: var(--text-primary);
      width: 180px;
    }
    .search-wrapper input::placeholder {
      color: var(--text-light);
    }
    .search-wrapper button {
      background: var(--gradient-1);
      border: none;
      color: white;
      width: 38px;
      height: 38px;
      border-radius: var(--radius-full);
      cursor: pointer;
      transition: var(--transition);
    }
    .search-wrapper button:hover {
      transform: scale(1.05);
    }

    .icon-btn {
      width: 42px;
      height: 42px;
      border-radius: var(--radius-full);
      border: none;
      background: transparent;
      color: var(--text-secondary);
      font-size: 1.1rem;
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .icon-btn:hover {
      background: rgba(99, 102, 241, 0.08);
      color: var(--accent-1);
    }
    .cart-btn {
      position: relative;
      background: rgba(99, 102, 241, 0.08);
      padding: 8px 16px 8px 12px;
      border-radius: var(--radius-full);
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 600;
      color: var(--accent-1);
      transition: var(--transition);
    }
    .cart-btn:hover {
      background: rgba(99, 102, 241, 0.15);
      transform: scale(1.02);
    }
    .cart-count {
      background: var(--gradient-1);
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      min-width: 22px;
      height: 22px;
      border-radius: var(--radius-full);
      display: inline-flex;
      align-items: center;
      justify-content: center;
      padding: 0 6px;
    }
    .mobile-toggle {
      display: none;
      background: none;
      border: none;
      font-size: 1.4rem;
      color: var(--text-primary);
      cursor: pointer;
    }

    /* ===== Mobile Menu ===== */
    #mobileMenu {
      display: none;
      background: var(--bg-secondary);
      border-radius: var(--radius-md);
      padding: 16px;
      margin-top: 12px;
      box-shadow: var(--shadow-lg);
      border: 1px solid rgba(99, 102, 241, 0.06);
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    #mobileMenu ul a {
      display: block;
      padding: 12px 16px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      color: var(--text-secondary);
      transition: var(--transition);
    }
    #mobileMenu ul a:hover {
      background: rgba(99, 102, 241, 0.06);
      color: var(--accent-1);
    }

    /* ===== Hero ===== */
    .hero {
      background: var(--bg-dark);
      border-radius: var(--radius-lg);
      padding: 60px 50px;
      margin: 32px 0 48px;
      position: relative;
      overflow: hidden;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
      flex-wrap: wrap;
      min-height: 400px;
    }
    .hero::before {
      content: '';
      position: absolute;
      top: -50%;
      right: -20%;
      width: 600px;
      height: 600px;
      background: radial-gradient(circle, rgba(99, 102, 241, 0.15), transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }
    .hero::after {
      content: '';
      position: absolute;
      bottom: -40%;
      left: -10%;
      width: 400px;
      height: 400px;
      background: radial-gradient(circle, rgba(6, 182, 212, 0.1), transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }
    .hero-content {
      position: relative;
      z-index: 2;
      max-width: 580px;
    }
    .hero-badge {
      display: inline-block;
      background: rgba(99, 102, 241, 0.15);
      color: var(--accent-1);
      padding: 4px 16px;
      border-radius: var(--radius-full);
      font-size: 0.8rem;
      font-weight: 600;
      margin-bottom: 12px;
      backdrop-filter: blur(4px);
    }
    .hero h1 {
      font-size: 3.2rem;
      font-weight: 800;
      line-height: 1.1;
      color: white;
      margin-bottom: 16px;
    }
    .hero h1 span {
      background: var(--gradient-1);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .hero p {
      color: rgba(255,255,255,0.7);
      font-size: 1.1rem;
      max-width: 440px;
      margin-bottom: 28px;
    }
    .hero-buttons {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 14px 32px;
      border-radius: var(--radius-full);
      font-family: inherit;
      font-weight: 600;
      font-size: 0.95rem;
      border: none;
      cursor: pointer;
      transition: var(--transition);
    }
    .btn-primary {
      background: var(--gradient-1);
      color: white;
      box-shadow: 0 4px 20px rgba(99, 102, 241, 0.3);
    }
    .btn-primary:hover {
      transform: translateY(-2px);
      box-shadow: 0 8px 30px rgba(99, 102, 241, 0.4);
    }
    .btn-secondary {
      background: rgba(255,255,255,0.08);
      color: white;
      border: 1px solid rgba(255,255,255,0.1);
    }
    .btn-secondary:hover {
      background: rgba(255,255,255,0.15);
    }
    .btn-accent {
      background: var(--gradient-2);
      color: white;
      box-shadow: 0 4px 20px rgba(6, 182, 212, 0.3);
    }
    .btn-accent:hover {
      transform: translateY(-2px);
      box-shadow: 0 8px 30px rgba(6, 182, 212, 0.4);
    }
    .hero-stats {
      display: flex;
      gap: 32px;
      margin-top: 30px;
      flex-wrap: wrap;
    }
    .hero-stats div {
      color: rgba(255,255,255,0.6);
      font-size: 0.9rem;
    }
    .hero-stats strong {
      display: block;
      color: white;
      font-size: 1.6rem;
      font-weight: 700;
    }
    .hero-image {
      position: relative;
      z-index: 2;
      flex: 1;
      min-width: 200px;
      max-width: 400px;
      display: flex;
      justify-content: center;
    }
    .hero-image img {
      width: 100%;
      max-width: 340px;
      border-radius: var(--radius-md);
      box-shadow: 0 20px 60px rgba(0,0,0,0.4);
      filter: brightness(0.95);
    }

    /* ===== Section ===== */
    .section {
      margin: 48px 0;
    }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      margin-bottom: 28px;
      flex-wrap: wrap;
      gap: 12px;
    }
    .section-header h2 {
      font-size: 2rem;
      font-weight: 700;
    }
    .section-header h2 i {
      color: var(--accent-1);
      margin-right: 8px;
    }
    .section-header p {
      color: var(--text-secondary);
    }
    .section-link {
      color: var(--accent-1);
      font-weight: 600;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: var(--transition);
    }
    .section-link:hover {
      gap: 12px;
    }

    /* ===== Categories ===== */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
      gap: 16px;
    }
    .cat-card {
      background: var(--bg-secondary);
      padding: 24px 16px;
      border-radius: var(--radius-md);
      text-align: center;
      transition: var(--transition);
      border: 2px solid transparent;
      box-shadow: var(--shadow-sm);
      cursor: pointer;
    }
    .cat-card:hover {
      border-color: var(--accent-1);
      transform: translateY(-4px);
      box-shadow: var(--shadow-md);
    }
    .cat-card .icon {
      font-size: 2.2rem;
      background: var(--gradient-1);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      margin-bottom: 8px;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 0.95rem;
    }
    .cat-card .count {
      font-size: 0.75rem;
      color: var(--text-light);
    }

    /* ===== Products ===== */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: var(--bg-secondary);
      border-radius: var(--radius-md);
      overflow: hidden;
      transition: var(--transition);
      box-shadow: var(--shadow-sm);
      border: 2px solid transparent;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      border-color: rgba(99, 102, 241, 0.15);
      box-shadow: var(--shadow-lg);
    }
    .product-image {
      position: relative;
      overflow: hidden;
      background: var(--bg-primary);
      height: 220px;
    }
    .product-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .product-image img {
      transform: scale(1.05);
    }
    .product-badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--gradient-3);
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      padding: 4px 12px;
      border-radius: var(--radius-full);
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }
    .product-badge.sale {
      background: var(--gradient-3);
    }
    .product-badge.new {
      background: var(--gradient-2);
    }
    .product-wishlist {
      position: absolute;
      top: 12px;
      right: 12px;
      background: rgba(255,255,255,0.9);
      width: 36px;
      height: 36px;
      border-radius: var(--radius-full);
      border: none;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 0.9rem;
      color: var(--text-secondary);
      transition: var(--transition);
      backdrop-filter: blur(4px);
    }
    .product-wishlist:hover {
      background: white;
      color: #ef4444;
      transform: scale(1.1);
    }
    .product-body {
      padding: 16px 18px 12px;
      flex: 1;
    }
    .product-body .category-tag {
      font-size: 0.7rem;
      color: var(--text-light);
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }
    .product-body h5 {
      font-size: 1rem;
      font-weight: 600;
      margin: 4px 0 6px;
    }
    .product-rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 0.8rem;
      color: #f59e0b;
    }
    .product-rating span {
      color: var(--text-light);
      font-size: 0.7rem;
    }
    .product-price {
      display: flex;
      align-items: center;
      gap: 10px;
      margin: 6px 0;
    }
    .product-price .current {
      font-size: 1.2rem;
      font-weight: 700;
    }
    .product-price .old {
      color: var(--text-light);
      text-decoration: line-through;
      font-size: 0.85rem;
    }
    .product-footer {
      padding: 8px 18px 16px;
      display: flex;
      gap: 10px;
      margin-top: auto;
    }
    .add-to-cart {
      flex: 1;
      background: var(--gradient-1);
      color: white;
      border: none;
      padding: 10px;
      border-radius: var(--radius-full);
      font-family: inherit;
      font-weight: 600;
      font-size: 0.85rem;
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .add-to-cart:hover {
      transform: scale(1.02);
      box-shadow: 0 4px 16px rgba(99, 102, 241, 0.3);
    }
    .quick-view {
      width: 44px;
      border-radius: var(--radius-full);
      border: 1px solid rgba(99, 102, 241, 0.1);
      background: transparent;
      color: var(--text-secondary);
      cursor: pointer;
      transition: var(--transition);
    }
    .quick-view:hover {
      background: rgba(99, 102, 241, 0.06);
      color: var(--accent-1);
    }

    /* ===== Deal Banner ===== */
    .deal-banner {
      background: var(--bg-dark);
      border-radius: var(--radius-lg);
      padding: 40px 48px;
      display: flex;
      align-items: center;
      gap: 40px;
      flex-wrap: wrap;
      margin: 32px 0;
    }
    .deal-banner .deal-content {
      flex: 1;
      min-width: 260px;
    }
    .deal-banner h3 {
      color: white;
      font-size: 2rem;
      font-weight: 700;
    }
    .deal-banner h3 i {
      color: #f59e0b;
      margin-right: 8px;
    }
    .deal-banner p {
      color: rgba(255,255,255,0.7);
      margin: 6px 0 16px;
    }
    .deal-timer {
      display: flex;
      gap: 12px;
      margin: 16px 0 20px;
    }
    .deal-timer .time-block {
      background: rgba(255,255,255,0.05);
      border: 1px solid rgba(255,255,255,0.06);
      border-radius: var(--radius-sm);
      padding: 10px 16px;
      text-align: center;
      min-width: 60px;
      backdrop-filter: blur(4px);
    }
    .deal-timer .time-block .num {
      display: block;
      font-size: 1.8rem;
      font-weight: 700;
      color: white;
    }
    .deal-timer .time-block .label {
      font-size: 0.65rem;
      color: rgba(255,255,255,0.5);
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }
    .deal-banner .deal-image {
      flex: 1;
      min-width: 200px;
      max-width: 400px;
      border-radius: var(--radius-md);
      overflow: hidden;
      box-shadow: 0 20px 60px rgba(0,0,0,0.4);
    }
    .deal-banner .deal-image img {
      width: 100%;
      height: 220px;
      object-fit: cover;
    }
    .deal-price-row {
      display: flex;
      align-items: center;
      gap: 16px;
      flex-wrap: wrap;
    }
    .deal-price-row .price {
      font-size: 1.8rem;
      font-weight: 700;
      color: white;
    }
    .deal-price-row .old-price {
      color: rgba(255,255,255,0.4);
      text-decoration: line-through;
      font-size: 1.1rem;
    }
    .deal-price-row .discount {
      background: #ef4444;
      color: white;
      font-weight: 700;
      padding: 4px 14px;
      border-radius: var(--radius-full);
      font-size: 0.8rem;
    }
    .deal-banner .btn {
      margin-top: 12px;
    }

    /* ===== Testimonials ===== */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
    }
    .testimonial-card {
      min-width: 280px;
      background: var(--bg-secondary);
      padding: 24px;
      border-radius: var(--radius-md);
      box-shadow: var(--shadow-sm);
      scroll-snap-align: start;
      border: 1px solid rgba(99, 102, 241, 0.04);
    }
    .testimonial-card .stars {
      color: #f59e0b;
      font-size: 0.9rem;
      margin-bottom: 8px;
    }
    .testimonial-card blockquote {
      color: var(--text-secondary);
      font-style: italic;
      font-size: 0.95rem;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 14px;
    }
    .testimonial-card .author img {
      width: 40px;
      height: 40px;
      border-radius: var(--radius-full);
      object-fit: cover;
    }
    .testimonial-card .author .name {
      font-weight: 600;
      font-size: 0.9rem;
    }
    .testimonial-card .author .role {
      font-size: 0.75rem;
      color: var(--text-light);
    }

    /* ===== Newsletter ===== */
    .newsletter-section {
      background: var(--gradient-1);
      border-radius: var(--radius-lg);
      padding: 48px 40px;
      text-align: center;
      color: white;
    }
    .newsletter-section h3 {
      font-size: 2rem;
      font-weight: 700;
    }
    .newsletter-section p {
      opacity: 0.85;
      margin: 6px 0 20px;
    }
    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 12px;
      flex-wrap: wrap;
      max-width: 520px;
      margin: 0 auto;
    }
    .newsletter-form input {
      flex: 1;
      min-width: 220px;
      padding: 14px 24px;
      border-radius: var(--radius-full);
      border: none;
      font-family: inherit;
      font-size: 0.95rem;
      outline: none;
      background: rgba(255,255,255,0.15);
      color: white;
      backdrop-filter: blur(4px);
      transition: var(--transition);
    }
    .newsletter-form input::placeholder {
      color: rgba(255,255,255,0.6);
    }
    .newsletter-form input:focus {
      background: rgba(255,255,255,0.25);
    }
    .newsletter-form .btn {
      background: white;
      color: var(--accent-1);
    }
    .newsletter-form .btn:hover {
      transform: scale(1.02);
    }
    #newsletterMsg {
      margin-top: 12px;
      font-weight: 500;
      display: none;
    }

    /* ===== Footer ===== */
    footer {
      margin-top: 48px;
      padding: 40px 0 20px;
      border-top: 1px solid rgba(99, 102, 241, 0.06);
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 40px;
      margin-bottom: 32px;
    }
    .footer-grid .brand {
      font-size: 1.4rem;
    }
    .footer-grid p {
      color: var(--text-secondary);
      font-size: 0.9rem;
      max-width: 300px;
      margin: 8px 0 12px;
    }
    .footer-grid .social-links {
      display: flex;
      gap: 12px;
    }
    .footer-grid .social-links a {
      width: 40px;
      height: 40px;
      border-radius: var(--radius-full);
      background: var(--bg-primary);
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--text-secondary);
      transition: var(--transition);
    }
    .footer-grid .social-links a:hover {
      background: var(--accent-1);
      color: white;
    }
    .footer-grid h4 {
      font-weight: 600;
      margin-bottom: 12px;
    }
    .footer-grid ul {
      list-style: none;
    }
    .footer-grid ul li {
      margin-bottom: 8px;
    }
    .footer-grid ul a {
      color: var(--text-secondary);
      font-size: 0.9rem;
      transition: var(--transition);
    }
    .footer-grid ul a:hover {
      color: var(--accent-1);
    }
    .footer-bottom {
      text-align: center;
      padding-top: 20px;
      border-top: 1px solid rgba(99, 102, 241, 0.06);
      color: var(--text-light);
      font-size: 0.85rem;
    }

    /* ===== Responsive ===== */
    @media (max-width: 1024px) {
      .footer-grid {
        grid-template-columns: 1fr 1fr;
      }
    }
    @media (max-width: 768px) {
      .nav-links { display: none; }
      .mobile-toggle { display: block; }
      .search-wrapper input { width: 120px; }
      .hero { padding: 40px 28px; }
      .hero h1 { font-size: 2.4rem; }
      .hero-stats { gap: 20px; }
      .hero-image { display: none; }
      .deal-banner { padding: 28px 24px; }
      .deal-banner h3 { font-size: 1.6rem; }
      .footer-grid { grid-template-columns: 1fr; gap: 24px; }
      .section-header h2 { font-size: 1.6rem; }
    }
    @media (max-width: 480px) {
      .container { padding: 0 16px; }
      .hero h1 { font-size: 1.8rem; }
      .hero-stats strong { font-size: 1.2rem; }
      .products-grid { grid-template-columns: 1fr; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); }
      .deal-timer .time-block { min-width: 48px; padding: 8px 10px; }
      .deal-timer .time-block .num { font-size: 1.2rem; }
    }
  </style>
</head>
<body>

<!-- ===== HEADER ===== -->
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:14px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu">
        <i class="fas fa-bars"></i>
      </button>
      <a href="#" class="brand">
        <i class="fas fa-cube"></i> VibeStore
      </a>
    </div>

    <ul class="nav-links">
      <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
      <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
      <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
      <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
    </ul>

    <div class="header-actions">
      <div class="search-wrapper">
        <input type="text" id="searchInput" placeholder="Search products..." />
        <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
      </div>
      <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
      <button class="cart-btn" id="cartBtn">
        <i class="fas fa-shopping-bag"></i>
        <span class="cart-count" id="cartCount">0</span>
      </button>
    </div>
  </div>

  <!-- Mobile Menu -->
  <div id="mobileMenu">
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#categories">Categories</a></li>
      <li><a href="#products">Trending</a></li>
      <li><a href="#deals">Deals</a></li>
    </ul>
  </div>
</header>

<main>
  <div class="container">

    <!-- ===== HERO ===== -->
    <section class="hero">
      <div class="hero-content">
        <div class="hero-badge"><i class="fas fa-bolt"></i> New Season Drop</div>
        <h1>Discover Your <span>Style</span> Today</h1>
        <p>Curated collections of premium fashion, tech, and lifestyle products — designed to elevate your everyday.</p>
        <div class="hero-buttons">
          <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-arrow-right"></i> Shop Now</button>
          <button class="btn btn-secondary" id="exploreBtn"><i class="fas fa-compass"></i> Explore</button>
        </div>
        <div class="hero-stats">
          <div><strong>500+</strong> Products</div>
          <div><strong>4.8★</strong> Avg. Rating</div>
          <div><strong>12k</strong> Happy Customers</div>
        </div>
      </div>
      <div class="hero-image">
        <img src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=500&q=80" alt="Hero showcase" />
      </div>
    </section>

    <!-- ===== CATEGORIES ===== -->
    <section class="section" id="categories">
      <div class="section-header">
        <div>
          <h2><i class="fas fa-th-large"></i> Shop by Category</h2>
          <p>Find exactly what you're looking for</p>
        </div>
        <a href="#" class="section-link">View All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid"></div>
    </section>

    <!-- ===== PRODUCTS ===== -->
    <section class="section" id="products">
      <div class="section-header">
        <div>
          <h2><i class="fas fa-fire"></i> Trending Now</h2>
          <p>Most popular picks this week</p>
        </div>
        <a href="#" class="section-link">See All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </section>

    <!-- ===== DEAL BANNER ===== -->
    <section id="deals" class="deal-banner">
      <div class="deal-content">
        <h3><i class="fas fa-clock"></i> Flash Sale</h3>
        <p>Limited time offers — grab them before they're gone!</p>
        <div class="deal-timer" id="dealTimer">
          <div class="time-block"><span class="num" id="dealDays">0</span><
