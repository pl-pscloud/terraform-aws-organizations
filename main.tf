resource "aws_organizations_organizational_unit" "pscloud-ous" {
  for_each  = var.pscloud_organization_units

  name      = each.value.name
  parent_id = each.value.parent_id

  tags = {
    Name = "${var.pscloud_company}_ou_${each.key}_${var.pscloud_env}"
  }
}



resource "aws_organizations_account" "pscloud-accounts" {
  for_each  = var.pscloud_accounts
  
  name                        = each.value.name
  email                       = each.value.email

  iam_user_access_to_billing  = each.value.iam_user_access_to_billing
  parent_id                   = each.value.parent_id

  tags = {
    Name = "${var.pscloud_company}_account_${each.key}_${var.pscloud_env}"
  }

}
