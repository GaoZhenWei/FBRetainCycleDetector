Pod::Spec.new do |s|
  s.name         = "FBRetainCycleDetector"
  s.version      = "0.2.2"
  s.summary      = "Library that helps with detecting retain cycles in iOS apps"
  s.homepage     = "https://github.com/GaoZhenWei/FBRetainCycleDetector"
  s.license      = "BSD"
  s.author       = { "Grzegorz Pstrucha" => "gricha@fb.com" }
  s.platform     = :ios, "7.0"
  s.source       = {
    :git => "https://github.com/GaoZhenWei/FBRetainCycleDetector.git",
    :tag => "0.2.2"
  }
  s.source_files  = "FBRetainCycleDetector", "{FBRetainCycleDetector,fishhook}/**/*.{h,m,mm,c}"

  mrr_files = [
    'FBRetainCycleDetector/Associations/FBAssociationManager.h',
    'FBRetainCycleDetector/Associations/FBAssociationManager.mm',
    'FBRetainCycleDetector/Layout/Blocks/FBBlockStrongLayout.h',
    'FBRetainCycleDetector/Layout/Blocks/FBBlockStrongLayout.m',
    'FBRetainCycleDetector/Layout/Blocks/FBBlockStrongRelationDetector.h',
    'FBRetainCycleDetector/Layout/Blocks/FBBlockStrongRelationDetector.m',
    'FBRetainCycleDetector/Layout/Classes/FBClassStrongLayoutHelpers.h',
    'FBRetainCycleDetector/Layout/Classes/FBClassStrongLayoutHelpers.m',
  ]

  files = Pathname.glob("FBRetainCycleDetector/**/*.{h,m,mm}")
  files = files.map {|file| file.to_path}
  files = files.reject {|file| mrr_files.include?(file)}

  s.requires_arc = files + [
    'fishhook/**/*.{c,h}',
    "FBRetainCycleDetector/Associations/Internal/FBAssociationManager+Internal.h",
    "FBRetainCycleDetector/Detector/FBNodeEnumerator.h",
    "FBRetainCycleDetector/Detector/FBRetainCycleDetector+Internal.h",
    "FBRetainCycleDetector/Detector/FBRetainCycleDetector.h",
    "FBRetainCycleDetector/FBRetainCycleUtils.h",
    "FBRetainCycleDetector/Filtering/FBStandardGraphEdgeFilters.h",
    "FBRetainCycleDetector/Graph/FBObjectGraphConfiguration.h",
    "FBRetainCycleDetector/Graph/FBObjectiveCBlock.h",
    "FBRetainCycleDetector/Graph/FBObjectiveCGraphElement.h",
    "FBRetainCycleDetector/Graph/FBObjectiveCObject.h",
    "FBRetainCycleDetector/Graph/Internal/FBObjectiveCGraphElement+Internal.h",
    "FBRetainCycleDetector/Graph/Specialization/FBObjectiveCNSCFTimer.h",
    "FBRetainCycleDetector/Layout/Blocks/FBBlockInterface.h",
    "FBRetainCycleDetector/Layout/Classes/FBClassStrongLayout.h",
    "FBRetainCycleDetector/Layout/Classes/Parser/BaseType.h",
    "FBRetainCycleDetector/Layout/Classes/Parser/FBStructEncodingParser.h",
    "FBRetainCycleDetector/Layout/Classes/Parser/Struct.h",
    "FBRetainCycleDetector/Layout/Classes/Parser/Type.h",
    "FBRetainCycleDetector/Layout/Classes/Reference/FBIvarReference.h",
    "FBRetainCycleDetector/Layout/Classes/Reference/FBObjectInStructReference.h",
    "FBRetainCycleDetector/Layout/Classes/Reference/FBObjectReference.h",
    "FBRetainCycleDetector/FBRetainCycleUtils.m",
    "FBRetainCycleDetector/Graph/FBObjectGraphConfiguration.m",
    "FBRetainCycleDetector/Graph/FBObjectiveCBlock.m",
    "FBRetainCycleDetector/Graph/FBObjectiveCObject.m",
    "FBRetainCycleDetector/Layout/Classes/Reference/FBIvarReference.m",
    "FBRetainCycleDetector/Layout/Classes/Reference/FBObjectInStructReference.m",
    "FBRetainCycleDetector/Detector/FBNodeEnumerator.mm",
    "FBRetainCycleDetector/Detector/FBRetainCycleDetector.mm",
    "FBRetainCycleDetector/Filtering/FBStandardGraphEdgeFilters.mm",
    "FBRetainCycleDetector/Graph/FBObjectiveCGraphElement.mm",
    "FBRetainCycleDetector/Graph/Specialization/FBObjectiveCNSCFTimer.mm",
    "FBRetainCycleDetector/Layout/Classes/FBClassStrongLayout.mm",
    "FBRetainCycleDetector/Layout/Classes/Parser/FBStructEncodingParser.mm",
    "FBRetainCycleDetector/Layout/Classes/Parser/Struct.mm"
  ]
  s.public_header_files = [
    'FBRetainCycleDetector/Detector/FBRetainCycleDetector.h',
    'FBRetainCycleDetector/Associations/FBAssociationManager.h',
    'FBRetainCycleDetector/Graph/FBObjectiveCBlock.h',
    'FBRetainCycleDetector/Graph/FBObjectiveCGraphElement.h',
    'FBRetainCycleDetector/Graph/Specialization/FBObjectiveCNSCFTimer.h',
    'FBRetainCycleDetector/Graph/FBObjectiveCObject.h',
    'FBRetainCycleDetector/Graph/FBObjectGraphConfiguration.h',
    'FBRetainCycleDetector/Filtering/FBStandardGraphEdgeFilters.h',
  ]

  s.framework = "Foundation", "CoreGraphics", "UIKit"
  s.library = 'c++'
end
