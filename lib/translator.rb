# require modules here
require "yaml"

def load_library(lib_path)
  # code goes here
  rawYAML = YAML.load_file(lib_path)
  resultHash = {}
  rawYAML.each do |key,value|
    resultHash[key.to_sym]={
      english: value[0],
      japanese: value[1]
    }
  end
  # puts libHash
  resultHash
end

# puts load_library("lib/emoticons.yml")

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(lib_path, emot)
  # code goes here
  lib_hash = load_library(lib_path)
  lib_hash.each do |key,values|
    if lib_hash[key].has_value?(emot)
      return key.to_s
    end
  end
end
