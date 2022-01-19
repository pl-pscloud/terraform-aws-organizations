output "pscloud_organization_units" {
  value = aws_organizations_organizational_unit.pscloud-ous
}

output "pscloud_organization_accounts" {
  value = aws_organizations_account.pscloud-accounts
}
