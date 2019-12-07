<<<<<<< HEAD
require 'yaml'
require 'pry'# require modules here

def load_library(file_path)
  library = YAML.load_file("./lib/emoticons.yml")
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, emoticons|
    result["get_meaning"][emoticons[1]] = meaning
    result["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  result# code goes here
=======
require 'yaml'# require modules here

def load_library
  file = YAML.load_file('emoticons.yml')
  puts file.inspect# code goes here
>>>>>>> b126ceca27c2575ef6afaa4e147a56489f830779
end

def get_japanese_emoticon(file_path = './lib/emoticons.yml', english_emoticon)
  library = load_library(file_path)
  if library["get_emoticon"].include?(english_emoticon)
    library["get_emoticon"][english_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

<<<<<<< HEAD
def get_english_meaning(file_path = './lib/emoticons.yml', japanese_emoticon)
  library = load_library(file_path)
  if library["get_meaning"].include?(japanese_emoticon)
    library ["get_meaning"][japanese_emoticon]
  else
    "Sorry, that emoticon was not found"
  end 
=======
def get_english_meaning
  # code goes here
>>>>>>> b126ceca27c2575ef6afaa4e147a56489f830779
end
