# Notes to add to the README

## Data
- 3,000 newest German Google Play reviews of the Zalando app (April 2023 – October 2026).
- User names removed for GDPR reasons; only review text, rating, agree-votes, app version and date kept.

## Tagging method
- Each review classified with Claude in chat using a fixed list of themes (no keyword rules).
- product_ratings added after a first look at the data.
- app_design_ux and product_content added after reviewing parts 1–4.
- Re-check: 97 of 189 app_performance reviews were really design complaints and were moved.
- All tagging rules documented in docs/tagging_decisions.md.
- A first keyword-based test put many product-ratings complaints in the wrong theme, which is why AI tagging was used.

## Exclusions
- 7 political or boycott reviews not about the shop were excluded (exclude = yes).
- Offensive reviews are counted but never quoted.

## Limitations
- 2026 Q4 excluded from trend charts because it was incomplete (47 reviews); other quarters have 111–404.
- Review volume fell from about 400 per quarter (2023) to about 140 (2025–2026); this doesn't necessarily mean fewer users.
- Timing patterns show events that happened at the same time, not proven cause and effect.
- Funnel data comes from Google's public GA4 e-commerce sample, used as a proxy; it is not Zalando data.
- RICE scores use estimated numbers; assumptions are stated.
- The Figma prototype is a concept and not affiliated with Zalando.

## Repo hygiene
- No API keys or personal data in the repo.
- environment.yml included so others can recreate the setup.

## Feature request
- Feature requests were counted once each, by their first or main ask.

## funnel

- Users who switched devices may be counted once per device in the device funnel.
- “The last cohorts in the retention heatmap are incomplete because the data ends on 31 January 2021.”
- “GA4 sample data is from a small merchandise shop during the holiday season, so retention is not comparable to Zalando.”
