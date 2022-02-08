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
    
    }
}
