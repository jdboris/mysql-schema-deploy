# MySQL Schema Deploy

Deploy local schema changes to a remote database.

## Description

A group of scripts to deploy MySQL schema changes made on a local dev environment to a remote production environment, utilizing [skeema](https://www.skeema.io) and the [docker](https://www.docker.com/) CLI. Currently only tested on Windows, but could work on Linux with some improvements.

## Getting Started

### Dependencies

- Windows 10+
- WSL support
- CPU virtualization support
- Remote connections enabled on remote MySQL host

### Installation

1. Clone this repo.
2. Run `windows-install.ps1` as Administrator.

### Usage

- Run `windows-deploy.ps1` and follow the prompts.
