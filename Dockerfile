FROM hashicorp/terraform:light as builder
FROM gcr.io/google.com/cloudsdktool/cloud-sdk:alpine
COPY bin/gke-tf /usr/local/bin/
COPY --from=builder bin/terraform /usr/local/bin/terraform
