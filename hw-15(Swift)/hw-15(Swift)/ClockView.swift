//
//  ClockView.swift
//  hw-15(Swift)
//
//  Created by yurii zhuk on 6/15/18.
//  Copyright © 2018 yurii zhuk. All rights reserved.
//
import UIKit

class ViewController: UIViewController, CAAnimationDelegate {
    
    func rotateLayer(currentLayer:CALayer,dur:CFTimeInterval){
        
        let angle = degree2radian(360)
        
        // rotation http://stackoverflow.com/questions/1414923/how-to-rotate-uiimageview-with-fix-point
        let theAnimation = CABasicAnimation(keyPath:"transform.rotation.z")
        theAnimation.duration = dur
        // Make this view controller the delegate so it knows when the animation starts and ends
        theAnimation.delegate = self
        theAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        // Use fromValue and toValue
        theAnimation.fromValue = 0
        theAnimation.repeatCount = Float.infinity
        theAnimation.toValue = angle
        
        // Add the animation to the layer
        currentLayer.add(theAnimation, forKey:"rotate")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let endAngle = CGFloat(2 * Double.pi)
        
        
        let newView = ClockView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.width))
        
        
        self.view.addSubview(newView)
        let time = timeCoords(x: newView.frame.midX, y: newView.frame.midY, time: ctime(),radius: 50)
        // Do any additional setup after loading the view, typically from a nib.
        // Hours
        let hourLayer = CAShapeLayer()
        hourLayer.frame = newView.frame
        let path = CGMutablePath()
        
        path.move(to: CGPoint(x:newView.frame.midX, y:newView.frame.midY))
        path.addLine(to: CGPoint(x:time.h.x, y:time.h.y))
        hourLayer.path = path
        hourLayer.lineWidth = 4
        hourLayer.lineCap = kCALineCapRound
        hourLayer.strokeColor = UIColor.black.cgColor
        
        // see for rasterization advice http://stackoverflow.com/questions/24316705/how-to-draw-a-smooth-circle-with-cashapelayer-and-uibezierpath
        hourLayer.rasterizationScale = UIScreen.main.scale;
        hourLayer.shouldRasterize = true
        
        self.view.layer.addSublayer(hourLayer)
        // time it takes for hour hand to pass through 360 degress
        rotateLayer(currentLayer: hourLayer,dur:43200)
        
        // Minutes
        let minuteLayer = CAShapeLayer()
        minuteLayer.frame = newView.frame
        let minutePath = CGMutablePath()
        
        minutePath.move(to: CGPoint(x:newView.frame.midX, y:newView.frame.midY))
        minutePath.addLine(to: CGPoint(x:time.m.x, y:time.m.y))
        minuteLayer.path = minutePath
        minuteLayer.lineWidth = 3
        minuteLayer.lineCap = kCALineCapRound
        minuteLayer.strokeColor = UIColor.white.cgColor
        
        minuteLayer.rasterizationScale = UIScreen.main.scale;
        minuteLayer.shouldRasterize = true
        
        self.view.layer.addSublayer(minuteLayer)
        rotateLayer(currentLayer: minuteLayer,dur: 3600)
        
        // Seconds
        let secondLayer = CAShapeLayer()
        secondLayer.frame = newView.frame
        
        let secondPath = CGMutablePath()
        secondPath.move(to: CGPoint(x:newView.frame.midX, y:newView.frame.midY))
        secondPath.addLine(to: CGPoint(x:time.s.x, y: time.s.y))
        
        
        secondLayer.path = secondPath
        secondLayer.lineWidth = 1
        secondLayer.lineCap = kCALineCapRound
        secondLayer.strokeColor = UIColor.red.cgColor
        
        secondLayer.rasterizationScale = UIScreen.main.scale;
        
        secondLayer.shouldRasterize = true
        self.view.layer.addSublayer(secondLayer)
        rotateLayer(currentLayer: secondLayer,dur: 60)
        let centerPiece = CAShapeLayer()
        
        let circle = UIBezierPath(arcCenter: CGPoint(x:newView.frame.midX,y:newView.frame.midX), radius: 4.5, startAngle: 0, endAngle: endAngle, clockwise: true)
        // thanks to http://stackoverflow.com/a/19395006/1694526 for how to fill the color
        centerPiece.path = circle.cgPath
        centerPiece.fillColor = UIColor.white.cgColor
        self.view.layer.addSublayer(centerPiece)
        
        
    }
    
    
    
}


