/**

  BigQuery ML 이용한 모델 개발

  머신러닝 입문의 추억의 분석 데이터셋,
  Iris(붓꽃)의 꽃잎과 꽃받침으로 분류하는 모델을 만들어봅시다.

  BigQuery ML에서 세 개의 알고리즘으로 모델 생성을 합니다.

  1. Logistic Regression
  2. Boosted Tree Classifier
  3. AutoML Classifier

  뇌의 저편에 저장된 기억을 되살리고 싶으신 분은 아래 블로그를 참조해주세요.
  https://dschloe.github.io/python/python_edu/04_machinelearning/chapter_4_4_classification_iris_example/


  이 곳에 나오는 쿼리는 아래 구글 클라우드 문서에서 가져왔습니다.
  Exporting a BigQuery ML model for online prediction
  https://cloud.google.com/bigquery-ml/docs/export-model-tutorial#train_and_deploy_a_boosted_tree_classifier_model

**/

-- 1. Logistic Regression
CREATE OR REPLACE MODEL `bqml_tutorial.iris_model`
OPTIONS (
    model_type="logistic_reg",
    max_iterations=10, input_label_cols=["species"]
)
AS (
    SELECT *
    FROM
    `bigquery-public-data.ml_datasets.iris`
)
;

-- 2. Boosted Tree Classifier
CREATE OR REPLACE MODEL `bqml_tutorial.boosted_tree_iris_model`
OPTIONS (
  model_type="boosted_tree_classifier",
  max_iterations=10, input_label_cols=["species"]
  )
AS (
  SELECT *
  FROM `bigquery-public-data.ml_datasets.iris`
  )
;

-- 3. AutoML Classifier
CREATE OR REPLACE MODEL `bqml_tutorial.automl_iris_model`
OPTIONS (
  model_type="automl_classifier",
  budget_hours=1, input_label_cols=["species"]
  )
AS (
  SELECT
    * EXCEPT(multiplier)
  FROM
    `bigquery-public-data.ml_datasets.iris`, unnest(GENERATE_ARRAY(1, 10)) as multiplier
  )
;