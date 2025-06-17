jobs:
  terraform:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3

    - name: Setup Terraform
      uses: hashicorp/setup-terraform@v3
      with:
        terraform_version: 1.6.0

    - name: Terraform Init
      run: terraform init
      working-directory: ./infra  # <-- point to your config files

    - name: Terraform Plan
      run: terraform plan -input=false
      working-directory: ./infra  # <-- same here
