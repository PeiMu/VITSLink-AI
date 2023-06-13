echo Select a translation option:
echo 1. English to Chinese
echo 2. English to Japanese

read -p "Enter a selection number: " option

if [ "${option}" == 1 ]; then
  echo Starting English to Chinese Text to Speech Translator
  echo Starting VITS...
  cd vits-models || exit
  python app.py --api
  cd ..
  python english_to_chinese.py
elif [ "${option}" == 2 ]; then
  echo Starting English to Japanese Text to Speech Translator
  echo Starting VITS...
  cd vits-models || exit
  python app.py --api
  cd ..
  python english_to_japanese.py
else
  echo Invalid selection. Please try again.
fi
