echo Installing required packages...
sudo apt install portaudio19-dev
pip install -r requirements.txt

echo Cloning whisper repository...
git clone https://github.com/openai/whisper.git
cd whisper || exit
pip install -r requirements.txt
python setup.py install
cd ..

echo Cloning VITS models repository...
git clone https://huggingface.co/spaces/sayashi/vits-models.git
cd vits-models || exit
pip install -r requirements.txt
cd ..

echo Setup complete.
