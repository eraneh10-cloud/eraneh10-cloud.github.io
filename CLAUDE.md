# CLAUDE.md — בלוג Illuminism | אילומיניזם

*קובץ זיכרון לקלוד קוד. נקרא בתחילת כל שיחה. מתעדכן אחרי כל שינוי משמעותי בתשתית.*

---

## ⚠️ צעד אפס — לאמת באיזו תיקייה אתה עובד
הריפו האמיתי של Hugo חייב להיות בתיקייה שבה אתה עובד. לפי התיעוד הקיים הוא היה ב-`C:\dev\illuminist-blog`, אבל הוקצתה גם `C:\dev\blog`.
**לפני כל פעולה:** ודא שאתה בתיקייה שמכילה `hugo.yaml` + `content/` + `layouts/` + `.git`. אם התיקייה ריקה מאלה — אתה בתיקייה הלא נכונה. עצור ושאל את ערן לאן הריפו, או שכפל אותו לכאן:
```
git clone https://github.com/eraneh10-cloud/eraneh10-cloud.github.io.git .
```
אל תתחיל ליצור קבצים בתיקייה ריקה.

---

## מה זה
- **אתר:** https://eraneh10-cloud.github.io/
- **שם:** Illuminism | אילומיניזם — ערן אבן־חיים | פילוסופיה · מתמטיקה ומדע · תודעה
- **תוכן:** פילוסופיה רציונלית-אידיאליסטית בעברית; "מתמטיקה אונטולוגית". הבלוג הוא שכבת העומק הכתובה במערכת רב-פלטפורמית (יוטיוב = עוגן, אינסטגרם = גילוי, פייסבוק/בלוג = עומק).

## תשתית טכנית
- **פלטפורמה:** Hugo + תבנית **PaperMod**.
- **אירוח:** GitHub Pages. דיפלוי אוטומטי דרך GitHub Actions עם כל `git push` (~2 דק׳).
- **ריפו:** https://github.com/eraneh10-cloud/eraneh10-cloud.github.io
- **כיוון:** RTL תמיד.

## מערכת העיצוב — נעולה, לא לשנות בלי אישור ערן
- **ברירת מחדל:** Dark mode (אינדיגו כהה). מתג auto לפי העדפת המשתמש.
- **פלטה:**
  - רקע כהה: `#241A3A`
  - טקסט: `#EDE6D6`
  - הדגשות/קישורים: `#D4AF37` (זהב)
  - רקע בהיר: `#F5F2EC`
- **טיפוגרפיה:** Frank Ruhl Libre (כותרות), Heebo (גוף). נטענים מ-Google Fonts.
- **אסתטיקה:** שטוח, מינימלי, שוליים נדיבים, היררכיה טיפוגרפית חזקה, הרבה שטח ריק.
- **תנועה:** מאופקת — fade + עלייה קלה, easing רך. בלי קפיצות.
- **אסור:** מיסטיקה/ניו־אייג', עין, פירמידה, זוהר-יתר, גרדיאנטים צעקניים. הקור הגאומטרי הוא המותג.

## איפה דברים נמצאים (override paths)
- `hugo.yaml` — הגדרות ראשיות
- `assets/css/extended/custom.css` — צבעים ופונטים (override של PaperMod)
- `layouts/baseof.html` — תמיכת RTL
- `layouts/_partials/header.html` — לוגו + כיתוב
- `layouts/_partials/extend_head.html` — Google Fonts
- `layouts/_partials/templates/opengraph.html`, `layouts/rss.xml`
- *הערה:* תיקיית `_partials` (עם קו תחתון) היא קונבנציית Hugo החדשה. ודא מול גרסת Hugo בפועל לפני override.

## נוהל עבודה
1. עריכות עיצוב/תבנית → לערוך את הקבצים ב-`assets/css/extended/` וב-`layouts/`.
2. תמיד לבדוק מקומית לפני push: `hugo server -D` → http://localhost:1313
3. רק כשערן מאשר שזה תקין: `git add . && git commit -m "..." && git push`
4. אחרי push — לעדכן את "יומן העדכונים" בתחתית הקובץ הזה.

