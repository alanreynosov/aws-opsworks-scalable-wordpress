
#remote_file '/tmp/wordpress.tar.gz' do
#	source 'https://wordpress.org/latest.tar.gz'
#end

include_recipe 'tar'

tar_extract 'https://wordpress.org/latest.tar.gz' do
  target_dir '/var/www/html/'
  tar_flags [ '-P', '--strip-components 1' ]
end