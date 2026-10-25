# Checkout concept – shopping app prototype

Interactive iPhone-style shopping app based on my analysis of 3,000 Zalando app reviews.
Independent portfolio project, not affiliated with Zalando. Shop, brands and customer details are invented.

## How to use
Open `index.html` in any browser. Everything is in one file (photos embedded), no installation needed.

1. Choose a **version**: "New checkout" (the PRD solution) or "Today" (generic error message).
2. Choose a **scenario**: payment works, card declined, error on our side, or reservation runs out.
3. Shop in the phone: browse, search, save to wishlist, pick a size, add to bag, check out.

The panel shows session metrics (checkouts started, purchases, completion rate) and the
events a product team would track along the journey.

## Shopping features
- Home with search, department switch, filter chips, promo banner and product grid (8 products)
- Quick add to bag from the grid, with a size sheet
- Wishlist with hearts and badge count
- Product page with Add to bag and Buy now right below the price (a sticky bar appears when you scroll), colour variants, size sheet with stock per size, delivery and returns info
- Bag with quantity stepper, summary and badge count
- Floating glass tab bar, glass buttons with press feedback, iOS-style transitions, dark mode

## Checkout features (from the PRD)
- Items reserved during checkout with a live countdown
- Clear error messages with a reason and next steps
- Apple Pay, PayPal and invoice offered after a declined card
- Reference code and support option for errors on our side
- Expired reservation handling
- "Today" version: generic error, and limited items sell out meanwhile

Prototype created with AI assistance based on my PRD.
