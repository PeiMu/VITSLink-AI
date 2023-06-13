# OpenAI English to Japanese/Chinese with VITS #
This project utilizes ChatGPT API and whisper to provide English text to Japanese translation while also providing VITS text to speech. You speak, it speaks.

## How it works
English Voice input -> English Text (whisper) -> Japanese text translation (OpenAI API) -> Japanese Voice (VITS)  

## Install
1. create conda environment
```bash
conda create -n vitslink python=3 
conda activate vitslink
```

2. run `setup.sh`
```bash
bash ./setup.sh
```

3. paste the OpenAI API key into the config.py file

## How to run
Just run "run.sh" file or run vits "python app.py --api" and the Language Link "english_to_japanese_vits.py"

### *Attention*
1. Conda environment cannot install pyopenjtalk
2. There might be an error - `_pickle.UnpicklingError: invalid load key, ''.`
Fix by https://stackoverflow.com/questions/33049688/what-causes-the-error-pickle-unpicklingerror-invalid-load-key
```bash
 sudo apt-get install git-lfs
 git lfs install
 git clone ...
```
3. need to run with `sudo`


## Requirements
run setup.bat to auto clone all repos listed below except for voicemeeter

- whisper - https://github.com/openai/whisper
    - Allows for voice to text transcription 
    
    
- OpenAI API - https://openai.com/ 
    - Allows you to turn text from whisper to Japanese or Chinese


- vits-models (VITS) - https://huggingface.co/spaces/sayashi/vits-models 
    - Allows for Japanese or Chinese text to turn to Speech through the use of the gradio API


- Voicemeeter - https://vb-audio.com/Voicemeeter/
    - Allows you to play audio generated from the translator app through your mic in games or elsewhere 
