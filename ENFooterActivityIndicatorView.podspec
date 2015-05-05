#
# Be sure to run `pod lib lint ENFooterActivityIndicatorView.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ENFooterActivityIndicatorView"
  s.version          = "0.1.0"
  s.summary          = "UITableView's footer activity indicator."
  s.description      = <<-DESC
                        * Add an activity indicator view to your table view
                        * Handle when it scrolls to the bottom
                       DESC
  s.homepage         = "https://github.com/evnaz/ENFooterActivityIndicatorView"
  s.license          = 'MIT'
  s.author           = { "Evgeny Nazarov" => "e.nazarov@yahoo.com" }
  s.source           = { :git => "https://github.com/evnaz/ENFooterActivityIndicatorView.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'ENTableFooterActivityIndicator/ENTableFooterActivityView/**/*'
  
end
