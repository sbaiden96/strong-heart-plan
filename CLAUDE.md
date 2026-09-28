# Strong Heart Plan: project context for Claude

A personal health, fitness and meal-plan project. The user built a tracking web app
("Strong Heart Plan") with Claude, published as a claude.ai artifact and saved to their
phone's home screen. This file records who it's for and how Claude should help.

## About the user
- Starting weight: 128 kg (September 2026). Stores fat mainly in buttocks, hips, thighs
  and love handles. Some muscle from past training; about 4 months out of the gym at the start.
- LDL cholesterol: 10.0 mmol/L. Father, brother and sister all have high cholesterol, so
  familial hypercholesterolaemia (FH) is likely. Following up with his doctor on diagnosis
  and medication (e.g. statins). Food and exercise support treatment; they don't replace it.
- Trains with the Freeletics app: lifting 3–4 times a week, 8,000 steps on rest days.

## Goals
- Lose fat steadily (about 0.5–1 kg a week) while building muscle.
- Lower cholesterol and protect his heart long term.
- Follow a simple, consistent meal plan he can keep for life, using Ghanaian foods.

## Daily meal plan (about 2,200–2,400 kcal, 150–170 g protein)
- **Breakfast:** 60 g oats or tom brown (water or low-fat milk), 1 whole egg + 3 egg whites,
  banana or orange.
- **Lunch:** 200 g skinless chicken or grilled fish, 1 cup beans or red red with little oil,
  half a plate of vegetables.
- **Snack:** 1 fruit + a small handful of groundnuts (plus a banana before training on gym days).
- **Dinner:** 200 g grilled fish or skinless chicken; carbs (banku, kenkey, yam, plantain or
  rice) a full fist on gym days, half a fist on rest days; vegetables or a light stew.
- **Protein rotation:** fish 3 days, chicken 3 days, beans or soya chunks 1 day.
- **Drinks:** water only, plus black coffee or tea.

## Rules
- Nothing fried. Very little palm oil, palm nut soup, coconut oil or shito.
- No sugary drinks, malt drinks or juice. Whole fruit is fine.
- No processed meats, fatty meat, chicken skin, wele, pastries or margarine.
- Beans or oats every day, for soluble fibre.
- 1–2 whole eggs a day at most.
- Follow the plan about 90% of the time. Weigh in weekly; reduce carb portions slightly if
  weight stalls for 3 weeks.

## The tracking app
Source: `app/index.html` (see `app/README.md` for data, capabilities and publishing). Seven tabs:
- **Today:** meal checklist with daily meal ideas and 1–5 star ratings for lunch and dinner,
  gym-day/rest-day switch that adjusts portions, daily rules, medication ticks, steps, water,
  daily score, streak, and a heads-up before usually-weak weekdays.
- **Plan:** daily template, weekly protein rotation and rules for life.
- **Market:** weekly shopping list with amounts and prices (GH₵), a meal builder that plans
  lunch and dinner from what was bought (rotation, ratings and skipped meals), and next-week picks.
- **Workouts:** Freeletics journey card, screenshot scanning (Claude vision, or on-phone OCR
  then Claude), manual logging, weekly minutes, strength progress per exercise, history.
- **Heart:** full lipid panels and LDL chart with the doctor's target, medication list with
  adherence, side-effect notes, questions for the doctor, and a doctor summary to show or save.
- **Avoid:** eating-out guide (chop bar, parties, restaurants, street food, drinks) and a
  searchable food guide.
- **Progress:** weekly check-in (applies the 3-week stall rule by trimming dinner carbs),
  Claude-powered Insights over the last 8 weeks, weight chart with milestone date,
  measurements, 12-week calendar, history, backup/restore.

Data is saved privately to the user's Claude account (artifact storage).
The artifact viewer blocks `alert()`/`confirm()`, so the app uses in-page messages instead.

## How Claude should help
- Keep advice practical and based on Ghanaian foods available locally.
- Keep cholesterol in mind in every food suggestion.
- When improving or fixing the app: keep the same design, update the existing artifact in
  place (same URL), and never break or discard saved data. Keep storage keys and data shapes
  backward compatible, or migrate them.
- Be honest and encouraging, and remind him to follow his doctor's advice about cholesterol.
