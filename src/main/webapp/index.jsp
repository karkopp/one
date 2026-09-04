<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Aura — Premium E-Commerce</title>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
  <style>
    /* ============================================
              ROOT VARIABLES
              ============================================ */
    :root {
      --color-bg: #fafafa;
      --color-surface: #ffffff;
      --color-text: #1a1a2e;
      --color-text-secondary: #4a4a6a;
      --color-text-muted: #8a8aa0;
      --color-border: #e8e8f0;
      --color-primary: #6c5ce7;
      --color-primary-light: #a29bfe;
      --color-primary-dark: #5a4bd1;
      --color-accent: #fd79a8;
      --color-success: #00b894;
      --color-warning: #fdcb6e;
      --color-shadow: rgba(108, 92, 231, 0.08);
      --color-shadow-hover: rgba(108, 92, 231, 0.15);
      --radius-sm: 8px;
      --radius-md: 16px;
      --radius-lg: 24px;
      --radius-full: 9999px;
      --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
      --font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
    }

    /* ============================================
              RESET & BASE
              ============================================ */
    *,
    *::before,
    *::after {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    html {
      scroll-behavior: smooth;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
    }

    body {
      font-family: var(--font-family);
      background: var(--color-bg);
      color: var(--color-text);
      line-height: 1.6;
      min-height: 100vh;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    img {
      max-width: 100%;
      display: block;
    }

    button {
      cursor: pointer;
      font-family: inherit;
    }

    /* ============================================
              UTILITY
              ============================================ */
    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 0 24px;
    }

    .section {
      padding: 60px 0;
    }

    .section-label {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      font-size: 0.75rem;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 0.08em;
      color: var(--color-primary);
      background: rgba(108, 92, 231, 0.08);
      padding: 4px 14px;
      border-radius: var(--radius-full);
    }

    .section-title {
      font-size: 2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      margin-top: 8px;
    }

    .section-subtitle {
      color: var(--color-text-secondary);
      margin-top: 4px;
      font-size: 1rem;
    }

    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 16px;
      margin-bottom: 32px;
    }

    .section-link {
      color: var(--color-primary);
      font-weight: 600;
      font-size: 0.9rem;
      display: inline-flex;
      align-items: center;
      gap: 6px;
      transition: var(--transition);
      white-space: nowrap;
    }

    .section-link:hover {
      gap: 12px;
      color: var(--color-primary-dark);
    }

    /* ============================================
              HEADER
              ============================================ */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(16px) saturate(1.8);
      -webkit-backdrop-filter: blur(16px) saturate(1.8);
      border-bottom: 1px solid rgba(0, 0, 0, 0.04);
      padding: 0 24px;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      height: 68px;
      max-width: 1200px;
      margin: 0 auto;
      gap: 16px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 800;
      font-size: 1.4rem;
      letter-spacing: -0.02em;
      color: var(--color-text);
      flex-shrink: 0;
    }

    .brand-icon {
      width: 36px;
      height: 36px;
      background: var(--color-primary);
      border-radius: var(--radius-sm);
      display: flex;
      align-items: center;
      justify-content: center;
      color: white;
      font-size: 1rem;
    }

    .brand span {
      color: var(--color-primary);
    }

    /* Navigation */
    .nav-links {
      display: flex;
      align-items: center;
      gap: 2px;
      list-style: none;
    }

    .nav-links a {
      padding: 8px 18px;
      border-radius: var(--radius-full);
      font-weight: 500;
      font-size: 0.875rem;
      color: var(--color-text-secondary);
      transition: var(--transition);
      display: flex;
      align-items: center;
      gap: 6px;
    }

    .nav-links a:hover,
    .nav-links a.active {
      background: rgba(108, 92, 231, 0.06);
      color: var(--color-primary);
    }

    .nav-links a i {
      font-size: 0.8rem;
      opacity: 0.7;
    }

    /* Header Actions */
    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px;
      flex-shrink: 0;
    }

    .header-actions .icon-btn {
      width: 40px;
      height: 40px;
      border-radius: var(--radius-full);
      border: none;
      background: transparent;
      color: var(--color-text-secondary);
      font-size: 1.1rem;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .header-actions .icon-btn:hover {
      background: rgba(108, 92, 231, 0.06);
      color: var(--color-primary);
    }

    /* Search */
    .search-wrapper {
      display: flex;
      align-items: center;
      background: var(--color-bg);
      border: 2px solid transparent;
      border-radius: var(--radius-full);
      padding: 0 4px 0 18px;
      transition: var(--transition);
      height: 40px;
    }

    .search-wrapper:focus-within {
      border-color: var(--color-primary);
      background: var(--color-surface);
      box-shadow: 0 0 0 4px rgba(108, 92, 231, 0.06);
    }

    .search-wrapper input {
      border: none;
      background: transparent;
      outline: none;
      font-family: inherit;
      font-size: 0.85rem;
      color: var(--color-text);
      width: 160px;
    }

    .search-wrapper input::placeholder {
      color: var(--color-text-muted);
    }

    .search-wrapper button {
      width: 34px;
      height: 34px;
      border: none;
      border-radius: var(--radius-full);
      background: var(--color-primary);
      color: white;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 0.8rem;
    }

    .search-wrapper button:hover {
      background: var(--color-primary-dark);
      transform: scale(1.05);
    }

    /* Cart */
    .cart-btn {
      display: flex;
      align-items: center;
      gap: 6px;
      padding: 6px 16px 6px 12px;
      border-radius: var(--radius-full);
      background: rgba(108, 92, 231, 0.06);
      border: none;
      font-weight: 600;
      font-size: 0.85rem;
      color: var(--color-primary);
      transition: var(--transition);
      position: relative;
    }

    .cart-btn:hover {
      background: rgba(108, 92, 231, 0.12);
      transform: scale(1.02);
    }

    .cart-count {
      background: var(--color-primary);
      color: white;
      font-size: 0.65rem;
      font-weight: 700;
      min-width: 20px;
      height: 20px;
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
      font-size: 1.3rem;
      color: var(--color-text);
      padding: 4px;
    }

    /* Mobile Menu */
    #mobileMenu {
      display: none;
      background: var(--color-surface);
      border-top: 1px solid var(--color-border);
      padding: 16px 24px;
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
      color: var(--color-text-secondary);
      transition: var(--transition);
    }

    #mobileMenu ul a:hover {
      background: rgba(108, 92, 231, 0.04);
      color: var(--color-primary);
    }

    /* ============================================
              HERO
              ============================================ */
    .hero {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 48px;
      align-items: center;
      padding: 40px 0 60px;
      min-height: 480px;
    }

    .hero-content h1 {
      font-size: 3rem;
      font-weight: 800;
      line-height: 1.1;
      letter-spacing: -0.03em;
    }

    .hero-content h1 .highlight {
      background: linear-gradient(135deg, var(--color-primary), var(--color-accent));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    .hero-content p {
      color: var(--color-text-secondary);
      font-size: 1.1rem;
      max-width: 420px;
      margin: 16px 0 28px;
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
      font-weight: 600;
      font-size: 0.9rem;
      border: none;
      transition: var(--transition);
    }

    .btn-primary {
      background: var(--color-primary);
      color: white;
      box-shadow: 0 4px 16px rgba(108, 92, 231, 0.25);
    }

    .btn-primary:hover {
      background: var(--color-primary-dark);
      transform: translateY(-2px);
      box-shadow: 0 8px 28px rgba(108, 92, 231, 0.35);
    }

    .btn-outline {
      background: transparent;
      color: var(--color-text);
      border: 2px solid var(--color-border);
    }

    .btn-outline:hover {
      border-color: var(--color-primary);
      color: var(--color-primary);
      background: rgba(108, 92, 231, 0.02);
    }

    .hero-stats {
      display: flex;
      gap: 32px;
      margin-top: 32px;
      padding-top: 28px;
      border-top: 1px solid var(--color-border);
    }

    .hero-stats .stat {
      display: flex;
      flex-direction: column;
    }

    .hero-stats .stat .number {
      font-weight: 700;
      font-size: 1.3rem;
    }

    .hero-stats .stat .label {
      font-size: 0.8rem;
      color: var(--color-text-muted);
    }

    .hero-visual {
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .hero-visual .image-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 12px;
      width: 100%;
      max-width: 420px;
    }

    .hero-visual .image-grid img {
      border-radius: var(--radius-md);
      object-fit: cover;
      width: 100%;
      height: 180px;
      box-shadow: 0 8px 32px rgba(0, 0, 0, 0.04);
      transition: var(--transition);
    }

    .hero-visual .image-grid img:hover {
      transform: scale(1.02);
    }

    .hero-visual .image-grid img:first-child {
      grid-column: 1 / 3;
      height: 200px;
    }

    /* ============================================
              CATEGORIES
              ============================================ */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }

    .category-card {
      background: var(--color-surface);
      padding: 24px 12px;
      border-radius: var(--radius-md);
      text-align: center;
      border: 1px solid var(--color-border);
      transition: var(--transition);
      cursor: pointer;
    }

    .category-card:hover {
      border-color: var(--color-primary);
      transform: translateY(-4px);
      box-shadow: 0 8px 24px var(--color-shadow-hover);
    }

    .category-card .icon {
      font-size: 1.8rem;
      color: var(--color-primary);
      margin-bottom: 8px;
      display: block;
    }

    .category-card .name {
      font-weight: 600;
      font-size: 0.85rem;
    }

    .category-card .count {
      font-size: 0.7rem;
      color: var(--color-text-muted);
    }

    /* ============================================
              PRODUCTS
              ============================================ */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }

    .product-card {
      background: var(--color-surface);
      border-radius: var(--radius-md);
      overflow: hidden;
      border: 1px solid var(--color-border);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
    }

    .product-card:hover {
      transform: translateY(-6px);
      border-color: transparent;
      box-shadow: 0 12px 40px var(--color-shadow-hover);
    }

    .product-image {
      position: relative;
      background: var(--color-bg);
      height: 200px;
      overflow: hidden;
    }

    .product-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }

    .product-card:hover .product-image img {
      transform: scale(1.04);
    }

    .product-badge {
      position: absolute;
      top: 12px;
      left: 12px;
      font-size: 0.6rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.04em;
      padding: 4px 12px;
      border-radius: var(--radius-full);
      color: white;
    }

    .product-badge.new {
      background: var(--color-success);
    }

    .product-badge.sale {
      background: var(--color-accent);
    }

    .product-wishlist {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 34px;
      height: 34px;
      border-radius: var(--radius-full);
      border: none;
      background: rgba(255, 255, 255, 0.9);
      backdrop-filter: blur(4px);
      color: var(--color-text-muted);
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 0.9rem;
    }

    .product-wishlist:hover {
      background: white;
      color: var(--color-accent);
      transform: scale(1.1);
    }

    .product-body {
      padding: 16px 18px 10px;
      flex: 1;
    }

    .product-body .category {
      font-size: 0.7rem;
      color: var(--color-text-muted);
      text-transform: uppercase;
      letter-spacing: 0.04em;
    }

    .product-body .title {
      font-weight: 600;
      font-size: 0.95rem;
      margin: 4px 0 6px;
    }

    .product-rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 0.8rem;
      color: var(--color-warning);
    }

    .product-rating span {
      color: var(--color-text-muted);
      font-size: 0.7rem;
    }

    .product-price {
      display: flex;
      align-items: center;
      gap: 10px;
      margin: 6px 0 0;
    }

    .product-price .current {
      font-weight: 700;
      font-size: 1.1rem;
    }

    .product-price .old {
      color: var(--color-text-muted);
      text-decoration: line-through;
      font-size: 0.8rem;
    }

    .product-footer {
      padding: 8px 18px 16px;
      display: flex;
      gap: 10px;
    }

    .product-footer .add-btn {
      flex: 1;
      padding: 10px;
      border-radius: var(--radius-full);
      border: none;
      background: var(--color-primary);
      color: white;
      font-weight: 600;
      font-size: 0.8rem;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }

    .product-footer .add-btn:hover {
      background: var(--color-primary-dark);
      transform: scale(1.02);
    }

    .product-footer .quick-btn {
      width: 42px;
      border-radius: var(--radius-full);
      border: 1px solid var(--color-border);
      background: transparent;
      color: var(--color-text-secondary);
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .product-footer .quick-btn:hover {
      border-color: var(--color-primary);
      color: var(--color-primary);
      background: rgba(108, 92, 231, 0.04);
    }

    /* ============================================
              DEAL BANNER
              ============================================ */
    .deal-banner {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 40px;
      background: var(--color-text);
      border-radius: var(--radius-lg);
      padding: 48px 52px;
      align-items: center;
      margin: 20px 0;
    }

    .deal-banner .deal-content {
      color: white;
    }

    .deal-banner .deal-content .label {
      display: inline-block;
      font-size: 0.7rem;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 0.06em;
      color: var(--color-warning);
      background: rgba(253, 203, 110, 0.15);
      padding: 4px 14px;
      border-radius: var(--radius-full);
    }

    .deal-banner .deal-content h3 {
      font-size: 2rem;
      font-weight: 700;
      margin: 8px 0 6px;
    }

    .deal-banner .deal-content p {
      color: rgba(255, 255, 255, 0.7);
      font-size: 0.95rem;
    }

    .deal-timer {
      display: flex;
      gap: 12px;
      margin: 18px 0 22px;
    }

    .deal-timer .time-block {
      background: rgba(255, 255, 255, 0.05);
      border: 1px solid rgba(255, 255, 255, 0.06);
      border-radius: var(--radius-sm);
      padding: 10px 16px;
      text-align: center;
      min-width: 56px;
    }

    .deal-timer .time-block .num {
      display: block;
      font-size: 1.6rem;
      font-weight: 700;
      color: white;
    }

    .deal-timer .time-block .label {
      font-size: 0.6rem;
      text-transform: uppercase;
      letter-spacing: 0.04em;
      color: rgba(255, 255, 255, 0.4);
    }

    .deal-price {
      display: flex;
      align-items: center;
      gap: 14px;
      flex-wrap: wrap;
    }

    .deal-price .price {
      font-size: 1.8rem;
      font-weight: 700;
      color: white;
    }

    .deal-price .old {
      color: rgba(255, 255, 255, 0.3);
      text-decoration: line-through;
      font-size: 1rem;
    }

    .deal-price .discount {
      background: var(--color-accent);
      color: white;
      font-weight: 700;
      padding: 2px 14px;
      border-radius: var(--radius-full);
      font-size: 0.8rem;
    }

    .deal-banner .deal-content .btn {
      margin-top: 16px;
    }

    .deal-banner .deal-image img {
      width: 100%;
      height: 260px;
      object-fit: cover;
      border-radius: var(--radius-md);
      box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
    }

    /* ============================================
              TESTIMONIALS
              ============================================ */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }

    .testimonials-scroll::-webkit-scrollbar {
      height: 4px;
    }

    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--color-primary);
      border-radius: var(--radius-full);
    }

    .testimonial-card {
      min-width: 280px;
      flex-shrink: 0;
      background: var(--color-surface);
      padding: 24px 28px;
      border-radius: var(--radius-md);
      border: 1px solid var(--color-border);
      scroll-snap-align: start;
    }

    .testimonial-card .stars {
      color: var(--color-warning);
      font-size: 0.85rem;
      margin-bottom: 8px;
    }

    .testimonial-card blockquote {
      color: var(--color-text-secondary);
      font-size: 0.95rem;
      line-height: 1.7;
    }

    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 16px;
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
      color: var(--color-text-muted);
    }

    /* ============================================
              NEWSLETTER
              ============================================ */
    .newsletter-section {
      background: linear-gradient(135deg, var(--color-primary), var(--color-primary-dark));
      border-radius: var(--radius-lg);
      padding: 56px 48px;
      text-align: center;
      color: white;
    }

    .newsletter-section h3 {
      font-size: 1.8rem;
      font-weight: 700;
    }

    .newsletter-section p {
      opacity: 0.85;
      margin: 4px 0 20px;
    }

    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 12px;
      flex-wrap: wrap;
      max-width: 480px;
      margin: 0 auto;
    }

    .newsletter-form input {
      flex: 1;
      min-width: 200px;
      padding: 14px 24px;
      border-radius: var(--radius-full);
      border: none;
      font-family: inherit;
      font-size: 0.9rem;
      outline: none;
      background: rgba(255, 255, 255, 0.15);
      color: white;
      transition: var(--transition);
    }

    .newsletter-form input::placeholder {
      color: rgba(255, 255, 255, 0.6);
    }

    .newsletter-form input:focus {
      background: rgba(255, 255, 255, 0.25);
    }

    .newsletter-form .btn {
      background: white;
      color: var(--color-primary);
    }

    .newsletter-form .btn:hover {
      transform: scale(1.02);
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
    }

    #newsletterMsg {
      margin-top: 14px;
      font-weight: 500;
      display: none;
    }

    /* ============================================
              FOOTER
              ============================================ */
    footer {
      padding: 48px 0 24px;
      border-top: 1px solid var(--color-border);
      margin-top: 20px;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 40px;
    }

    .footer-grid .brand-text {
      font-weight: 700;
      font-size: 1.2rem;
      color: var(--color-text);
    }

    .footer-grid .brand-text span {
      color: var(--color-primary);
    }

    .footer-grid p {
      color: var(--color-text-secondary);
      font-size: 0.9rem;
      max-width: 280px;
      margin: 8px 0 16px;
    }

    .footer-grid .social {
      display: flex;
      gap: 8px;
    }

    .footer-grid .social a {
      width: 38px;
      height: 38px;
      border-radius: var(--radius-full);
      background: var(--color-bg);
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--color-text-secondary);
      transition: var(--transition);
    }

    .footer-grid .social a:hover {
      background: var(--color-primary);
      color: white;
    }

    .footer-grid h4 {
      font-weight: 600;
      font-size: 0.9rem;
      margin-bottom: 12px;
    }

    .footer-grid ul {
      list-style: none;
    }

    .footer-grid ul li {
      margin-bottom: 8px;
    }

    .footer-grid ul a {
      color: var(--color-text-secondary);
      font-size: 0.85rem;
      transition: var(--transition);
    }

    .footer-grid ul a:hover {
      color: var(--color-primary);
    }

    .footer-bottom {
      text-align: center;
      padding-top: 24px;
      margin-top: 32px;
      border-top: 1px solid var(--color-border);
      color: var(--color-text-muted);
      font-size: 0.8rem;
    }

    /* ============================================
              RESPONSIVE
              ============================================ */
    @media (max-width: 1024px) {
      .products-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .categories-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .footer-grid {
        grid-template-columns: 1fr 1fr;
      }
    }

    @media (max-width: 768px) {
      .nav-links {
        display: none;
      }
      .mobile-toggle {
        display: block;
      }
      .search-wrapper input {
        width: 100px;
      }

      .hero {
        grid-template-columns: 1fr;
        padding: 20px 0 40px;
        gap: 24px;
      }
      .hero-content h1 {
        font-size: 2.2rem;
      }
      .hero-visual .image-grid {
        max-width: 100%;
      }
      .hero-visual .image-grid img {
        height: 140px;
      }
      .hero-visual .image-grid img:first-child {
        height: 160px;
      }
      .hero-stats {
        gap: 20px;
      }

      .products-grid {
        grid-template-columns: repeat(2, 1fr);
      }
      .categories-grid {
        grid-template-columns: repeat(3, 1fr);
      }

      .deal-banner {
        grid-template-columns: 1fr;
        padding: 32px 24px;
        gap: 24px;
      }
      .deal-banner .deal-content h3 {
        font-size: 1.6rem;
      }

      .newsletter-section {
        padding: 40px 24px;
      }
      .newsletter-section h3 {
        font-size: 1.4rem;
      }

      .footer-grid {
        grid-template-columns: 1fr;
        gap: 28px;
      }
      .section {
        padding: 40px 0;
      }
      .section-title {
        font-size: 1.5rem;
      }
    }

    @media (max-width: 480px) {
      .container {
        padding: 0 16px;
      }
      .header-inner {
        height: 60px;
      }
      .search-wrapper input {
        width: 70px;
      }
      .search-wrapper {
        padding: 0 2px 0 12px;
      }
      .products-grid {
        grid-template-columns: 1fr;
      }
      .categories-grid {
        grid-template-columns: repeat(2, 1fr);
      }
      .hero-content h1 {
        font-size: 1.8rem;
      }
      .hero-stats .stat .number {
        font-size: 1rem;
      }
      .deal-timer .time-block {
        min-width: 44px;
        padding: 6px 10px;
      }
      .deal-timer .time-block .num {
        font-size: 1.2rem;
      }
      .deal-price .price {
        font-size: 1.4rem;
      }
      .btn {
        padding: 12px 24px;
        font-size: 0.8rem;
      }
    }
  </style>
