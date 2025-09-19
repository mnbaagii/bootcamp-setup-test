#!/bin/bash
PROJECT_NAME=$1
if [ -z "$PROJECT_NAME" ]; then
  echo "Төслийн нэрийг аргумент болгон оруулна уу. Жишээ: ./setup_project.sh my-app"
  exit 1
fi
mkdir -p $PROJECT_NAME/src
mkdir -p $PROJECT_NAME/docs
touch $PROJECT_NAME/src/app.py
touch $PROJECT_NAME/docs/README.md
echo -e ".pyc \n.pycache" > $PROJECT_NAME/.gitignore

cd $PROJECT_NAME
git init
git add .
git commit -m "Initial project setup and folder structure"

git remote add origin git@github.com:mnbaagii/setup-project.git
git branch -M main
git push -u origin main

echo "✅ Төсөл амжилттай үүсэж, GitHub руу push хийгдлээ!"
echo "Таны төсөл '$PROJECT_NAME' хавтаст үүслээ."

