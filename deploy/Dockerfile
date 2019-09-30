FROM google/cloud-sdk:214.0.0-alpine

COPY --from=hashicorp/terraform:0.11.7 /bin/terraform /bin/
COPY entrypoint.sh /app/

ENV GOOGLE_APPLICATION_CREDENTIALS=/mnt/.creds/identity.json

ENTRYPOINT ["/bin/sh", "/app/entrypoint.sh"]