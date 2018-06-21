Pod::Spec.new do |s|
  s.name             = 'UIComponents'
  s.version          = '0.1.3'
  s.summary          = 'Library of components for component-driven UI development'

  s.ios.deployment_target = '8.0'
  s.swift_version = ''

  s.homepage         = 'https://github.com/elano50/ui-components'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alex Kisel' => 'kipanca7@gmail.com' }
  s.source           = { :git => 'https://github.com/elano50/ui-components.git', :tag => s.version.to_s }

  s.source_files = 'UIComponents/*.swift', 'UIComponents/Style/*.swift'

  s.subspec 'TileTitleController' do |aji|
    aji.source_files = 'UIComponents/TileTitleDescriptionController.swift',
     'UIComponents/TileTitleDescriptionFactory.swift',
      'UIComponents/TileTitleDescriptionView.swift',
       'UIComponents/Style/*.swift'
  end
end