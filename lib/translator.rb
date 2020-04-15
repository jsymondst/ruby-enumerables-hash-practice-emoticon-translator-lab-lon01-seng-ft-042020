# require modules here
require "yaml"

def load_library(filepath)
  # code goes here
  rawYAML = YAML.load_file(filepath)
  libHash = {}
  rawYAML.each do |key,value|
    libHash[key.to_sym]={
      english: value[0],
      japanese: value[1]
    }
  end
  libHash
end

puts load_library("lib/emoticons.yml")

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
