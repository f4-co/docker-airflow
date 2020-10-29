#!/bin/bash
dirname=$(dirname $BASH_SOURCE)
cd $dirname/..

docker build -t f4co/airflow:1.10.12 --build-arg AIRFLOW_DEPS=docker,elasticsearch,gcp --build-arg PYTHON_DEPS="intuit-oauth==1.2.3 backoff==1.10.0 snowflake==0.0.3 SQLAlchemy==1.3.15 botocore==1.16.20 boto3==1.13.20 requests==2.23.0 snowflake-connector-python==2.2.8" .