// MARK: Retrieve time
func ctime ()->(h:Int,m:Int,s:Int) {
    
    var t = time_t()
    time(&t)
    let x = localtime(&t) // returns UnsafeMutablePointer
    
    return (h:Int(x!.pointee.tm_hour),m:Int(x!.pointee.tm_min),s:Int(x!.pointee.tm_sec))
}
// END: Retrieve time

// MARK: Calculate coordinates of time
func  timeCoords(x:CGFloat,y:CGFloat,time:(h:Int,m:Int,s:Int),radius:CGFloat,adjustment:CGFloat=90)->(h:CGPoint, m:CGPoint,s:CGPoint) {
    let cx = x // x origin
    let cy = y // y origin
    var r  = radius // radius of circle
    var points = [CGPoint]()
    var angle = degree2radian(6)
    func newPoint (t:Int) {
        let xpo = cx - r * cos(angle * CGFloat(t)+degree2radian(adjustment))
        let ypo = cy - r * sin(angle * CGFloat(t)+degree2radian(adjustment))
        points.append(CGPoint(x: xpo, y: ypo))
    }
    // work out hours first
    var hours = time.h
    if hours > 12 {
        hours = hours-12
    }
    let hoursInSeconds = time.h*3600 + time.m*60 + time.s
    newPoint(t: hoursInSeconds*5/3600)
    
    // work out minutes second
    r = radius * 1.25
    let minutesInSeconds = time.m*60 + time.s
    newPoint(t: minutesInSeconds/60)
    
    // work out seconds last
    r = radius * 1.5
    newPoint(t: time.s)
    
    return (h:points[0],m:points[1],s:points[2])
}
// END: Calculate coordinates of hour

func degree2radian(_ a:CGFloat)->CGFloat {
    let b = CGFloat(Double.pi) * a/180
    return b
}


func circleCircumferencePoints(sides:Int, x:CGFloat,y:CGFloat, radius:CGFloat, adjustment:CGFloat=0)->[CGPoint] {
    let angle = degree2radian(360/CGFloat(sides))
    let cx = x // x origin
    let cy = y // y origin
    let r  = radius // radius of circle
    var i = sides
    var points = [CGPoint]()
    while points.count <= sides {
        let xpo = cx - r * cos(angle * CGFloat(i)+degree2radian(adjustment))
        let ypo = cy - r * sin(angle * CGFloat(i)+degree2radian(adjustment))
        points.append(CGPoint(x: xpo, y: ypo))
        i -= 1
    }
    return points
}

