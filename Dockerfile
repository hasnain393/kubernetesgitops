FROM python  # You can choose a specific Python version for better compatibility

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt  # Using pip instead of pip3

COPY . .

CMD [ "python", "-m" , "flask", "run", "--host=0.0.0.0"]
