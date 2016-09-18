#!/usr/bin/env ruby
#
# Public: Generates the README.md file for the Slack-Emoji repo, which will include thumbnails of all images.
#
# Example Usage
#   $ ruby readmegen.rb
#   # => 'README.md' file.
#
#

file_list = Dir["emoji/*"]

File.open('README.md', 'w') { |file|
  file.write(<<-EORHEAD
# Slack-Emoji
A bunch of Slack Emoji which have accumulated over time. Use 'em if you wish.
<div height="220">
EORHEAD
)
  file_list.each { |f|
    file.write("  <img src='#{f}' height='22' />\n")
  }
  file.write("</div>")
}
