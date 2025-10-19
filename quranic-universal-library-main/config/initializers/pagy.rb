# Pagy initializer file
# Customize only what you really need but notice that Pagy works also without any of the following lines.


# Extras
# See https://ddnexus.github.io/pagy/extras


# Backend Extras

# Array: Paginate arrays efficiently, avoiding expensive array-wrapping and without overriding
# See https://ddnexus.github.io/pagy/extras/array
# require 'pagy/extras/array'
require 'pagy/extras/array'

# Searchkick: Paginate `Searchkick::Results` objects efficiently, avoiding expensive oject-wrapping and without overriding.
# See https://ddnexus.github.io/pagy/extras/searchkick
# require 'pagy/extras/searchkick'

# Frontend Extras

# Bootstrap: Nav, responsive and compact helpers and systemd-templates for Bootstrap pagination
# See https://ddnexus.github.io/pagy/extras/bootstrap
require 'pagy/extras/bootstrap'

# Feature Extras

# Items: Allow the client to request a custom number of items per page with an optional selector UI
# See https://ddnexus.github.io/pagy/extras/items
#require 'pagy/extras/items'
Pagy::DEFAULT[:items_param] = :page    # default
Pagy::DEFAULT[:max_items]   = 50       # default

# Out Of Range: Allow for easy handling of out of range pages
# See https://ddnexus.github.io/pagy/extras/overflow
require 'pagy/extras/overflow'
Pagy::DEFAULT[:overflow] = :empty_page    # default  (other options: :empty_page and :exception)

# Trim: Remove the page=1 param from links
# See https://ddnexus.github.io/pagy/extras/trim
# require 'pagy/extras/trim'

# Pagy Variables
# See https://ddnexus.github.io/pagy/api/pagy#variables
# All the Pagy::DEFAULT are set for all the Pagy instances but can be overridden
# per instance by just passing them to Pagy.new or the #pagy controller method

# Instance variables
# See https://ddnexus.github.io/pagy/api/pagy#instance-variables
Pagy::DEFAULT[:items] = 20                                   # default

# Other Variables
# See https://ddnexus.github.io/pagy/api/pagy#other-variables
# Pagy::DEFAULT[:size]       = [1,4,4,1]                       # default
# Pagy::DEFAULT[:page_param] = :page                           # default
# Pagy::DEFAULT[:params]     = {}                              # default
# Pagy::DEFAULT[:anchor]     = '#anchor'                       # example
# Pagy::DEFAULT[:link_extra] = 'data-remote="true"'            # example
# Pagy::DEFAULT[:item_path]  = 'activerecord.models.product'   # example


# Rails

# Rails: extras assets path required by the compact and responsive navs, and the items extra
# See https://ddnexus.github.io/pagy/extras#javascript
require 'pagy/extras/navs'

# I18n

# I18n: faster internal pagy implementation (does not use the I18n gem)
# Use only for single language apps that don't need dynamic translation between multiple languages
# See https://ddnexus.github.io/pagy/api/frontend#i18n
# Notice: Do not use any of the following lines if you use the i18n extra below
# Pagy::Frontend::I18N.load(file: Pagy.root.join('locale', 'es.yml'), language:'es') # load 'es' pagy language file
# Pagy::Frontend::I18N.load(file:'path/to/dictionary.yml', language:'en')            # load a custom 'en' file
# Pagy::Frontend::I18N[:plural] = -> (count) {(['zero', 'one'][count] || 'other')}   # default

# I18n: Use the `I18n` gem instead of the pagy implementation
# (slower but allows dynamic translation between multiple languages)
# See https://ddnexus.github.io/pagy/extras/i18n
# require 'pagy/extras/i18n'
