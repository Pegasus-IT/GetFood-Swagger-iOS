Pod::Spec.new do |s|
  s.name = 'GetFoodSwaggerAPI'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = 'v1.0.0'
  s.source = { :git => 'git@github.com:Kapulara/GetFood-Swagger-iOS.git', :tag => 'v1.0.0' }
  s.authors = 'Swagger Codegen'
  s.license = MIT
  s.homepage = 'https://github.com/Kapulara/GetFood-Swagger-iOS'
  s.summary = 'Swagger API for GetFood'
  s.source_files = 'GetFoodSwaggerAPI/Classes/**/*.swift'
  s.dependency 'PromiseKit/CorePromise', '~> 4.4.0'
  s.dependency 'Alamofire', '~> 4.5.0'
end
