# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rails_autolink/all/rails_autolink.rbi
#
# rails_autolink-1.1.6

module RailsAutolink
end
class RailsAutolink::Railtie < Rails::Railtie
end
module ActionView
end
module ActionView::Helpers
end
module ActionView::Helpers::TextHelper
  def auto_link(text, *args, &block); end
  def auto_link_email_addresses(text, html_options = nil, options = nil); end
  def auto_link_urls(text, html_options = nil, options = nil); end
  def auto_linked?(left, right); end
  def conditional_html_safe(target, condition); end
  def conditional_sanitize(target, condition, sanitize_options = nil); end
end