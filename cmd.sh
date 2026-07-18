
# open docker desktop
cd deployment/mlflow
docker compose -f docker-compose.yaml up -d


python src/models/train_model.py --config configs/model_config.yaml --data data/processed/featured_house_data.csv --models-dir models --mlflow-tracking-uri http://localhost:5555