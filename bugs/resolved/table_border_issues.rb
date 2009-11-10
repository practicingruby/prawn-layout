# As of b8e6f2f1333e03cc3990307b6ce3e52481fcf367, a visible gap was left between
# cells when using :underline_header
# 
# This was fixed by a series of patches from:
#   http://github.com/corny/prawn-layout

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', '..', 'lib')

require "rubygems"
require "prawn"
require "prawn/layout"

Prawn::Document.generate("table.pdf") do
  table [%w[a b c], %w[d e f]], :border_style => :underline_header, 
                                :row_colors   => :pdf_writer,
                                :headers      => %w[foo bar baz] 
end
