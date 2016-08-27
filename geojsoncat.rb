require 'find'
require 'json'

count = 0
Find.find('/Volumes/My Passport for Mac/xyz/experimental_fgd/18') {|path|
  next unless path.end_with?('geojson')
  count += 1
  begin
    s = File.read(path)
    JSON::parse(s)
    print s
  rescue
    STDERR.print "\nError parsing #{path}\n"
    STDERR.print "#{s}\n"
  end
  #break if count == 30000
}
