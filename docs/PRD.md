# PRD: Reliable checkout in the Zalando app

## 1. Problem
Since 2025, app performance is the most common negative review theme (95 of 481 negative reviews),
together with design. Many reviews describe checkout errors ("an error occurred, try again later"),
especially for sought-after items like limited shoes, where customers lose the item while retrying.
In comparable e-commerce data (GA4 sample), about 55% of users who start checkout don't complete it,
on every device. Checkout is the moment a customer has already decided to buy, so every failure here
is lost revenue and lost trust.

## 2. Target users
App users who start checkout, especially for high-demand or limited items.

## 3. Goal
More customers complete checkout without errors, and fewer leave frustrated.

## 4. User stories
- As a shopper, when something goes wrong at checkout, I want a clear message telling me why and what
  to do next, so that I don't give up.
- As a shopper buying a limited item, I want it held for me for a few minutes while I pay, so that I
  don't lose it during an error.
- As a shopper whose payment method fails, I want to switch to another method without losing my cart.
- As the product team, we want to see where and why checkouts fail, so that we can fix the biggest causes.

## 5. Scope
In:
- Clear error messages with the reason and a next step (retry, other payment method, contact support)
- Cart and checkout details saved if the app fails or is closed
- Short item hold (e.g. 10 minutes) during checkout for limited items
- Error tracking per checkout step for the team

Out (for now):
- Checkout redesign
- New payment methods
- Invoice status page (planned separately as a quick win)

## 6. Success metrics
- Main: checkout completion rate in the app (started checkout → purchase)
- Supporting: share of negative reviews about app performance; support contacts about checkout errors
- Guardrails: app crash rate, checkout loading time, payment fraud rate must not get worse

## 7. A/B test plan
- Control: current checkout. Variant: checkout with the improvements above.
- Who: app users who start checkout, split 50/50 at random.
- Baseline: 45.5% checkout completion (GA4 sample, used as an assumption).
- Target: +3 percentage points (45.5% → 48.5%).
- Sample size: about 4,300 users per group (alpha 0.05, power 0.8).
- Duration: at least 2 full weeks to cover weekday and weekend behaviour.
- Note: pure stability fixes (fewer crashes) can't always be A/B tested; those roll out gradually
  behind a feature flag while the crash rate is monitored.

## 8. Risks and open questions
- Holding limited items for some users makes them unavailable for others for a few minutes.
- Some errors come from payment providers, which Zalando can't fully control.
- Error messages must not reveal security details.
- Open question: many complaints are about blocked accounts (43 since 2025). Are some checkout
  failures caused by account blocks?

## 9. Rollout
Start with Android users in Germany (the source of the review data). If the test succeeds,
roll out to iOS and other markets.