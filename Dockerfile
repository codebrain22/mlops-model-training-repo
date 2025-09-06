FROM python:3.10-slim

ENV APP_HOME /app
WORKDIR $APP_HOME

# Copy training code + requirements
COPY bank_campaign_model_training.py .
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Default command: run training
CMD ["python", "bank_campaign_model_training.py"]
