# Docker python utility container

## Description

Let me paint you a picture: you have a friend. She is somehow technical, but she doesn't have Python coding skills. She's asking you if you could code something for her in Python, install Python on her machine and show her how to execute it. Wouldn't it be easier just to hand her a Docker image and a `run` command?

If you can imagine this scenario, then this repo is for you.

It's pretty simple. Fill in `your_script.py` with the Python code and add dependencies in `requirements.py` if needed. Build the image and run it. If your script need to return file(s), add them to `/data`.

## Build command

```sh
docker build -t name-of-your-choice .
```

## Run command

```sh
docker run -v ${PWD}:/data --rm name-of-your-choice
```

## Example

See my repo [generate_fake_data](https://github.com/VildMedPap/generate_fake_data) to get an idea how to use this setup.
