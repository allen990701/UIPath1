//
//  ViewController.swift
//  UIPath1
//
//  Created by cgh on 2019/11/13.
//  Copyright © 2019 Razeware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        let image = UIImage(named: "cat.png")
        let imageView = UIImageView(image:image)

        //let backgroundView = UIView(frame: imageView.frame)
        //backgroundView.addSubview(imageView)

        let backgroundView = UIView(frame: CGRect(x:0,y:0,width:500,height:500))
        backgroundView.backgroundColor = UIColor.white

        let alphaDesignFirst: CGFloat = 0.5
        let RGBaSettingBlue = UIColor(red:0,green:0,blue:1,alpha:alphaDesignFirst)
        let RGBaBlue = CGColor(srgbRed: 0, green: 0, blue: 1, alpha: alphaDesignFirst)
        let RGBaBlack = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 1)
        let RGBaEyesWhite = CGColor(srgbRed: 238/255, green: 237/255, blue: 254/255, alpha: 0)

        let RGBaClear = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 0)

        //陰影
        let alphaShadowColor: CGFloat = 1
        let RGBaSettingShaColor = UIColor(red:207/255,green:206/255,blue:206/255,alpha:alphaShadowColor)
        let RGBaShadowColor = CGColor(srgbRed: 207/255, green: 206/255, blue: 206/255, alpha: alphaShadowColor)

        //框線
        let alphaStrokeColor: CGFloat = 1
        let shapeStrokeColor = UIColor(red:0,green:0,blue:0,alpha:alphaStrokeColor).cgColor
        let strokeLinesetting: CGFloat = 3



        //陰影
        let shadowView = UIView(frame: backgroundView.frame)
        shadowView.backgroundColor = RGBaSettingShaColor
        let shadowPath1 = UIBezierPath()

        shadowPath1.move(to: CGPoint(x: 189,y: 34))
        shadowPath1.addQuadCurve(to: CGPoint(x: 151,y: 183), controlPoint: CGPoint(x: 148,y: 23))
        shadowPath1.addLine(to: CGPoint(x: 147,y: 188))
        shadowPath1.addQuadCurve(to: CGPoint(x: 189,y: 34), controlPoint: CGPoint(x: 111,y: 24))

        shadowPath1.close()

        let shadowShape1 = CAShapeLayer()
        shadowShape1.path = shadowPath1.cgPath
        shadowView.layer.mask = shadowShape1
        shadowShape1.fillColor = RGBaShadowColor
        shadowShape1.strokeColor = shapeStrokeColor
        shadowShape1.lineWidth = strokeLinesetting
        //shadowView.layer.addSublayer(shadowShape1)

        backgroundView.addSubview(shadowView)

        let shadowView2 = UIView(frame: backgroundView.frame)
        shadowView2.backgroundColor = RGBaSettingShaColor

        let shadowPath2 = UIBezierPath()

        shadowPath2.move(to: CGPoint(x: 156,y: 179))
        shadowPath2.addQuadCurve(to: CGPoint(x: 134,y: 309), controlPoint: CGPoint(x: 121,y: 273))
        shadowPath2.addQuadCurve(to: CGPoint(x: 230,y: 476), controlPoint: CGPoint(x: 53,y: 451))
        shadowPath2.addLine(to: CGPoint(x: 113, y: 469))
        shadowPath2.addQuadCurve(to: CGPoint(x: 110,y: 307), controlPoint: CGPoint(x: 38,y: 398))
        shadowPath2.addQuadCurve(to: CGPoint(x: 154,y: 179), controlPoint: CGPoint(x: 90,y: 259))

        shadowPath2.close()

        let shadowShape2 = CAShapeLayer()
        shadowShape2.path = shadowPath2.cgPath
        shadowView2.layer.mask = shadowShape2
        shadowShape2.fillColor = RGBaShadowColor
        shadowShape2.strokeColor = shapeStrokeColor
        shadowShape2.lineWidth = strokeLinesetting
        //shadowView2.layer.addSublayer(shadowShape2)

        backgroundView.addSubview(shadowView2)







        // 右耳
        //let earView1 = UIView(frame: imageView.frame)
        let earView1 = UIView(frame: backgroundView.frame)
        //earView1.backgroundColor = RGBaSettingBlue // 檢視設計時藍底圖
        let earPath1 = UIBezierPath()
        earPath1.move(to: CGPoint(x: 357, y: 178))
        earPath1.addQuadCurve(to: CGPoint(x: 321, y: 31), controlPoint: CGPoint(x: 395, y: 38))
        earPath1.addQuadCurve(to: CGPoint(x: 278, y: 153), controlPoint: CGPoint(x: 246, y: 35))
        //earPath1.addQuadCurve(to: CGPoint(x: 282, y: 158), controlPoint: CGPoint(x: 279, y: 158))
        //earPath1.addQuadCurve(to: CGPoint(x: 350, y: 170), controlPoint: CGPoint(x: 332, y: 174))
        //earPath1.close()


        let earShape1 = CAShapeLayer()
        earShape1.path = earPath1.cgPath
        //earView1.layer.mask = earShape1
        earShape1.fillColor = RGBaClear
        earShape1.strokeColor = shapeStrokeColor
        earShape1.lineWidth = strokeLinesetting
        earView1.layer.addSublayer(earShape1)
        //上列這行與earView1.backgroundColor切換使用（藍底圖＆完成視圖)
        backgroundView.addSubview(earView1)




        // 左耳
        //let earView2 = UIView(frame: imageView.frame)
        let earView2 = UIView(frame: backgroundView.frame)
        //earView2.backgroundColor = RGBaSettingBlue // 檢視設計時藍底圖
        let earPath2 = UIBezierPath()
        earPath2.move(to: CGPoint(x: 234, y: 156))
        //earPath2.addQuadCurve(to: CGPoint(x: 234, y: 156), controlPoint: CGPoint(x: 231, y: 157))
        earPath2.addQuadCurve(to: CGPoint(x: 175, y: 34), controlPoint: CGPoint(x: 261, y: 30))
        earPath2.addQuadCurve(to: CGPoint(x: 146, y: 188), controlPoint: CGPoint(x: 114, y: 43))
        //earPath2.addCurve(to: CGPoint(x: 147, y: 189), controlPoint1: CGPoint(x: 89.5, y: 44.5), controlPoint2: CGPoint(x: 123.5, y: 108.5))
        //earPath2.addQuadCurve(to: CGPoint(x: 224, y: 160), controlPoint: CGPoint(x: 178, y: 168))
        //earPath2.close()


        let earShape2 = CAShapeLayer()
        earShape2.path = earPath2.cgPath
        //earView2.layer.mask = earShape2
        earShape2.fillColor = RGBaClear
        earShape2.strokeColor = shapeStrokeColor
        earShape2.lineWidth = strokeLinesetting
        earView2.layer.addSublayer(earShape2)
        //上列這行與earView1.backgroundColor切換使用（藍底圖＆完成視圖)
        backgroundView.addSubview(earView2)



        //身體
        let bodyView1 = UIView(frame: backgroundView.frame)
        //bodyView1.backgroundColor = RGBaSettingBlue // 檢視設計時藍底圖
        let bodyPath1 = UIBezierPath()
        bodyPath1.move(to: CGPoint(x: 282, y: 158))
        bodyPath1.addQuadCurve(to: CGPoint(x: 223, y: 161), controlPoint: CGPoint(x: 275, y: 148))
        //白線
        bodyPath1.move(to: CGPoint(x: 155, y: 178))
        //bodyPath1.addQuadCurve(to: CGPoint(x: 155, y: 178), controlPoint: CGPoint(x: 210, y: 161))



        bodyPath1.addQuadCurve(to: CGPoint(x: 109, y: 305), controlPoint: CGPoint(x: 90, y: 245))

        bodyPath1.addQuadCurve(to: CGPoint(x: 116, y: 298), controlPoint: CGPoint(x: 110, y: 301))
        //bodyPath1.move(to: CGPoint(x: 109, y: 305))
        bodyPath1.addQuadCurve(to: CGPoint(x: 105, y: 463), controlPoint: CGPoint(x: 40, y: 385))


        bodyPath1.move(to: CGPoint(x: 102, y: 468))
        bodyPath1.addQuadCurve(to: CGPoint(x: 385, y: 470), controlPoint: CGPoint(x: 342, y: 490))

        bodyPath1.move(to: CGPoint(x: 392, y: 470))
        bodyPath1.addQuadCurve(to: CGPoint(x: 350, y: 171), controlPoint: CGPoint(x: 473, y: 320))
        //bodyPath1.addQuadCurve(to: CGPoint(x: 282, y: 158), controlPoint: CGPoint(x: 332, y: 174))

        //bodyPath1.close()


        let bodyShape1 = CAShapeLayer()
        bodyShape1.path = bodyPath1.cgPath
        // bodyView1.layer.mask = bodyShape1
        bodyShape1.fillColor = RGBaClear
        bodyShape1.strokeColor = shapeStrokeColor
        bodyShape1.lineWidth = strokeLinesetting
        bodyView1.layer.addSublayer(bodyShape1)
        //上列這行與earView1.backgroundColor切換使用（藍底圖＆完成視圖)
        backgroundView.addSubview(bodyView1)


        let leftEyeView1 = UIView(frame: backgroundView.frame)

        let leftPath1 = UIBezierPath(ovalIn: CGRect(x: 205, y: 248, width: 22, height: 22))

        let leftEyeShape1 = CAShapeLayer()
        leftEyeShape1.path = leftPath1.cgPath
        //leftEyeView1.layer.mask = leftEyeShape1
        leftEyeShape1.fillColor = RGBaBlack
        leftEyeShape1.strokeColor = shapeStrokeColor
        leftEyeShape1.lineWidth = strokeLinesetting
        leftEyeView1.layer.addSublayer(leftEyeShape1)


        let leftPath2 = UIBezierPath(ovalIn: CGRect(x: 183, y: 229, width: 64, height: 64))

        let leftEyeShape2 = CAShapeLayer()
        leftEyeShape2.path = leftPath2.cgPath
        //leftEyeView1.layer.mask = leftEyeShape1
        leftEyeShape2.fillColor = RGBaEyesWhite
        leftEyeShape2.strokeColor = shapeStrokeColor
        leftEyeShape2.lineWidth = strokeLinesetting
        leftEyeView1.layer.addSublayer(leftEyeShape2)

        backgroundView.addSubview(leftEyeView1)
        let rightEyeView1 = UIView(frame: backgroundView.frame)

        let rightPath1 = UIBezierPath(ovalIn: CGRect(x: 330, y: 245, width: 22, height: 22))

        let rightEyeShape1 = CAShapeLayer()
        rightEyeShape1.path = rightPath1.cgPath
        //rightEyeView1.layer.mask = leftEyeShape1
        rightEyeShape1.fillColor = RGBaBlack
        rightEyeShape1.strokeColor = shapeStrokeColor
        rightEyeShape1.lineWidth = strokeLinesetting
        rightEyeView1.layer.addSublayer(rightEyeShape1)


        let rightPath2 = UIBezierPath(ovalIn: CGRect(x: 310, y: 225, width: 64, height: 64))

        let rightEyeShape2 = CAShapeLayer()
        rightEyeShape2.path = rightPath2.cgPath
        //leftEyeView1.layer.mask = leftEyeShape1
        rightEyeShape2.fillColor = RGBaEyesWhite
        rightEyeShape2.strokeColor = shapeStrokeColor
        rightEyeShape2.lineWidth = strokeLinesetting
        rightEyeView1.layer.addSublayer(rightEyeShape2)

        backgroundView.addSubview(rightEyeView1)
        
        
        //backgroundView.frame =
        self.view.addSubview(backgroundView)
        
        
        backgroundView.center = self.view.center
        backgroundView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        backgroundView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }


}

