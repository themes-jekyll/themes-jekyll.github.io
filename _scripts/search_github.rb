require 'octokit'
require 'base64'
require_relative 'utils'

def drafts
  @drafts ||= Utils.find_or_create_folder('../_drafts')
end

def octokit
  # Access Token: https://help.github.com/articles/creating-an-access-token-for-command-line-use/
  @octokit ||= Octokit::Client.new(access_token: ENV['GITHUB_ACCESS_TOKEN'])
end

def root_file(item, file)
  item[:root_contents].find {|f| f[:name].downcase.include?(file.downcase) }
end

def contents(item, file)
  file = root_file(item, file)
  file && Base64.decode64(octokit.contents(item[:full_name], path: file[:path])[:content])
end

def githbub_io(item)
  item[:name].include?('github.io') ? item[:name] :
    "https://#{item[:owner][:login]}.github.io/#{item[:name]}"
end

def ensure_http_prefix(href)
  href && (href.start_with?('http') ? href : "http://#{href}")
end

def homepage(item)
  item[:homepage] || contents(item, 'CNAME') || item[:has_pages] && githbub_io(item)
end

def licence_link(item)
  licence = root_file(item, 'licen')
  licence && licence[:html_url]
end

def markdown_file(item)
%{---
layout: post
title: #{item[:name]}
homepage: #{item[:html_url]}
demo: #{ensure_http_prefix(homepage(item))}
date: #{item[:created_at].strftime("%F %T")}
licence_link: #{licence_link(item)}
---
#{contents(item, 'README')}
}
end

def file_name(item)
  "#{item[:created_at].strftime("%F")}-#{item[:name]}.markdown"
end

(1..10).each do |i|
  puts "****************** Page #{i} **************************\n"
  octokit.search_repositories('jekyll', per_page: 100, page: i)[:items].each do |item|
    puts "#{item[:full_name]}"

    next if item[:name].downcase == 'jekyll'
    item[:root_contents] = octokit.contents(item[:full_name])
    next unless root_file(item, '_config.yml')
    File.write(File.expand_path(file_name(item), drafts), markdown_file(item))
  end
end
