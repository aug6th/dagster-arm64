FROM python:3.11-slim

ARG DAGSTER_VERSION

# All packages are hard-pinned to `dagster`, so setting the version on just `DAGSTER` will ensure
# compatible versions.
RUN pip install --no-cache-dir \
    dagster==${DAGSTER_VERSION} \
    dagster-postgres \
    dagster-k8s \
    dagster-aws \
    dagster-celery[flower,redis,kubernetes] \
    dagster-celery-k8s \
    dagster-graphql \
    dagster-webserver
