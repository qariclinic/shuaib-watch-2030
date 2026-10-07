#!/usr/bin/env bash
# استعمال: ./push.sh https://github.com/USERNAME/REPO.git
set -e
[ -z "$1" ] && { echo "GitHub repo URL دیں"; exit 1; }
git init -q; git add .; git commit -qm "Shuaib Digital Watch 2030" || true
git branch -M main; git remote remove origin 2>/dev/null || true
git remote add origin "$1"; git push -u origin main
echo "✅ اب GitHub > Actions > Build APK > Artifacts سے APK ڈاؤن لوڈ کریں"
