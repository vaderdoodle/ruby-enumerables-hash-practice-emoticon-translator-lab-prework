# require modules here
require "yaml"

def load_library(file_path)
  library = YAML.load_file(file_path)
  
  new_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  
  library.each do |meaning, translation|
    english = translation[0] #first part of Array of emoticons
    japanese = translation[1] #second " "
    new_hash["get_meaning"][japanese] = meaning
    new_hash["get_emoticon"][english] = japanese
  end
  return new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  #code goes here
end