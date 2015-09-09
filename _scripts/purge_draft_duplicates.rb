require_relative 'utils'

def posts_titles
  @posts_titles ||= Dir[Utils.absolute_path("../_posts/*")].map do |file|
    Utils.parse_front_matter(file)['title'].downcase
  end
end

def duplicate?(basename)
  posts_titles.any? { |title| basename.downcase.include?(title) }
end

Dir[Utils.absolute_path("../_drafts/*")].each do |file|
  basename = File.basename(file)
  File.delete(file) if duplicate?(basename)
end

