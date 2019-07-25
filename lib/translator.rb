# require modules here
require "yaml"

def load_library(file_path)
  load = YAML.load_file(file_path)
  
  new_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  
  file_path.each do |meaning, emoticon|
    english = emoticon[0]
    japanese = emoticon[1]
    new_hash["get_meaning"][japanese] = meaning
    new_hash["get_emoticon"][english] = japanese
  end
  return new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end