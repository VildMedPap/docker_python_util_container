FROM python:3.8.0 AS build
RUN apt-get update && apt-get install --no-install-recommends gcc -y && apt-get clean
COPY requirements.txt requirements.txt
RUN pip install --user --no-cache-dir -r requirements.txt

FROM python:3.8.0-slim AS production
ENV PATH=/root/.local/bin:$PATH
COPY --from=build /root/.local /root/.local
COPY . .
VOLUME [ "/data" ]
ENTRYPOINT [ "python3", "your_script.py" ]
