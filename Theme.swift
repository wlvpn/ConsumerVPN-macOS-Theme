//
// Created by Kevin Hallmark on 4/25/18.
// Copyright (c) 2018 WLVPN. All rights reserved.
//

import Foundation

final class Theme {
    static let brandName = "Consumer VPN"

    static let signupURL = "https://www.wlvpn.com"
    static let forgotPasswordURL = "https://www.wlvpn.com"
    static let contactSupportURL = "https://www.wlvpn.com"

    static let usernameSuffix = "<suffix>"
    static let apiKey = "<apikey>"
    
    static let serverListHeaderFontSize: CGFloat = 12.0
    // header height will scale based on the font size
    static let serverListHeaderHeight: CGFloat = serverListHeaderFontSize + 14.0
	
	static let drawCustomShield = true
}

extension NSColor {
    // MARK: General Theme
    static var primaryText: NSColor {
        return NSColor.white
    }

    static var primaryAccent: NSColor {
        return NSColor(hexColorString: "4A90E2")
    }

    static var secondaryAccent: NSColor {
        return NSColor.white
    }

    static var primaryBackground: NSColor {
        return NSColor(hexColorString: "1E1E1E")
    }

    static var selectedServer: NSColor {
        return NSColor(hexColorString: "2A2A2A")
    }


    // Main Window Colors

    static var mainWindowText: NSColor {
        return primaryText
    }

    static var headerBackground : NSColor {
        return primaryBackground
    }

    // About View

    static var aboutViewBackground: NSColor {
        return primaryBackground
    }

    // MARK: Login View

    // Login View
    static var loginViewBackground: NSColor {
        return primaryBackground
    }

    static var loginViewText : NSColor {
        return mainWindowText
    }
    
    static var loginViewUsernameAccent : NSColor {
        return NSColor(hexColorString: "FF9B9B9B")
    }
    
    static var loginViewPasswordAccent : NSColor {
        return NSColor(hexColorString: "FF9B9B9B")
    }
    
    static var loginViewUsernameHighlight : NSColor {
        return NSColor(hexColorString: "AA212D")
    }
    
    static var loginViewPasswordHighlight : NSColor {
        return NSColor(hexColorString: "AA212D")
    }

    static var loginButton: NSColor {
        return primaryAccent
    }

    static var loginButtonText: NSColor {
        return primaryText
    }
    
    static var forgotPasswordButtonText: NSColor {
        return NSColor(hexColorString: "FF9B9B9B")
    }
    
    static var loginViewGradientTop: NSColor {
        return NSColor(hexColorString: "090A0E")
    }
    
    static var loginViewGradientMid: NSColor {
        return NSColor(hexColorString: "4A4E5C")
    }
    
    static var loginViewGradientBottom: NSColor {
        return NSColor(hexColorString: "202534")
    }
    
    static var loginViewTallTriangleBg: NSColor {
        return NSColor(hexColorString: "2F323F")
    }
    
    static var loginViewShortTriangleBg: NSColor {
        return NSColor(hexColorString: "262a37")
    }
	
	static var loginViewTallTriangleShadow: NSColor {
		return NSColor.black
    }

	static var loginViewShortTriangleShadow: NSColor {
		return NSColor.black
    }
    
    // MARK: LoadingView
    static var loadingAnimationCircleColor: NSColor {
        return NSColor(hexColorString: "FF4A90E2")
    }
	
	static var loadingAnimationLabelColor: NSColor {
        return NSColor(hexColorString: "FF4A90E2")
    }

    // MARK: Connect View
    static var connectViewBackground: NSColor {
        return primaryBackground
    }

    static var connectViewText : NSColor {
        return primaryText
    }

    // MARK: Server Select Button
    static var serverSelectText: NSColor {
        return primaryAccent
    }
    
    // MARK: Server Location Button
    static var serverLocationButton: NSColor {
        return NSColor(hexColorString: "63666F")
    }
    
    // MARK: Connect Button
    static var connectButton: NSColor {
        return NSColor.systemBlue
    }

    static var connectButtonText : NSColor {
        return NSColor.white
    }

    // MARK: Connect View
    static var disconnectViewText : NSColor {
        return primaryAccent
    }

    // MARK: Disconnect Button
    static var disconnectButton: NSColor {
        return systemBlue
    }

    static var disconnectButtonText : NSColor {
        return NSColor.white
    }
    
    static var disconnectLabelText : NSColor {
        return NSColor.white
    }
	
	static var disconnectViewIcons : NSColor {
		return NSColor.primaryAccent
	}
    
    // MARK: Cancel Button
    static var cancelButton: NSColor {
        return systemRed
    }
    
    static var cancelButtonText: NSColor {
        return white
    }

    // MARK: Server Select Screen

    static var serverListBackground : NSColor {
        return primaryBackground
    }

    static var serverListMouseOverBackground : NSColor {
        return selectedServer
    }

    static var serverListExpandedBackground : NSColor {
        return serverListMouseOverBackground
    }

    static var serverListHeader : NSColor {
        return NSColor(hexColorString: "595959")
    }

    static var serverListHeaderText : NSColor {
        return primaryText
    }

    static var serverListRowDivider : NSColor {
        return NSColor.black
    }

    static var serverListText : NSColor {
        return primaryText
    }

    static var serverListSubtext : NSColor {
        return primaryText
    }
    
    static var serverCountryText : NSColor {
        return primaryText.withAlphaComponent(0.85)
    }
    
    static var serverCityText : NSColor {
        return primaryText.withAlphaComponent(0.55)
    }

    static var serverSelectRow1: NSColor {
        return NSColor(hexColorString: "282828")
    }
    
    static var serverSelectRow2: NSColor {
        return NSColor(hexColorString: "313131")
    }
    
    static var pingText: NSColor {
        return NSColor(hexColorString: "7ED321")
    }
    
    // MARK: Server Search Field
    static var searchTextColor: NSColor {
        return NSColor.white.withAlphaComponent(0.85)
    }
	
	// MARK: - Drawn Shield Colors
	static var shieldGradientTop: NSColor {
		return NSColor.primaryAccent.lighter
	}
	
	static var shieldGradientBottom: NSColor {
		return .primaryAccent
	}
	
	static var shieldCheckmark: NSColor {
		return .primaryAccent
	}
}



// To Help With Color Variations; Can Be Used Indirectly On Theme Values above
extension NSColor {
	
	/// A lighter representation of the caller's color value. This is done by increasing the `brightness` value by 50%.
	var lighter: NSColor {
		var h: CGFloat = 0
		var s: CGFloat = 0
		var b: CGFloat = 0
		var a: CGFloat = 0
		self.getHue(&h, saturation: &s, brightness: &b, alpha: &a)
		return NSColor(hue: h, saturation: s, brightness: b * 1.5, alpha: a)
	}
	
	/// A darker representation of the caller's color value. This is done be decreasing the `brightness` value by 25%.
	var darker: NSColor {
		var h: CGFloat = 0
		var s: CGFloat = 0
		var b: CGFloat = 0
		var a: CGFloat = 0
		self.getHue(&h, saturation: &s, brightness: &b, alpha: &a)
		return NSColor(hue: h, saturation: s, brightness: b * 0.75, alpha: a)
	}
}

extension ShieldView {
	/**
	* Override this function to provide a custom drawn shield view instead of the default.
	*/
	func drawCustom() {
	}
	
	/**
	* Provide a custom shield for the disconnected view.
	*/
	func drawCustomDisconnected() {
		drawCustom()
	}
	
}
