require_relative 'utils'

Utils.find_or_create_folder('reports')

candidates = []

Utils.for_each_theme('_drafts') do |theme, file|
	full_text = File.read(file).downcase

  candidate = {
  	basename: File.basename(file),
  	theme_or_template: full_text.include?('theme') || full_text.include?('template'),
  	has_license: !!theme['licence_link'],
  	has_demo: !!theme['demo']
  }

  candidate[:score] = candidate.reduce(0) { |score, (k, v)| score += v ? 1 : 0 }
  candidates.push(candidate)
end

Utils.create_report('reports/draft_candidates.txt') do |report|
	candidates.sort_by { |candidate| candidate[:score] }.each do |candidate|
		report << "#{candidate[:basename]} - #{candidate[:score]}:"
		report << ' theme_or_template' if candidate[:theme_or_template]
		report << ' has_license' if candidate[:has_license]
		report << ' has_demo' if candidate[:has_demo]
		report << "\n"
	end
end
