FROM hashicorp/terraform:full

ENV TERRAFORM_VERSION=0.8.8
ENV TERRAGRUNT_VERSION=v0.11.0
ENV TERRAGRUNT_TFPATH=/bin/terraform

ADD https://github.com/gruntwork-io/terragrunt/releases/download/${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 /bin/terragrunt
RUN chmod +x /bin/terragrunt

ENTRYPOINT ["/bin/terragrunt"]
