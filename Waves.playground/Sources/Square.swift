import UIKit

public class Square: Shape {
    
    required public init(color: Color) {
        super.init(color: color)
        self.path = Square.path().cgPath
        self.lineWidth = 20
        self.strokeColor = color.toRGBColor().cgColor
        self.lineJoin = .round
        self.lineCap = .round
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override init(layer: Any) {
        super.init(layer: layer)
    }
    
    class func path() -> UIBezierPath {
        let path = UIBezierPath(rect: CGRect(x: 10, y: 10, width: 140, height: 140))
        return path
    }
}

