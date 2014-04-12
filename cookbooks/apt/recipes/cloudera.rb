apt_repository 'cloudera' do
  uri          'http://archive.cloudera.com/cm5/ubuntu/precise/amd64/cm5'
  arch         'amd64'
  distribution 'precise-cm5'
  components   ['contrib']
  key          'http://archive.cloudera.com/debian/archive.key'
end
