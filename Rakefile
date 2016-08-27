task :default do
  sh "ruby geojsoncat.rb | time ../tippecanoe/tippecanoe --force --base-zoom=g --minimum-zoom=14 --maximum-zoom=16 --minimum-detail=5 --exclude=rID --exclude=lfSpanFr --exclude=lfSpanTo --temporary-directory=/Volumes/My\\ Passport\\ for\\ Mac/tmp --output c.mbtiles; mbview c.mbtiles"
end

