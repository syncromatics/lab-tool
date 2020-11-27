# Lab Tool

A project for managing lab/test bench equipment with a Raspberry Pi and Balena.

## Quickstart

1. Create a project in Balena with your target device type. This has been tested with a first-generation Raspberry Pi.
2. Add a new device and download the OS image.
   - Configure your wifi details as needed
3. Before writing to an SD card, mount the image and copy the contents of [os-overlays](./os-overlays) to the root of `resin-boot`
4. Unmount the image and write it to an SD card. (e.g., with balenaEtcher)
5. Push this repo to your Balena project via the Balena CLI: `balena push your-project-name`

## Code of Conduct

We are committed to fostering an open and welcoming environment. Please read our [code of conduct](CODE_OF_CONDUCT.md) before participating in or contributing to this project.

## Contributing

We welcome contributions and collaboration on this project. Please read our [contributor's guide](CONTRIBUTING.md) to understand how best to work with us.

## License and Authors

[![GMV Syncromatics Engineering logo](https://secure.gravatar.com/avatar/645145afc5c0bc24ba24c3d86228ad39?size=16) GMV Syncromatics Engineering](https://github.com/syncromatics)

[![license](https://img.shields.io/github/license/syncromatics/lab-tool.svg)](https://github.com/syncromatics/lab-tool/blob/master/LICENSE)
[![GitHub contributors](https://img.shields.io/github/contributors/syncromatics/lab-tool.svg)](https://github.com/syncromatics/lab-tool/graphs/contributors)

This software is made available by GMV Syncromatics Engineering under the MIT license.
