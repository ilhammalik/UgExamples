#if os(Linux) || os(Android)
import SwiftFoundation
#endif
import ScadeKit

@objc class Main : ObjectiveC.NSObject, SCDApplication {

 	let moduleName  = "UgPagesDemo"
	var mainView: SCDLatticeView!
  	var mainAdapter: MainPageAdapter!
  	
	func main() {
		SCDRuntime.initRuntime(self)
		saveAndLoadData()
	}
  	
  	func saveAndLoadData() {
  		
		let data = "CrossPlatformSwift rocks"
		let location = "mystringdata.data"
		SCDRuntime.saveFile(location, content:data)
		
		let data2 = SCDRuntime.loadFile(location)
		let eq = data == data2
		print("worked = \(eq)")
  	}
}
