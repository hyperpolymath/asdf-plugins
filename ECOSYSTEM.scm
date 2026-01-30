;; ECOSYSTEM.scm - asdf-plugins relationships
(ecosystem
  (name "asdf-plugins")
  (type "search-site")
  (related-projects
    (project "rescript-tea" (relationship "sibling-standard"))
    (project "proven" (relationship "sibling-standard"))))