</head>
<body>

<!-- ===== HEADER ===== -->
<header>
  <div class="header-inner">
    <div style="display:flex;align-items:center;gap:12px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu">
        <i class="fas fa-bars"></i>
      </button>
      <a href="#" class="brand">
        <span class="brand-icon"><i class="fas fa-sparkles"></i></span>
        <span>Aura<span>.</span></span>
      </a>
    </div>

    <ul class="nav-links">
      <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
      <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
      <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
      <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
    </ul>

    <div class="header-actions">
      <div class="search-wrapper">
        <input type="text" id="searchInput" placeholder="Search..." />
        <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
      </div>
      <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
      <button class="cart-btn" id="cartBtn">
        <i class="fas fa-bag-shopping"></i>
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
        <span class="section-label"><i class="fas fa-sparkles"></i> New Collection</span>
        <h1>Elevate your <br /><span class="highlight">everyday style</span></h1>
        <p>Curated essentials for the modern lifestyle — from fashion to tech, all in one place.</p>
        <div class="hero-buttons">
          <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-arrow-right"></i> Shop Now</button>
          <button class="btn btn-outline" id="exploreBtn"><i class="fas fa-compass"></i> Explore</button>
        </div>
        <div class="hero-stats">
          <div class="stat">
            <span class="number">500+</span>
            <span class="label">Products</span>
          </div>
          <div class="stat">
            <span class="number">4.8★</span>
            <span class="label">Avg. Rating</span>
          </div>
          <div class="stat">
            <span class="number">12k</span>
            <span class="label">Customers</span>
          </div>
        </div>
      </div>
      <div class="hero-visual">
        <div class="image-grid">
          <img src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=600&q=80" alt="Style" />
          <img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=300&q=80" alt="Tech" />
          <img src="https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=300&q=80" alt="Fashion" />
        </div>
      </div>
    </section>

    <!-- ===== CATEGORIES ===== -->
    <section class="section" id="categories">
      <div class="section-header">
        <div>
          <span class="section-label"><i class="fas fa-th-large"></i> Browse</span>
          <h2 class="section-title">Shop by Category</h2>
          <p class="section-subtitle">Find what you love, curated just for you</p>
        </div>
        <a href="#" class="section-link">All Categories <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid"></div>
    </section>

    <!-- ===== PRODUCTS ===== -->
    <section class="section" id="products">
      <div class="section-header">
        <div>
          <span class="section-label"><i class="fas fa-fire"></i> Popular</span>
          <h2 class="section-title">Trending Now</h2>
          <p class="section-subtitle">Most loved items this week</p>
        </div>
        <a href="#" class="section-link">View All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </section>

    <!-- ===== DEAL BANNER ===== -->
    <section id="deals" class="deal-banner">
      <div class="deal-content">
        <span class="label"><i class="fas fa-clock"></i> Limited Time</span>
        <h3>Flash Sale</h3>
        <p>Premium picks at unbeatable prices — don't miss out</p>
        <div class="deal-timer" id="dealTimer">
          <div class="time-block"><span class="num" id="dealDays">0</span><span class="label">Days</span></div>
          <div class="time-block"><span class="num" id="dealHours">00</span><span class="label">Hours</span></div>
          <div class="time-block"><span class="num" id="dealMinutes">00</span><span class="label">Mins</span></div>
          <div class="time-block"><span class="num" id="dealSeconds">00</span><span class="label">Secs</span></div>
        </div>
        <div class="deal-price">
          <span class="price">$999</span>
          <span class="old">$1,299</span>
          <span class="discount">-23%</span>
        </div>
        <button class="btn btn-primary" id="dealBuyBtn"><i class="fas fa-bolt"></i> Grab Deal</button>
      </div>
      <div class="deal-image">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="Deal product" />
      </div>
    </section>

    <!-- ===== TESTIMONIALS ===== -->
    <section class="section">
      <div class="section-header">
        <div>
          <span class="section-label"><i class="fas fa-star"></i> Reviews</span>
          <h2 class="section-title">What Our Customers Say</h2>
          <p class="section-subtitle">Real feedback from real people</p>
        </div>
      </div>
      <div class="testimonials-scroll" id="testimonials">
        <div class="testimonial-card">
          <div class="stars">★★★★★</div>
          <blockquote>"Absolutely love the quality and fast shipping. My new go-to store!"</blockquote>
          <div class="author">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Sarah" />
            <div>
              <div class="name">Sarah Chen</div>
              <div class="role">Verified Buyer</div>
            </div>
          </div>
        </div>
        <div class="testimonial-card">
          <div class="stars">★★★★★</div>
          <blockquote>"Great selection and the checkout was seamless. Highly recommend."</blockquote>
          <div class="author">
            <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80" alt="James" />
            <div>
              <div class="name">James Park</div>
              <div class="role">Frequent Shopper</div>
            </div>
          </div>
        </div>
        <div class="testimonial-card">
          <div class="stars">★★★★☆</div>
          <blockquote>"Amazing customer service and the products exceeded my expectations."</blockquote>
          <div class="author">
            <img src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&w=80&q=80" alt="Emily" />
            <div>
              <div class="name">Emily Rodriguez</div>
              <div class="role">First-time Buyer</div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- ===== NEWSLETTER ===== -->
    <section class="newsletter-section">
      <h3><i class="fas fa-envelope" style="margin-right:8px;"></i> Stay in the Loop</h3>
      <p>Subscribe for exclusive offers and early access to new drops</p>
      <form class="newsletter-form" id="newsletterForm">
        <input type="email" id="newsletterEmail" placeholder="Enter your email" required />
        <button class="btn" type="submit">Subscribe</button>
      </form>
      <div id="newsletterMsg"></div>
    </section>

  </div>
