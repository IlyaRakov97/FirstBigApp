//
//  ScheduleTableViewCell.swift
//  FirstBigApp
//
//  Created by Илья Раков on 08.02.2022.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {
    
    
    let lessonsName = UILabel(text: "Програмирование", font: .avenirNextDemiBold20())
    let teachersName = UILabel(text: "Антонов Антон Антонович", font: .avenirNext20(), alingment: .right)
    let lessonTime = UILabel(text: "08.00", font: .avenirNextDemiBold20())
    let typeLabel = UILabel(text: "Тип", font: .avenirNext14(), alingment: .right)
    let lessonType = UILabel(text: "Урок", font: .avenirNextDemiBold14())
    let buildingLabel = UILabel(text: "Корпус", font: .avenirNext14(), alingment: .right)
    let lessonBuilding = UILabel(text: "1", font: .avenirNextDemiBold14())
    let audLabel = UILabel(text: "Аудитория", font: .avenirNext14(), alingment: .right)
    let lessonAud = UILabel(text: "101", font: .avenirNextDemiBold14())

        
        
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
            setConstraints()

        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    func setConstraints(){
        
        let topStackView = UIStackView(arrangedSubviews: [lessonTime, teachersName], axis: .horizontal, spasing: 10, distriburion: .fillEqually)
        
        
        self.addSubview(topStackView)
        NSLayoutConstraint.activate([
            topStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            topStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            topStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            topStackView.heightAnchor.constraint(equalToConstant: 25)
            
        ])
    
        self.addSubview(lessonTime)
        NSLayoutConstraint.activate([
            lessonTime.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            lessonTime.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            lessonTime.widthAnchor.constraint(equalToConstant: 100),
            lessonTime.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        
        let bottomStackView = UIStackView(arrangedSubviews: [typeLabel, lessonType, buildingLabel, lessonBuilding, audLabel, lessonAud, ], axis: .horizontal, spasing: 5, distriburion: .fillProportionally)
        
        self.addSubview(bottomStackView)
        NSLayoutConstraint.activate([
            bottomStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 10),
            bottomStackView.leadingAnchor.constraint(equalTo: lessonTime.trailingAnchor, constant: 5),
            bottomStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            bottomStackView.heightAnchor.constraint(equalToConstant: 25)
        ])
        
    }
}