### פוסט חדש
```
hugo new posts/NNN-slug.md
```
Front matter סטנדרטי:
```yaml
---
title: "כותרת"
date: 2026-06-15
draft: false
tags: ["ליבה", "חושים"]
summary: "שורת פתיחה קצרה"
fbpost: "https://facebook.com/.../posts/..."   # אופציונלי, אם יש דיון מקביל
---
```

## כללי RTL (חשוב)
- `dir="rtl"` ברמת ה-`<html>`/`<body>`.
- בפריסת grid/flex: "ימין" הוא צד ההתחלה. סרגל ניווט → צד ימין.
- accent borders: השתמש ב-`border-inline-start` ולא ב-`border-left` כדי שיתהפך נכון ב-RTL.
- בדוק שמספרים, קוד וכתובות לטיניות לא "נשברים" בתוך טקסט עברי (עטוף ב-`<bdi>`/`<span dir="ltr">` במידת הצורך).
- **סגנון — מקפים:** בטקסט עברי: מקף קצר (–) בלבד, לא מקף ארוך ולא מקף כפול.

## מה לבנות / מה לא (מיושר לרודמאפ של ערן)
**מותר ורצוי עכשיו:** מסטהד גדול, אינדקס קריאה מסודר, ניווט קודם/הבא ברצף, חיפוש (PaperMod מובנה), זמן קריאה, תוכן עניינים, תמונת שער לפוסט, פוסט נעוץ, עמוד "התחילו כאן", עמוד "אודות", קישורי "ערוך ב-GitHub" לאדמין.
**לא לבנות עכשיו (נדחה במכוון):** ניוזלטר, מערכת תגובות (הדיון נשאר בפייסבוק), אנליטיקס, דומיין מותאם, דפי מושגים — עד שיהיו ~10 פוסטים. Decap CMS — רק כשערן מבקש.

## "מצב אדמין" וקישורי עריכה
- כל פוסט מקבל קישור "✏️ ערוך" אל עורך GitHub:
  `https://github.com/eraneh10-cloud/eraneh10-cloud.github.io/edit/main/{.File.Path}`
- הקישור מוצג רק כש-`localStorage.illAdmin === '1'`. כניסה אחת ל-`?admin=1` מדליקה; `?admin=0` מכבה.
- זו לא אבטחה (העריכה ממילא דורשת הרשאת כתיבה לריפו) — רק ניקיון: קוראים לא רואים את הכפתור.

---

