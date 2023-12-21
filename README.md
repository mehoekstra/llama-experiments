# Llama Experiments
This project contains sample code for experimenting with the Llama2 language model and the Intel® Extension for PyTorch\*
The project includes a development container that can be used with VSCode.  Alternatively the Dockerfile in the
llama-devcontainer directory can be examined to determine the environment requirements for these samples.

## Installation
It is easiest to build a container image for the development container.  The script build_dev_container is provided to perform this operation.
When launching the container it is important to allocate enough memory to it, even the 7 Billion parameter Llama models can require 80GB or more.

If you want the scripts to automatically pull images from Hugging Face, you should rename the file .env_template to .env and put a valid
Huggingface token in the file.

## streamlit
The sample Python code is designed to work with `streamlit` a simple HTTP server that presents a chatbot interface.
Before launching streamlit, edit the global variables near the top of llama2_streamlit.py to point to the location of your origin and quantized models.
To launch streamlit, you can use the script launch_streamlit.
Note that streamlit will execute the entire Python file several times, each time anything changes in the GUI.  But it has a mechansim to avoid
redundant expensive operations like model loading.  llama2_streamlit.py uses streamlit function decorations to ensure that models are only loaded
once.

Occasionally streamlit will hang when launching it from the devcontainer.  If so, just kill it with ^C and restart it.

## Downlaoding and saving Hugging Face models
The Python script download_and_save_model.py is provided to download models automatically from Hugging Face and store them in a local directory for
later retrieval.  This is useful if running the scripts in a container environment, the downloaded models can be persisted locally and retreived
even if the development container is rebuilt.