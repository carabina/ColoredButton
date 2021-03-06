Pod::Spec.new do |s|
    s.name             = 'StartButton'
    s.version          = '1.1.3'
    s.summary          = 'This is a button with two actions and changing layout.'

    s.description      = <<-DESC
    You can use this if you need a button with multiple actions and which dynamically changes its layout when you tap on it.
    DESC

    s.homepage         = 'https://github.com/DianaDaia/ColoredButton'
    s.license          = { :type => 'MIT', :file => 'LICENSE.txt' }
    s.author           = { 'Diana Daia' => 'diana.daia@icloud.com' }
    s.source           = { :git => "#{s.homepage}.git", :tag => s.version.to_s }

    s.ios.deployment_target = '11.0'
    s.source_files = 'StartButton/ColoredButton.swift'

end