</main>

<!-- ===== FOOTER ===== -->
<footer>
  <div class="container">
    <div class="footer-grid">
      <div>
        <div class="brand-text">Aura<span>.</span></div>
        <p>Premium e-commerce destination for the modern lifestyle.</p>
        <div class="social">
          <a href="#"><i class="fab fa-instagram"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-youtube"></i></a>
          <a href="#"><i class="fab fa-github"></i></a>
        </div>
      </div>
      <div>
        <h4>Company</h4>
        <ul>
          <li><a href="#">About</a></li>
          <li><a href="#">Careers</a></li>
          <li><a href="#">Press</a></li>
        </ul>
      </div>
      <div>
        <h4>Support</h4>
        <ul>
          <li><a href="#">Help Center</a></li>
          <li><a href="#">Returns</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </div>
      <div>
        <h4>Legal</h4>
        <ul>
          <li><a href="#">Privacy</a></li>
          <li><a href="#">Terms</a></li>
          <li><a href="#">Cookies</a></li>
        </ul>
      </div>
    </div>
    <div class="footer-bottom">
      &copy; <span id="year"></span> Aura. All rights reserved.
    </div>
  </div>
</footer>

<!-- ===== JAVASCRIPT ===== -->
<script>
  (function() {
    'use strict';

    // ============================================
    // DATA
    // ============================================
    const CATEGORIES = [
      { id: 'tech', name: 'Technology', icon: 'fa-laptop' },
      { id: 'fashion', name: 'Fashion', icon: 'fa-tshirt' },
      { id: 'beauty', name: 'Beauty', icon: 'fa-spa' },
      { id: 'home', name: 'Home & Living', icon: 'fa-couch' },
      { id: 'sports', name: 'Sports', icon: 'fa-dumbbell' },
      { id: 'books', name: 'Books', icon: 'fa-book' },
    ];

    const PRODUCTS = [
      { id: 1, title: 'Premium Wireless Headphones', price: 299, oldPrice: 399, rating: 5, reviews: 128, badge: 'sale', img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'Technology' },
      { id: 2, title: 'Minimalist Leather Backpack', price: 89, rating: 4, reviews: 64, badge: 'new', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'Fashion' },
      { id: 3, title: 'Smart Fitness Tracker', price: 149, oldPrice: 199, rating: 5, reviews: 213, badge: 'sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'Sports' },
      { id: 4, title: 'Organic Skincare Set', price: 65, rating: 4, reviews: 87, badge: 'new', img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'Beauty' },
      { id: 5, title: 'Premium Notebook Set', price: 34, rating: 4, reviews: 42, img: 'https://images.unsplash.com/photo-1531346878377-a5be20888e57?auto=format&fit=crop&w=400&q=80', category: 'Books' },
      { id: 6, title: 'Modern Desk Lamp', price: 79, oldPrice: 99, rating: 5, reviews: 56, badge: 'sale', img: 'https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=400&q=80', category: 'Home & Living' },
      { id: 7, title: 'Classic Leather Sneakers', price: 120, rating: 5, reviews: 178, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'Fashion' },
      { id: 8, title: 'Wireless Charging Pad', price: 45, rating: 4, reviews: 93, img: 'https://images.unsplash.com/photo-1586816879360-004f5b0c51e3?auto=format&fit=crop&w=400&q=80', category: 'Technology' },
    ];

    // ============================================
    // DOM REFS
    // ============================================
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    const newsletterForm = document.getElementById('newsletterForm');
    const newsletterEmail = document.getElementById('newsletterEmail');
    const newsletterMsg = document.getElementById('newsletterMsg');

    let cartCount = 0;

    // ============================================
    // RENDER FUNCTIONS
    // ============================================
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const card = document.createElement('div');
        card.className = 'category-card';
        card.innerHTML = `
          <span class="icon"><i class="fas ${cat.icon}"></i></span>
          <div class="name">${cat.name}</div>
          <div class="count">${Math.floor(Math.random() * 30 + 10)} items</div>
        `;
        card.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(card);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      if (list.length === 0) {
        productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;color:var(--color-text-muted);padding:40px 0;">No products found</p>`;
        return;
      }
      list.forEach(p => {
        const card = document.createElement('div');
        card.className = 'product-card';

        const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
        const badgeHtml = p.badge ? `<span class="product-badge ${p.badge}">${p.badge === 'sale' ? 'Sale' : 'New'}</span>` : '';

        card.innerHTML = `
          <div class="product-image">
            <img src="${p.img}" alt="${p.title}" loading="lazy" />
            ${badgeHtml}
            <button class="product-wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          </div>
          <div class="product-body">
            <div class="category">${p.category}</div>
            <div class="title">${p.title}</div>
            <div class="product-rating">
              <span>${stars}</span>
              <span>(${p.reviews})</span>
            </div>
            <div class="product-price">
              <span class="current">$${p.price}</span>
              ${p.oldPrice ? `<span class="old">$${p.oldPrice}</span>` : ''}
            </div>
          </div>
          <div class="product-footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-plus"></i> Add</button>
            <button class="quick-btn" aria-label="Quick view"><i class="fas fa-eye"></i></button>
          </div>
        `;
        productsGrid.appendChild(card);
      });

      // Add to cart listeners
      document.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', function() {
          const id = parseInt(this.dataset.id);
          addToCart(id);
        });
      });
    }

    function filterProducts(query) {
      const q = (query || '').trim().toLowerCase();
      if (!q) {
        renderProducts(PRODUCTS);
        return;
      }
      const filtered = PRODUCTS.filter(p =>
        p.title.toLowerCase().includes(q) ||
        p.category.toLowerCase().includes(q)
      );
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
        btn.style.background = 'var(--color-success)';
        btn.disabled = true;
        setTimeout(() => {
          btn.innerHTML = orig;
          btn.style.background = '';
          btn.disabled = false;
        }, 1200);
      }
    }

    // ============================================
    // EVENT LISTENERS
    // ============================================

    // Search
    searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => {
      if (e.key === 'Enter') filterProducts(e.target.value);
    });

    // Mobile menu
    mobileToggle.addEventListener('click', () => {
      mobileMenu.style.display = mobileMenu.style.display === 'block' ? 'none' : 'block';
    });

    // Newsletter
    newsletterForm.addEventListener('submit', (e) => {
      e.preventDefault();
      const email = newsletterEmail.value.trim();
      if (!email || !email.includes('@')) {
        newsletterMsg.style.display = 'block';
        newsletterMsg.textContent = 'Please enter a valid email address.';
        newsletterMsg.style.color = '#fd79a8';
        return;
      }
      newsletterMsg.style.display = 'block';
      newsletterMsg.textContent = '✅ Thank you for subscribing!';
      newsletterMsg.style.color = '#00b894';
      newsletterEmail.value = '';
      setTimeout(() => {
        newsletterMsg.style.display = 'none';
      }, 3000);
    });

    // Deal timer
    (function setupDealTimer() {
      const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);
      const daysEl = document.getElementById('dealDays');
      const hoursEl = document.getElementById('dealHours');
      const minsEl = document.getElementById('dealMinutes');
      const secsEl = document.getElementById('dealSeconds');

      function tick() {
        const diff = target - new Date();
        if (diff <= 0) return;
        daysEl.textContent = Math.floor(diff / (24 * 3600 * 1000));
        hoursEl.textContent = String(Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000))).padStart(2, '0');
        minsEl.textContent = String(Math.floor((diff % (3600 * 1000)) / (60 * 1000))).padStart(2, '0');
        secsEl.textContent = String(Math.floor((diff % (60 * 1000)) / 1000)).padStart(2, '0');
      }
      tick();
      setInterval(tick, 1000);
    })();

    // Hero buttons
    document.getElementById('shopNowBtn').addEventListener('click', () => {
      document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('exploreBtn').addEventListener('click', () => {
      document.getElementById('categories').scrollIntoView({ behavior: 'smooth' });
    });

    // Deal buy button
    document.getElementById('dealBuyBtn').addEventListener('click', () => {
      cartCount++;
      cartCountEl.textContent = cartCount;
      alert('✨ Deal added to your cart!');
    });

    // Cart button feedback
    document.getElementById('cartBtn').addEventListener('click', (e) => {
      e.preventDefault();
      alert(`🛒 You have ${cartCount} item${cartCount !== 1 ? 's' : ''} in your cart.`);
    });

    // ============================================
    // INIT
    // ============================================
    renderCategories();
    renderProducts(PRODUCTS);
    document.getElementById('year').textContent = new Date().getFullYear();

    // Close mobile menu on link click
    document.querySelectorAll('#mobileMenu a').forEach(link => {
      link.addEventListener('click', () => {
        mobileMenu.style.display = 'none';
      });
    });

  })();
</script>

</body>
</html>
