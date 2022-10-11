//
//  ViewController.swift
//  iOSChart
//
//  Created by Nguyen Quang Ha on 11/10/2022.
//

import UIKit
import Charts

class ViewController: UIViewController, ChartViewDelegate {
    
    var barChart = BarChartView()

    override func viewDidLoad() {
        super.viewDidLoad()
        barChart.delegate = self
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        barChart.frame = CGRect(
            x: 0,
            y: 0,
            width: self.view.frame.size.width,
            height: self.view.frame.size.width)
        barChart.center = view.center
        view.addSubview(barChart)
        
        var entries = [BarChartDataEntry]()
        
        for x in 0..<10 {
            entries.append(BarChartDataEntry(
                x: Double(x),
                y: Double(x)))
        }
        
        let set = BarChartDataSet(entries: entries, label: "Bar Chart")
        set.colors = ChartColorTemplates.joyful()
        
        let data = BarChartData(dataSet: set)
        barChart.data = data
    }

}

