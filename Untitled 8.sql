CREATE OR REPLACE STORAGE INTEGRATION my_s3_integration
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = S3
  ENABLED = TRUE
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::037931721542:role/rarar'
  STORAGE_ALLOWED_LOCATIONS = ('s3://raja1290');
describe STORAGE INTEGRATION my_s3_integration;

  CREATE OR REPLACE STAGE snow_project.pro_stages.my_stage
  STORAGE_INTEGRATION = MY_S3_INTEGRATION
  URL = 's3://raja1290/'
  FILE_FORMAT = (TYPE = JSON);
  describe STAGE snow_project.pro_stages.my_stage;
  list@snow_project.pro_stages.my_stage;