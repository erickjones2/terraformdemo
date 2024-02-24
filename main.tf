terraform {
	  backend "s3" {
    bucket = "${{TERRAFORM:TF_AWS_BUCKET}}"
    key    = "dyuti/local/terraform.tfstate"
  }
}

resource "local_file" "foo" {
  content  = "Written By FlexDeploy!"
  filename = "/home/oracle/TerraformPOC/FD-02.log"
}
