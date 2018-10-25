require "yaml"

def load_library(file_path)
  lolwtf = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(file_path).each do |name, emoticon_array|
    eng_emoticon = emoticon_array[0] 
    jap_emoticon = emoticon_array[1] 
    lolwtf["get_meaning"][emoticon_array[1]] = name
    lolwtf["get_emoticon"][emoticon_array[0]] = jap_emoticon
  end
  lolwtf
end

def get_japanese_emoticon(file_path, emoticon)
  translator = load_library(file_path)
  jap_emoticon = translator
  else puts "Sorry, that emoticon was not found" 
end

def get_english_meaning
  # code goes here
end