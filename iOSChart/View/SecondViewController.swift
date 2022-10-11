//
//  SecondViewController.swift
//  iOSChart
//
//  Created by Nguyen Quang Ha on 11/10/2022.
//

import UIKit
import Charts

class SecondViewController: UIViewController, ChartViewDelegate {
    
    let lineChart = LineChartView()

    override func viewDidLoad() {
        super.viewDidLoad()
        lineChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        lineChart.frame = CGRect(
            x: 0,
            y: 0,
            width: self.view.frame.size.width,
            height: self.view.frame.size.width)
        lineChart.center = view.center
        view.addSubview(lineChart)
        
        var entries = [ChartDataEntry]()
        
        for x in 0..<10 {
            entries.append(ChartDataEntry(
                x: Double(x),
                y: Double(x)))
        }
        
        let set = LineChartDataSet(entries: entries, label: "Line Chart")
        set.colors = ChartColorTemplates.material()
        
        let data = LineChartData(dataSet: set)
        lineChart.data = data
    }
}
