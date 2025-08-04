import flixel.ui.FlxVirtualPad;

class Config {
    // Default control mode (0 = vpad_right, 1 = vpad_left, 2 = keyboard, 3 = vpad_custom, 4 = hitbox)
    private var controlMode:Int = 4; // Default to hitbox
    
    public function new() {
        // Constructor - you could load settings from a file here if needed
    }
    
    public function getcontrolmode():Int {
        return controlMode;
    }
    
    public function setcontrolmode(mode:Int):Void {
        controlMode = mode;
    }
    
    public function loadcustom(vPad:FlxVirtualPad):FlxVirtualPad {
        // This would typically load custom vPad positions/settings
        // For now, just return the vPad unchanged
        // You could add custom positioning logic here if needed
        return vPad;
    }
}