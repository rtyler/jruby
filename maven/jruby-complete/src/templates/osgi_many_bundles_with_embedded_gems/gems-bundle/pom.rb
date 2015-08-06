#-*- mode: ruby -*-

gemfile

id 'org.jruby.osgi:gems-bundle', '1.0'

packaging 'bundle'

jruby_plugin! :gem, :includeRubygemsInResources => true

plugin( 'org.apache.felix:maven-bundle-plugin', '2.4.0',
        :instructions => {
          'Export-Package' => 'org.jruby.osgi.gems',
          'Include-Resource' => '{maven-resources}'
        } ) do
  # TODO fix DSL
  @current.extensions = true
end