## יומן עדכונים
- 2026-06-13 — נוצר הקובץ. תשתית קיימת: Hugo+PaperMod+GitHub Pages, פלטה נעולה. ממתין לשדרוג: מסטהד, פריסה רב-עמודתית, קישורי עריכה, פוסט הקדמה נעוץ.
- 2026-06-13 — **שדרוג פריסה בוצע.** נבנה `layouts/index.html`: מסטהד ממורכז (זהב, ריחוף→לבן, placeholder לתמונת שער) + grid שלוש עמודות (ניווט מימין לפי `weight` עם מספור, פוסטים אמצע, ווידג'טים משמאל: אודות/ציטוט/סרטונים). רספונסיבי: <768px עמודה אחת + כפתור ☰ למגירת ניווט, ווידג'טים יורדים מתחת. תוקן חניקת הרוחב של PaperMod דרך `.main:has(.ill-home){max-width:none}`.
- 2026-06-13 — **עריכה עצמית כלל-אתרית.** כל הטקסטים (מסטהד, תת-כותרת, שם המחבר, ציטוט, אודות-סרגל, ערוצי וידאו) הועברו ל-`params` ב-`hugo.yaml` — נקודת עריכה אחת. נוסף סרגל אדמין בפוטר (אדמין בלבד): "✏️ הגדרות אתר" → `hugo.yaml`, "🎨 עיצוב (CSS) · מתקדם" → `custom.css`.
- 2026-06-13 — **קישורי עריכה + דיון פייסבוק.** "✏️ ערוך" על כל פוסט (בית + עמוד פוסט) אל עורך GitHub, נתיב `edit/main/content/{{ .File.Path }}` (תוקנה קידומת `content/`). מצב אדמין דרך `localStorage.illAdmin` (`?admin=1/0`). כפתור "💬 הצטרפו לדיון בפייסבוק" בתחתית פוסט — רק כשמוגדר `fbpost` ב-front matter.
- 2026-06-13 — **עיצוב טקסט.** `markup.goldmark.renderer.unsafe: true` להפעלת `<u>קו תחתון</u>`. תועד ב-`FORMATTING.md`. נמחק קובץ כפול תלוש `000-welcome.md` משורש הריפו.
- 2026-06-13 — **הועלה לאוויר** (commit `3ddd6a1` → main). כל השדרוגים לעיל נדחפו ל-GitHub; Actions בונה ומפרסם אוטומטית. אומת בדפדפן (Chrome headless דרך CDP) ב-1280px ו-375px לפני ה-push.
- 2026-06-13 — **ניווט קודם/הבא ברצף לפי `weight`.** נוצר override `layouts/_partials/post_nav_links.html` (לא `partials/` — קונבנציית `_partials` של Hugo 0.163) המחליף את ה-prev/next מבוסס-התאריך של PaperMod: ממיין את `posts` לפי `weight asc` ומציג את השכן הקודם/הבא ברצף הקריאה. מופעל דרך `ShowPostNavLinks: true` (כבר ב-hugo.yaml). עיצוב נוסף ל-`custom.css` תחת `.post-seq-nav`. **תיקון RTL:** ה-CSS המקורי רינדר "הבא" מימין; נוסף `flex-direction:row-reverse` + החלפת `text-align` כך ש"הבא ←" משמאל ו"→ הקודם" מימין, בהתאם לחצים. אומת ב-Chrome headless (1280/375) עם פוסטי-בדיקה זמניים שנמחקו: אמצעי=שני קישורים, ראשון=ללא קודם, אחרון=ללא הבא, מובייל=נערם אנכית מימין.
- 2026-06-13 — **פוסט 002 "אשליית החושים".** הומר מ-`posts/002/002.docx` ל-page bundle `content/posts/002-illusion-of-senses/` (התקנת pandoc דרך winget; `--extract-media`). שלוש תמונות (`image1/2/3.jpeg`) בערימה אנכית במיקומים לפי הטקסט, שני פוטנוטים (Goldmark), `weight: 2`. נוקו ארטיפקטים של pandoc (`{dir="rtl"}`, line-break `\`, מרכאות escaped) והושמט הקטע "ירד בעריכה" שמתחת ל-`----`. אומת ב-Chrome headless (1280/375): H1 בודד, תמונות, פוטנוטים, וניווט רצף 000↔002.
- 2026-06-16 — **דומיין + קאבר + פרומפטר ציטוטים** (commit `62b3eac` → main, אחרי rebase על `f3d1dfd`). `baseURL` שונה ל-`https://illuminism.net/` (⚠️ עדיין דורש `CNAME` + DNS ב-GitHub Pages כדי לעבוד בכתובת החדשה). תמונת שער: `static/images/cover.png` (עותק של `COVER-FINAL.PNG.png`, 1672×941) — ה-placeholder `.ill-masthead-cover` קיבל `background: url('/images/cover.png') center/cover`, ונוסף `params.images` ל-OG. תיבת הציטוט בסרגל הפכה ל**פרומפטר**: `sidebarQuotes` ב-`hugo.yaml` (15 ציטוטים + עוגן Sapere aude=16), רינדור כפול במסלול `.ill-quote-track` עם אנימציית `ill-prompter` (גלילה אנכית 75s, עצירה בריחוף, fallback ל-`prefers-reduced-motion`). הסט השני `aria-hidden`. סרגל: "סרטונים"→"רשתות חברתיות", יוטיוב/אינסטגרם תויגו "(בקרוב)". מקפים ארוכים בגוף הציטוטים הומרו ל-מקף קצר. אומת ב-`hugo --gc` (32 בלוקקווט). **לא נדחפו:** קובצי `posts/*.docx`, תמונות עבודה ב-`static/` (`COVER-FINAL.PNG.png`, `cover-a/b`, `logo.png.png`), `blog-infrastructure-v2.md`, וקובץ נעילה זמני `~$אודות.docx` — נשארו untracked בכוונה.
- 2026-06-16 — **כוונון קאבר (שני סבבים).** התמונה נחתכה ב-`cover` בגובה 120px. סבב א׳ (commit `9dddd08`): `aspect-ratio:16/9` + `max-height:400px` + `background-size:contain` על רקע כהה `#241A3A` — כל התמונה גלויה. סבב ב׳ (commit `50e47db`, לבקשת ערן): חזרה ל-`cover` עם `height:320px` ו-`background-position:center 30%` כדי לשמור על הלוגו הגאומטרי גלוי בלי כיתוב. זו הגרסה הנוכחית.
- 2026-06-17 — **שחזור הקאבר למצב המקורי (לבקשת ערן).** כל ניסיונות הקאבר של היום (מלא-רוחב / contain / cover 420) בוטלו. `assets/css/extended/custom.css` ו-`layouts/index.html` שוחזרו בדיוק ל-`db2837d` (הגרסה לפני היום) דרך `git checkout` — חזר ה-`.ill-masthead-cover` המקורי (div בתוך `.ill-masthead`, `height:320px`, `center 30%/cover`, ממורכז ב-1280px). **ה-Multilingual נשאר ללא שינוי** (אין הגדרות קאבר ב-hugo.yaml; כל השינויים שם היו רב-לשוניים). אומת ב-`hugo server`: `/`=rtl עם הקאבר המקורי, `/en/`=ltr עם הדיסקליימר. הרשומות למטה (720a083/8ea6093) הן הניסיונות שבוטלו — נשמרות לתיעוד.
- 2026-06-17 — **קאבר חזרה לפריסה מלאת-רוחב** (commit `720a083`). ה-`contain` השאיר שוליים כהים בצדדים; הוחזר ל-`background-size: cover` במיקום `center 35%`, גובה קבוע `420px` — התמונה ממלאת מקצה לקצה ללא שוליים. (טרייד-אוף ידוע: `cover` חותך אנכית, ועל מסכים רחבים מאוד / מובייל ייתכן חיתוך של חלק מהכיתוב; זו ההעדפה המפורשת של ערן — מלא-רוחב על פני כיתוב מלא.)
- 2026-06-17 — **תיקון חיתוך קאבר** (commit `8ea6093`). הכיתוב התחתון "ILLUMINISM · RATIONAL PHILOSOPHY" נחתך כי `.ill-cover-banner` היה `background-size: cover`. הוחלף ל-`contain` (center) על רקע כהה תואם `#241A3A` — כל התמונה גלויה (לוגו + כיתוב), והצדדים נטמעים. גובה הוקטן ל-`clamp(320px, 30vw, 420px)`. (הערה: 30%/320px עם `cover` היו מחמירים את החיתוך; `contain` הוא המימוש הנכון ל"להציג את כל התמונה".)
- 2026-06-17 — **קאבר מלא-רוחב + Hugo Multilingual (עב+אנג').** גיבוי לפני השינוי בסעיף "גיבוי" למטה.
  **(1) קאבר מלא-רוחב:** `layouts/index.html` — תמונת השער הוצאה מתוך `.ill-masthead` (שמוגבל ל-1280px) ל-`<section class="ill-cover-banner">` נפרד בראש העמוד; הכותרת/תת-כותרת נשארו במסטהד מתחתיו. ב-`custom.css` הוחלף `.ill-masthead-cover` ב-`.ill-cover-banner` בטכניקת full-bleed: `width:100vw; margin-inline:calc(50% - 50vw)` (סימטרי → בטוח ל-RTL), גובה `clamp(320px,38vw,480px)`, רקע `#241A3A url('/images/cover.png') center 30%/cover`. אומת: `dir="rtl"` נשמר, הבאנר נמתח לכל הרוחב.
  **(2) Multilingual:** `hugo.yaml` — הוסר `locale`; נוסף `defaultContentLanguage: he` + `defaultContentLanguageInSubdir: false`; בלוק `languages` הורחב ל-`he` (weight 1, `languagedirection: rtl`, `contentDir: content`, `title: "אילומיניזם"`) ו-`en` (weight 2, `languagedirection: ltr`, `contentDir: content/en`, `title: "Illuminism"`), כל אחד עם `params.description` משלו. נוסף `params.displayFullLangName: true` כדי שמתג השפה יציג "עברית"/"English". מתג השפה מרונדר אוטומטית ב-`_partials/header.html` הקיים (PaperMod, מופעל כש-`hugo.IsMultilingual`). הדיסקליימר: `layouts/_partials/disclaimer.html` חדש (מותנה `eq .Lang "en"`), נכלל ב-`layouts/baseof.html` בראש `<main>` — מופיע רק בדפי `/en/`. **הערה:** לא נוצר `layouts/en/partials/` (Hugo לא מאתר partials לפי תיקיית שפה — רק לפי סיומת שם קובץ); ופונקציית `lang.FormatAccordingTo` שבמפרט המקורי אינה ממירה כתובות, לכן הקישור "Read in Hebrew" מומש דרך `.AllTranslations` עם נפילה ל-`/`. אומת ב-`hugo --gc` (HE 22 / EN 8 דפים, ללא שגיאות) וב-`hugo server`: `/`=rtl, `/en/`=ltr, דיסקליימר רק ב-EN, אין כפילות `/en/` בצד העברי (specificity של `contentDir`).
  **הוספת פוסט אנגלי עתידי:** צור `content/en/posts/NNN-slug.md` עם front matter רגיל (`title`, `date`, `weight`, וכו'). הוא יופיע אוטומטית תחת `/en/posts/...` עם הדיסקליימר. לקישור תרגום הדדי, הוסף `translationKey: "xxx"` זהה בפוסט העברי המקביל וב-`.en` — אז "Read in Hebrew" יקשר ישירות לגרסה העברית.
  **שחזור:** ראה "## גיבוי" למטה (גיבויים `*.bak-20260617` + פקודות git).
- 2026-06-16 — **404 + CTA + תפריט תגיות + OG + מייל** (commits `fdd5c57`, `4540981`). (1) `layouts/404.html` חדש (override של `block "main"` ב-baseof): "הדף הזה לא קיים – אבל השאלות כן. חזרה ל**דף הבית**" (קישור ל-`/`), עיצוב `.ill-404` ב-custom.css. (2) כפתור CTA בעמוד הבית בין המסטהד לרשימת הפוסטים: "→ התחל לקרוא לפי הסדר" → `/posts/000-welcome/`, עיצוב `.ill-cta` (רקע זהב, hover סגול). (3) `menu.main` (top-level ב-hugo.yaml): "תגיות" → `/tags/`, weight 30 — מרונדר ב-`_partials/header.html` הקיים. (4) `params.description` (OG) + `languages.he.languageName: "עברית"`. (5) פוטר: `params.footer.text` עם `יצירת קשר: illuminism10@gmail.com` כקישור mailto (התבנית מרנדרת אותו אוטומטית — אין override לפוטר). (6) בלוק `services.googleAnalytics` מוכן **כהערה** ב-hugo.yaml — ממתין ל-`G-` ID שערן יפתח ב-analytics.google.com. הכל אומת ב-`hugo` build נקי. **תלוי פתוח:** הדומיין `illuminism.net` עדיין דורש `CNAME`+DNS; דף האודות (`content/about.md`) ממתין לטקסט מערן.
- 2026-06-19 — **ייבוא תוכן אנגלי (5 פוסטים + אודות) + עברית 003–005 + תרגום סרגל.** הומרו 8 קובצי Word (`posts/ENGLISH/001–005`, `posts/003–005`) ל-Markdown דרך pandoc (פורמט `gfm` + סקריפט ניקוי perl: הסרת `<span dir>`, hard-breaks, נרמול מקפים ל-`–`, המרת `<sup>`→`[^1]`). **פיצול 001:** נחתך ב-`======` — לפניו → `content/en/about.md` (About+Discussion+Disclaimer); אחריו → `content/en/posts/000-welcome.md` (Introduction). **פוסטים חדשים:** EN `002-illusion-of-senses` (bundle, 3 תמונות הועתקו מהבאנדל העברי), EN+HE `003-two-ways-to-truth` / `004-mathematics-discovered` / `005-where-laws-exist` (slugs זהים → Hugo מזווג תרגומים אוטומטית; אומת דו-כיוונית). הערות שוליים Goldmark, הקטע "Removed in editing" הושמט מ-002. **תרגום ווידג'טי הסרגל:** נוסף בלוק `languages.en.params` ב-hugo.yaml (sidebarAbout, sidebarQuote, 15 sidebarQuotes, channelsTitle, channels, navTitle) — override של ה-params הגלובליים העבריים; ב-`/en/` הסרגל אנגלי מלא, ב-`/` נשאר עברי. **תיקון טעות:** "פופוליים"→"פופולריים" (ציטוט גתה). אומת ב-`hugo --gc` (HE 69 / EN 38, ללא שגיאות) + `hugo server`: RTL/LTR, דיסקליימר AI ב-EN בלבד, תמונות והערות שוליים מרונדרות. **גיבוי:** ענף `backup/before-english-import-20260619`. **דורש אימות-מקור (משימת המשך):** חלק מתרגומי הציטוטים האנגליים הם תרגום פונקציונלי ולא בהכרח הנוסח הקנוני המקורי (ניטשה #1, ארנו, דייויס, ראסל, וילצ'ק, צילינגר, סוסקינד) — ערן ישלח נוסחים מקוריים.

---

## גיבוי hugo.yaml לפני קאבר + multilingual — 17.6.2026

**גיבויים פיזיים שנוצרו (שחזור בפקודה אחת):**
- `hugo.yaml.bak-20260617`
- `assets/css/extended/custom.css.bak-20260617`

> הקבצים `hugo.yaml` ו-`custom.css` ממילא מנוהלים ב-git ונקיים ב-HEAD (commit `db2837d`).
> קובץ ה-CSS ארוך (~600 שורות) ולכן לא הוטמע כאן מילולית כדי לא לנפח את CLAUDE.md (נקרא בכל שיחה) —
> הגיבוי המלא שלו הוא `custom.css.bak-20260617` + גרסת ה-git.

### שחזור (revert ידני) אם משהו נשבר
```bash
# אופציה א׳ — מהגיבוי הפיזי:
cp hugo.yaml.bak-20260617 hugo.yaml
cp assets/css/extended/custom.css.bak-20260617 assets/css/extended/custom.css
# מחיקת קבצים שנוספו במשימות 1+2:
rm -rf content/en layouts/_partials/disclaimer.html

# אופציה ב׳ — מ-git (HEAD = לפני השינוי):
git checkout HEAD -- hugo.yaml assets/css/extended/custom.css layouts/index.html layouts/baseof.html
git clean -fd content/en layouts/_partials/disclaimer.html
```

### קבצים שנגעתי בהם במשימות 1+2
| קובץ | משימה | פעולה |
|------|--------|--------|
| `hugo.yaml` | 1+2 | נערך (multilingual + cover param) |
| `assets/css/extended/custom.css` | 1 | נערך (`.ill-cover-banner` החליף את `.ill-masthead-cover`) |
| `layouts/index.html` | 1 | נערך (באנר מלא-רוחב הוצא מהמסטהד) |
| `layouts/baseof.html` | 2 | נערך (הכללת partial הדיסקליימר) |
| `content/en/_index.md` | 2 | **נוצר** |
| `content/en/posts/.gitkeep` | 2 | **נוצר** (תיקייה ריקה לתוכן עתידי) |
| `layouts/_partials/disclaimer.html` | 2 | **נוצר** |

### גיבוי מלא של hugo.yaml (לפני השינוי)
```yaml
baseURL: "https://illuminism.net/"
locale: "he"
title: "Illuminism | אילומיניזם"
theme: "PaperMod"
languages:
  he:
    direction: rtl
    languageName: "עברית"
markup:
  goldmark:
    renderer:
      unsafe: true
params:
  defaultTheme: dark
  images: ["images/cover.png"]
  description: "מתמטיקה אונטולוגית בעברית — פילוסופיה, מדע ותודעה"
  ShowReadingTime: true
  ShowToc: true
  ShowPostNavLinks: true
  mainSections:
    - posts
  # ... (יתר ה-params: author, subtitle, masthead, sidebarAbout,
  #      sidebarQuote, sidebarQuotes, channels, navTitle, footer —
  #      ללא שינוי; הגיבוי המלא ב-hugo.yaml.bak-20260617)
menu:
  main:
    - name: תגיות
      url: /tags/
      weight: 30
```

