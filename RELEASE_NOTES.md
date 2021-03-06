<!---
This file is reset every time a new release is done. The contents of this file are for the currently unreleased version.

Example Note:

## Example Heading
Details about the thing that changed that needs to get included in the Release Notes in markdown.
-->

# knife-azure 1.5.2 release notes:
This release of knife-azure updates gem dependencies, and includes bug
fixes and improvements unreleased revisions, `knife-azure 1.5.0` and` knife-azure 1.5.1`.

Special thanks go to contributor **Seth Chisamore** for addressing
[knife-azure #204](https://github.com/chef/knife-azure/pull/204). This change ensures WinRM is configured to allow the initial chef-client run to succeed

Please file bugs or feature requests against the [KNIFE_AZURE](https://github.com/chef/knife-azure/issues) repository.
More information on the contribution process for Chef projects can be found in the [Chef Contributions document](https://docs.chef.io/community_contributions.html).

## knife-azure on RubyGems and Github
https://rubygems.org/gems/knife-azure
https://github.com/chef/knife-azure

## Issues fixed in this release:

See the [1.5.2 CHANGELOG](https://github.com/chef/knife-azure/blob/1.5.2/CHANGELOG.md)
for the complete list of issues fixed in these releases.

Here is a partial list:

* [knife-azure #213](https://github.com/chef/knife-azure/pull/213) Typo in fetch_thumbprint method
* [knife-azure #215](https://github.com/chef/knife-azure/pull/215) Added --delete-chef-config option in knife azure server create
* [knife-azure #204](https://github.com/chef/knife-azure/pull/204) Properly configure WinRM for bootstrapping; Fixes [#203](https://github.com/chef/knife-azure/pull/203)
* [knife-azure #197](https://github.com/chef/knife-azure/pull/197) Add custom json attributes to chef extension
* [knife-azure #211](https://github.com/chef/knife-azure/pull/211) Allow user to specify chef extension version by using knife_rb
* [knife-azure #202](https://github.com/chef/knife-azure/pull/202) knife-windows 1.0.0+ compat fixes
* [knife-azure #198](https://github.com/chef/knife-azure/pull/198) Adding winrm\_ssl\_verify_mode to bootstrap config
* [knife-azure #196](https://github.com/chef/knife-azure/pull/196) Update Rubies; remove Chef-unsupported versions from matrix
* [knife-azure #195](https://github.com/chef/knife-azure/pull/195) Showing thumbprint with Server show command
* [knife-azure #188](https://github.com/chef/knife-azure/pull/188) Winrm port should not be configured if --bootstrap-protocol=cloud-ap



