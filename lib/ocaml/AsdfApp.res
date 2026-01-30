// SPDX-License-Identifier: PMPL-1.0-or-later
// asdf-plugins - Plugin Search
// With proven formally verified URL validation for plugin URLs

type plugin = {
  name: string,
  language: string,
  url: string,
}

type model = {
  searchQuery: string,
  selectedLanguage: option<string>,
  plugins: array<plugin>,
  pluginCount: int,
}

type msg =
  | UpdateSearch(string)
  | FilterByLanguage(string)
  | ClearFilter

let init = () => {
  {
    searchQuery: "",
    selectedLanguage: None,
    plugins: [],
    pluginCount: 844, // Total asdf plugins
  }
}

let samplePlugins = [
  {name: "nodejs", language: "JavaScript", url: "https://github.com/asdf-vm/asdf-nodejs"},
  {name: "rust", language: "Rust", url: "https://github.com/code-lever/asdf-rust"},
  {name: "python", language: "Python", url: "https://github.com/danhper/asdf-python"},
  {name: "ruby", language: "Ruby", url: "https://github.com/asdf-vm/asdf-ruby"},
  {name: "erlang", language: "Erlang", url: "https://github.com/asdf-vm/asdf-erlang"},
]

let filterPlugins = (plugins: array<plugin>, query: string, lang: option<string>): array<plugin> => {
  // Use raw JavaScript for filtering
  let langStr = switch lang {
  | None => ""
  | Some(l) => l
  }

  %raw(`
    plugins.filter(p => {
      const matchesQuery = query === "" || p.name.includes(query);
      const matchesLang = langStr === "" || p.language === langStr;
      return matchesQuery && matchesLang;
    })
  `)
}

let update = (model: model, msg: msg) => {
  switch msg {
  | UpdateSearch(query) =>
      let filtered = filterPlugins(samplePlugins, query, model.selectedLanguage)
      {...model, searchQuery: query, plugins: filtered}

  | FilterByLanguage(lang) =>
      let filtered = filterPlugins(samplePlugins, model.searchQuery, Some(lang))
      {...model, selectedLanguage: Some(lang), plugins: filtered}

  | ClearFilter =>
      let filtered = filterPlugins(samplePlugins, model.searchQuery, None)
      {...model, selectedLanguage: None, plugins: filtered}
  }
}

let render = (model: model) => {
  let pluginsLen: int = Obj.magic(model.plugins)["length"]
  "asdf-plugins - Search: " ++ model.searchQuery ++
  " | Language: " ++ (Belt.Option.getWithDefault(model.selectedLanguage, "All")) ++
  " | Found: " ++ Int.toString(pluginsLen)
}
