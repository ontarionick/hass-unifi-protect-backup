# Home Assistant Community Add-on: Unifi Protect Backup

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fontarionick%2Fhass-unifi-protect-backup)
![Project Stage][project-stage-shield]
[![License][license-shield]](LICENSE.md)
![Project Maintenance][maintenance-shield]
[![GitHub Activity][commits-shield]][commits]

## About

This add-on runs [unifi-protect-backup](https://github.com/ep1cman/unifi-protect-backup) as a Home Assistant add-on, which gives you the abilitiy to automatically backup local UniFi Protect video detections to Network Attached Storage, Cloud Storage, or a variety of other options. UniFi Protect is a fantastic option for locally-managed security cameras, but currently lacks an officially-supported offsite backup option.

This addon requires knowledge of [unifi-protect-backup](https://github.com/ep1cman/unifi-protect-backup) and [rclone](https://github.com/rclone/rclone) in order to get working as these are used under-the-hood by this addon.

## Setup

The steps to get this add-on setup are currently a little convoluted. I would like to streamline this process a bit, but I am still learning HASS add-on development.

1. Configure an rclone remote on your local computer. For example, I configured a Google Cloud Storage bucket remote called `gc`.
2. Add the [parent repository][repository] to your Home Assistant add-on repositories.
3. Unifi Protect Backup should now show up in the add-on list. Select that.
4. Open the `Configuration` page, and fill out the basic configuration.
5. For `rclone_destination`, use the remote you configured in step 1. For example: `gc:unifi-detections/vacation-home/`.
6. Open your `rclone.conf` file, which can be found by using the command `rclone config file`. Copy the contents of this, and paste into `rclone configuration`
7. Click `Save`, go to the `Info` page, and click `Start`. You can check for any errors on the `Logs` page. If it is successful, you should see it start to download detections and then upload them to your remote. Enjoy!

## Contributing

This is an active open-source project, and we are happy to accept pull requests and issues.

## Authors & contributors

The original author of this repository is [Nick Evans][ontarionick]. However, this repository is just a packaging up of another tool, written by [ep1cman][ep1cman] and other contributors to the [unifi-protect-backup](https://github.com/ep1cman/unifi-protect-backup) repository.

For a full list of all authors and contributors on this repository, check [the contributor's page][contributors].


[commits-shield]: https://img.shields.io/github/commit-activity/y/ontarionick/hass-unifi-protect-backup.svg
[license-shield]: https://img.shields.io/github/license/ontarionick/hass-unifi-protect-backup.svg
[commits]: https://github.com/ontarionick/hass-unifi-protect-backup/commits/main
[contributors]: https://github.com/ontarionick/hass-unifi-protect-backup/graphs/contributors
[project-stage-shield]: https://img.shields.io/badge/project%20stage-production%20ready-brightgreen.svg
[ontarionick]: https://github.com/ontarionick
[issue]: https://github.com/ontarionick/hass-unifi-protect-backup/issues
[maintenance-shield]: https://img.shields.io/maintenance/yes/2023.svg
[repository]: https://github.com/ontarionick/hass-unifi-protect-backup
[ep1cman]: https://github.com/ep1cman
