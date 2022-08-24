# 개요
![](https://miraeasset-assets.s3.ap-northeast-2.amazonaws.com/images/bigdata/main-top.png)  
9/24일 [미래에셋증권 빅데이터 페스티벌](https://miraeassetfesta.com/bigdata)에서 보여드린 BigQuery ML Query와 Vertex AI Workbench 노트북 파일입니다.


# 파일 소개
## bqml/bqml-iris.sql
BigQuery ML을 이용하여 붓꽃 분류기를 만들어 봅니다.  
  
머신러닝 입문의 추억의 분석 데이터셋,  
Iris(붓꽃)의 꽃잎과 꽃받침으로 분류하는 모델을 만들어봅시다.  
  
BigQuery ML에서 세 개의 알고리즘으로 모델 생성을 합니다.  
  
1. Logistic Regression
2. Boosted Tree Classifier
3. AutoML Classifier
  
사용된 쿼리는 구글 클라우드 공식 문서에서 가져왔습니다.  
[Exporting a BigQuery ML model for online prediction](https://cloud.google.com/bigquery-ml/docs/export-model-tutorial#train_and_deploy_a_boosted_tree_classifier_model)


## vertex-ai/vertex-ai-iris.ipynb
미래에셋증권 빅데이터 페스티벌을 위한 Vertex AI Workbench 샘플 노트북입니다.  
Vertex AI Workbench를 이용하여 붓꽃 분류기를 만들어 봅니다.  
  
머신러닝 입문의 추억의 분석 데이터셋,  
Iris(붓꽃)의 꽃잎과 꽃받침으로 분류하는 모델을 만들어봅시다.  
  
Vertex AI에서 다섯 개의 알고리즘으로 모델 생성을 합니다.  
AutoML을 제외한 나머지 알고리즘은 Scikit-learn 라이브러리를 이용합니다.  
 
1. AutoML
2. Decision Tree Classifier
3. RandomForest
4. Logistic Regression
5. Support Vector Machine
  
Vertex AI 샘플 노트북은 아래 GitHub Repository에서 참고하실 수 있습니다.  
[Google Cloud Vertex AI Samples](https://github.com/GoogleCloudPlatform/vertex-ai-samples)


# 데이터셋 소개
Scikit-Learn으로 처음 많이 공부해보는 붓꽃 분류기입니다.  
뇌의 저편에 저장된 기억을 되살리고 싶으신 분은 아래 블로그를 참조해주세요.  
[입문자를 위한 머신러닝 분류 튜토리얼 - IRIS 분류](https://dschloe.github.io/python/python_edu/04_machinelearning/chapter_4_4_classification_iris_example/)


# Useful Link
- [Quickstart: Create a managed notebooks instance by using the console | Vertex AI Workbench | Google Cloud](https://cloud.google.com/vertex-ai/docs/workbench/managed/create-managed-notebooks-instance-console-quickstart)
- [The CREATE MODEL statement | BigQuery ML | Google Cloud](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-create)
- [BigQuery ML Model Evaluation Overview | Google Cloud](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-evaluate-overview/)
- [AutoML Tables](https://www.youtube.com/watch?v=tWbiOuHae0c)
- [Google Cloud Vertex AI의 MLOps 툴과 기능](https://www.youtube.com/watch?v=AZ8xS571QWQ)
- [Faster model training and experimentation with Vertex AI](https://www.youtube.com/watch?v=rAGauhXYgw4)
- [Vertex AI: Custom training job and prediction using managed datasets](https://codelabs.developers.google.com/codelabs/vertex-ai-custom-code-training?hl=en#0)
- [Time Series Forecasting with Vertex AI and BigQuery ML](https://codelabs.developers.google.com/codelabs/time-series-forecasting-with-cloud-ai-platform?hl=en#0)
- [Build an AutoML Forecasting Model with Vertex AI](https://codelabs.developers.google.com/codelabs/automl-forecasting-with-vertex-ai?hl=en#2)
- [GitHub - bqml-vertexai-for-bigdatafesta (Expiry date: 8/31)](https://github.com/hajekim/bqml-vertexai-for-bigdatafesta)