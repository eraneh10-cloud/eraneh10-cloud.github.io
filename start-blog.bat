@echo off
REM מפעיל את הבלוג מתוך תיקיית הריפו בלבד — קלוד קוד מתוחם ל-illuminist-blog
cd /d C:\dev\illuminist-blog

REM חלון 1: תצוגה מקומית חיה (http://localhost:1313)
start "Hugo - illuminist-blog" cmd /k "hugo server -D"

REM חלון 2: קלוד קוד, מתוחם לתיקייה הזו, *בלי* skip-permissions —
REM כך הוא שואל לפני כל כתיבה. כשתרגיש בטוח, אפשר להוסיף --dangerously-skip-permissions
start "Claude Code - blog" cmd /k "claude"