func secondMarkers(ctx:CGContext, x:CGFloat, y:CGFloat, radius:CGFloat, sides:Int, color:UIColor) {
    // retrieve points
    let points = circleCircumferencePoints(sides:sides,x:x,y:y,radius:radius)
    // create path
    let path = CGMutablePath()
    // determine length of marker as a fraction of the total radius
    var divider:CGFloat = 1/16
    for p in points.enumerated() {
        if p.offset % 5 == 0 {
            divider = 1/8
        }
        else {
            divider = 1/16
        }
        
        let xn = p.element.x + divider*(x-p.element.x)
        let yn = p.element.y + divider*(y-p.element.y)
        // build path
        path.move(to: CGPoint(x: p.element.x, y: p.element.y))
        path.addLine(to: CGPoint(x: xn, y: yn))
        path.closeSubpath()
        path.closeSubpath()
        // add path to context
        ctx.addPath(path)
    }
    // set path color
    let cgcolor = color.cgColor
    ctx.setStrokeColor(cgcolor)
    ctx.setLineWidth(3.0)
    ctx.strokePath()
    
}
func drawText(rect:CGRect, ctx:CGContext, x:CGFloat, y:CGFloat, radius:CGFloat, sides:NumberOfNumerals, color:UIColor) {
    
    // Flip text co-ordinate space, see: http://blog.spacemanlabs.com/2011/08/quick-tip-drawing-core-text-right-side-up/
    ctx.translateBy(x: 0.0, y: rect.height)
    ctx.scaleBy(x: 1.0, y: -1.0)
    // dictates on how inset the ring of numbers will be
    let inset:CGFloat = radius/3.5
    // An adjustment of 270 degrees to position numbers correctly
    let points = circleCircumferencePoints(sides: sides.rawValue,x: x,y: y,radius: radius-inset,adjustment:270)
    // multiplier enables correcting numbering when fewer than 12 numbers are featured, e.g. 4 sides will display 12, 3, 6, 9
    let multiplier = 12/sides.rawValue
    
    for p in points.enumerated() {
        if p.offset > 0 {
            // Font name must be written exactly the same as the system stores it (some names are hyphenated, some aren't) and must exist on the user's device. Otherwise there will be a crash. (In real use checks and fallbacks would be created.) For a list of iOS 7 fonts see here: http://support.apple.com/en-us/ht5878
            let aFont = UIFont(name: "DamascusBold", size: radius/5)
            // create a dictionary of attributes to be applied to the string
            let attr:CFDictionary = [NSAttributedStringKey.font:aFont!,NSAttributedStringKey.foregroundColor:UIColor.white] as CFDictionary
            // create the attributed string
            let str = String(p.offset*multiplier)
            let text = CFAttributedStringCreate(nil, str as CFString!, attr)
            // create the line of text
            let line = CTLineCreateWithAttributedString(text!)
            // retrieve the bounds of the text
            let bounds = CTLineGetBoundsWithOptions(line, CTLineBoundsOptions.useOpticalBounds)
            // set the line width to stroke the text with
            ctx.setLineWidth(1.5)
            // set the drawing mode to stroke
            ctx.setTextDrawingMode(.stroke)
            // Set text position and draw the line into the graphics context, text length and height is adjusted for
            let xn = p.element.x - bounds.width/2
            let yn = p.element.y - bounds.midY
            ctx.textPosition = CGPoint(x: xn, y: yn)
            // the line of text is drawn - see https://developer.apple.com/library/ios/DOCUMENTATION/StringsTextFonts/Conceptual/CoreText_Programming/LayoutOperations/LayoutOperations.html
            // draw the line of text
            CTLineDraw(line, ctx)
        }
    }
    
}

enum NumberOfNumerals:Int {
    case two = 2, four = 4, twelve = 12
}

class ClockView: UIView {
    
    
    override func draw(_ rect:CGRect)
        
    {
        
        // obtain context
        let ctx = UIGraphicsGetCurrentContext()
        
        // decide on radius
        let rad = rect.width/3.5
        
        let endAngle = CGFloat(2 * Double.pi)
        
        // add the circle to the context
        ctx?.addArc(center: CGPoint(x:rect.midX, y:rect.midY), radius: rad, startAngle: 0, endAngle: endAngle, clockwise: true)
        
        
        // set fill color
        ctx?.setFillColor(UIColor.gray.cgColor)
        
        // set stroke color
        ctx?.setStrokeColor(UIColor.white.cgColor)
        
        // set line width
        ctx?.setLineWidth(4.0)
        
        // use to fill and stroke path (see http://stackoverflow.com/questions/13526046/cant-stroke-path-after-filling-it )
        
        // draw the path
        ctx?.drawPath(using: .fillStroke)
        
        
        secondMarkers(ctx: ctx!, x: rect.midX, y: rect.midY, radius: rad, sides: 60, color: UIColor.white)
        
        drawText(rect:rect, ctx: ctx!, x: rect.midX, y: rect.midY, radius: rad, sides: .twelve, color: UIColor.white)
        
        
        
        
    }
}
