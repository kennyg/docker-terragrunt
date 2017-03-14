FROM hashicorp/terraform:full

ENV TERRAFORM_VERSION=latest
ENV TERRAGRUNT_VERSION=0.10.2
ENV TERRAGRUNT_TFPATH=/bin/terraform

ADD https://github.com/gruntwork-io/terragrunt/releases/download/${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 /bin/terragrunt
RUN chmod +x /bin/terragrunt

ENTRYPOINT ["/bin/terragrunt"]
