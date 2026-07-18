FROM python:3.13-slim

WORKDIR /app

COPY src/api/ .

RUN pip install -r requirements.txt

# RUN pip install fastapi
# RUN pip install uvicorn
# RUN pip install pandas
# RUN pip install joblib
# RUN pip install scikit-learn
# RUN pip install numpy
# RUN pip install xgboost-cpu
# RUN pip install pyyaml


COPY models/trained/*.pkl models/trained/

EXPOSE 8000

CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000" ]
