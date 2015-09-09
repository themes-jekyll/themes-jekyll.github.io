require_relative 'utils'

previous = []

Utils.for_each_theme(folder = '_drafts') do |theme, file|
  File.delete(file) if previous.include?(theme['title'])
  previous << theme['title']
end

