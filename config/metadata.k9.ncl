# SPDX-License-Identifier: AGPL-3.0-or-later
# K9 Contractile: Kennel Level (Pure Data)
# Project metadata for asdf-plugins

{
  leash = 'Kennel,

  project = {
    name = "asdf-plugins",
    version = "1.0.0",
    description = "Interactive directory of asdf version manager plugins",
    homepage = "https://asdf-plugins.org",
    repository = "https://github.com/hyperpolymath/asdf-plugins",

    license = "AGPL-3.0-or-later",
    author = {
      name = "Jonathan D.A. Jewell",
      email = "jonathan.jewell@open.ac.uk",
    },

    keywords = [
      "asdf",
      "version-manager",
      "plugin-directory",
      "dev-tools",
      "rescript",
      "proven",
    ],
  },

  tech_stack = {
    languages = ["ReScript", "JavaScript", "HTML", "CSS"],
    runtime = "Deno",
    libraries = [
      "rescript-tea",
      "rescript-dom-mounter",
      "proven",
      "cadre-tea-router",
    ],

    build_tools = ["ReScript", "Deno"],
    package_manager = "Deno",
  },

  deployment = {
    platform = "Cloudflare Pages",
    domain = "asdf-plugins.org",
    build_command = "deno task build",
    output_directory = "/",
  },

  features = {
    proven_validation = true,
    formal_verification = true,
    tea_architecture = true,
    plugin_search = true,
    language_filtering = true,
    dom_mounting = "rescript-dom-mounter",
  },

  status = {
    phase = "MVP Development",
    completion_percentage = 55,
    production_ready = false,
  },
}
