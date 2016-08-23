require 'find'

count = 0
Find.find('/Volumes/My Passport for Mac/xyz/experimental_fgd/18') {|path|
  next unless path.end_with?('geojson')
  count += 1
  print File.read(path)
  #break if count == 30000
}
