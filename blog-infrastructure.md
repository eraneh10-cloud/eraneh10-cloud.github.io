# תשתית הבלוג — סיכום עבודה

*מסמך זיכרון. מתעדכן אחרי כל שינוי משמעותי בתשתית.*

## מה קיים ועובד

### האתר הציבורי
- **כתובת:** https://eraneh10-cloud.github.io/
- **שם:** Illuminism | אילומיניזם
- **כיתוב:** ערן אבן חיים | פילוסופיה · מתמטיקה ומדע · תודעה
- **סטטוס:** פעיל, מתעדכן אוטומטית עם כל git push

### תשתית טכנית
- **פלטפורמה:** Hugo + GitHub Pages
- **ערכת עיצוב:** PaperMod
- **ריפו:** https://github.com/eraneh10-cloud/eraneh10-cloud.github.io
- **תיקייה מקומית:** `C:\dev\illuminist-blog`
- **דיפלוי:** GitHub Actions — אוטומטי עם כל push (≈2 דקות)

### עיצוב (נעול)
- **ברירת מחדל:** Dark mode (אינדיגו כהה)
- **החלפה:** כפתור auto לפי העדפת המשתמש
- **פלטה:**
  - רקע כהה: `#241A3A`
  - טקסט: `#EDE6D6`
  - הדגשות/קישורים: `#D4AF37` (זהב)
  - רקע בהיר: `#F5F2EC`
- **פונטים:** Frank Ruhl Libre (כותרות) + Heebo (גוף)
- **כיוון:** RTL תמיד

### קבצים שנוצרו/שונו
- `hugo.yaml` — הגדרות ראשיות
- `assets/css/extended/custom.css` — צבעים ופונטים
- `layouts/baseof.html` — תמיכת RTL
- `layouts/_partials/header.html` — לוגו + כיתוב
- `layouts/_partials/extend_head.html` — Google Fonts
- `layouts/_partials/templates/opengraph.html`
- `layouts/rss.xml`

---

## נוהל עבודה שוטף

### הוספת פוסט חדש
```
hugo new posts/NNN-slug.md
```
עם front matter:
```yaml
---
title: "כותרת הפוסט"
date: 2026-06-15
tags: ["ליבה", "חושים", "תפיסה"]
summary: "שורת פתיחה קצרה"
fbpost: "https://facebook.com/.../posts/..."
---
```
ואז:
```
git add .
git commit -m "פוסט NNN: כותרת"
git push
```

### בדיקה מקומית לפני push
```
cd C:\dev\illuminist-blog
hugo server -D
```
← http://localhost:1313

### עדכון עיצוב
כל שינוי עיצובי — לבקש מקלוד קוד לערוך את הקבצים ב־`C:\dev\illuminist-blog`, לבדוק מקומית, ואז push.

---

## מה לא בנינו עדיין (לפי המפרט)
- דפי מושגים (שלב 2 — רק אחרי 10 פוסטים)
- ניוזלטר
- תגובות (הדיון נשאר בפייסבוק)
- אנליטיקס
- דומיין מותאם (illuminist.co.il — רק אחרי הוכחת היתכנות)
- תמונת פרופיל בעמוד הבית

## שאלות פתוחות
- האם להוסיף עמוד "אודות" עם הסבר על הפרויקט?
- האם לקשר את הבלוג מהפייסבוק ומהיוטיוב?
