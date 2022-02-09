//
//  ScheduleTableViewCell.swift
//  FirstBigApp
//
//  Created by Илья Раков on 08.02.2022.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {
    
    
    let lessonName: UILabel = {
        let label = UILabel()
        label.text = "Программирование"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Demi Bold", size: 20)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
        
    }()
    
    let teachersName: UILabel = {
        let label = UILabel()
        label.text = "Антонов Антон Антонович"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next", size: 20)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        
        return label
    }()
    
    let lessonTime: UILabel = {
        let label = UILabel()
        label.text = "08.00"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next", size: 20)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        
        return label
    }()
    
    let typeLabel: UILabel = {
        let label = UILabel()
        label.text = "Тип"
        label.textColor = .black
        label.font = UIFont(name: "Avenir next", size: 14)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        
        return label
    }()
    
    let lessonType: UILabel = {
        let label = UILabel()
        label.text = "Урок"
        label.textColor = .black
        label.font = UIFont(name: "Avenir next", size: 14)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        
        return label
    }()
    
    let buildingLabel: UILabel = {
        let label = UILabel()
        label.text = "Корпус"
        label.textColor = .black
        label.font = UIFont(name: "Avenir next", size: 14)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        
        return label
    }()
    
    let lessonBuilding: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Тext Demi Bold", size: 14)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .black
        
        return label
    }()
    
    let audLabel: UILabel = {
        let label = UILabel()
        label.text = "Аудитория"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        
        return label
    }()
    
    let lessonAud: UILabel = {
        let label = UILabel()
        label.text = "101"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Demi Bold", size: 14)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        
        return label
    }()
        
        
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {[self] in
            setConstraints()

        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    func setConstraints(){
        
        let topStackView = UIStackView(arrangedSubviews: [lessonName, teachersName], axis: .horizontal, spasing: 10, distriburion: .fillEqually)
        
        
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
            lessonName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            lessonName.widthAnchor.constraint(equalToConstant: 100),
            lessonName.heightAnchor.constraint(equalToConstant: 25)
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
