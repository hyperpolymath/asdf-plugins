---
title: asdf Plugin Registry
description: Curated registry of asdf version manager plugins with 844+ tools
date: 2026-01-30
license: PMPL-1.0-or-later
---

# asdf Plugin Registry

**Curated fork of the official asdf-vm plugin registry**

![License: PMPL-1.0](https://img.shields.io/badge/License-PMPL--1.0-indigo.svg)
![Plugins: 844+](https://img.shields.io/badge/Plugins-844%2B-blue.svg)

The purpose of the [asdf](https://github.com/asdf-vm/asdf) plugins repository is to enable shorthand installation of plugins with:

```shell
asdf plugin add <name>
```

The asdf core team recommend using the long-form which does not rely on this registry:

```shell
asdf plugin add <name> <git_url>
```

**Read each plugin's code before installation and usage.**

## About This Fork

This is a fork of [asdf-vm/asdf-plugins](https://github.com/asdf-vm/asdf-plugins) maintained by Jonathan D.A. Jewell. This fork includes:

- **RSR compliance** - All custom plugins follow Rhodium Standard Repositories
- **Security scanning** - Hypatia neurosymbolic CI/CD scans all plugins
- **Custom plugins** - Additional plugins for niche languages and tools

## Plugin Count

This registry contains **844+ plugins** covering languages, databases, CLIs, and more.

## Creating a New Plugin

- Read the [creating plugins guide](https://github.com/asdf-vm/asdf/blob/master/docs/plugins/create.md)
- Consider using the [Template](https://github.com/asdf-vm/asdf-plugin-template) which has core functionality out of the box
- For custom plugins, follow the [RSR template](https://github.com/hyperpolymath/rsr-template-repo)

### asdf-community

If you're creating a new plugin, consider the [`asdf-community`](https://github.com/asdf-community/.github) project for consolidated maintenance.

## Contributing a New Plugin

1. Install repo dependencies: `asdf install`
2. Add the plugin to the `README.md` Plugin List table
3. Create a file `plugins/<name>` with content:
   ```
   repository = https://github.com/your-org/asdf-plugin-name.git
   ```
4. Test your code: `scripts/test_plugin.bash --file plugins/<name>`
5. Format code: `scripts/format.bash`
6. Create a PR following the template

## Security

The asdf core provides a [security policy](https://github.com/asdf-vm/asdf/security/policy) for the core tool. **Plugins are the responsibility of their creators** and not covered by the asdf policy.

It is your responsibility to evaluate each plugin for security concerns. You can pin a plugin to a commit:

```shell
asdf plugin update <name> <git-ref>
```

However, running `asdf plugin update <name>` or `asdf plugin update --all` will change the SHA you have pinned.

## Custom Plugins

Custom plugins in this fork include:

- **casket-ssg** - Static site generator with formal verification
- **acceleration-middleware** - Database query acceleration
- **control-tower** - Concourse CI management
- And 70+ more tools for specialized use cases

## Full Plugin List

See the complete list of 844+ plugins in the [GitHub repository README](https://github.com/hyperpolymath/asdf-plugins/blob/master/README.md).

## Resources

- [Official asdf documentation](https://asdf-vm.com/)
- [asdf GitHub repository](https://github.com/asdf-vm/asdf)
- [Plugin creation guide](https://github.com/asdf-vm/asdf/blob/master/docs/plugins/create.md)
- [asdf-community organization](https://github.com/asdf-community)

## License

**PMPL-1.0-or-later** (Palimpsest-MPL License)

This fork is licensed under the Palimpsest-MPL License. The original asdf-plugins repository is licensed under Apache-2.0.

See the [Palimpsest License](https://github.com/hyperpolymath/palimpsest-license) for full details.

---

Maintained by [Jonathan D.A. Jewell](mailto:jonathan.jewell@open.ac.uk) | Original by [asdf-vm](https://github.com/asdf-vm) | Licensed under [PMPL-1.0-or-later](https://github.com/hyperpolymath/palimpsest-license)
