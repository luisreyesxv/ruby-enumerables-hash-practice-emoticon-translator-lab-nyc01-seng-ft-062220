# require modules here
require 'pry'
require 'yaml'
def load_library(library)
  beginning = YAML.load_file(library)
  beginning.each_with_object({}) do |(meaning_key,emoticon_array),fixed_array|
      if !fixed_array[meaning_key]
        fixed_array[meaning_key]={}
      end
      if !fixed_array[meaning_key][:english]
        fixed_array[meaning_key][:english] = emoticon_array[0]
      end
      if !fixed_array[meaning_key][:japanese]
        fixed_array[meaning_key][:japanese] = emoticon_array[1]
      end
  end
end

def get_japanese_emoticon(emoticon_library,english_emoticon)

  #answer = load_library(emoticon_library)
  #answer.find{|meaning_key,language_hash| language_hash[:english]==english_emoticon}[1][:japanese]
emoticon_library[get_english_meaning(emoticon_english_emoticon)]
 


end


def get_english_meaning(emoticon_library,emoticon)
  library = load_library(emoticon_library)
  test =library.find{|meaning_key,language_hash|  language_hash[:japanese]==emoticon || language_hash[:english]== emoticon}

  if test == nil
    return "Sorry, that emoticon was not found"
  else
    test[0]
  end
end
