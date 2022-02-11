//
//  HeaderOptionsScheduleTableViewCell.swift
//  FirstBigApp
//
//  Created by Илья Раков on 10.02.2022.
//

import UIKit

class HeaderOptionsScheduleTableViewCell: UITableViewHeaderFooterView {
    
    let headerLabel = UILabel(text: "HEADER", font: .avenirNext14())
    
    let headerNameArray = ["DATE AND TIME", "LESSON", "TEACHER", "COLOR", "PERIOD"]


    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        headerLabel.textColor = .gray
        
        self.contentView.backgroundColor = .lightGray
        
            setConstraints()

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    func headerConfigure(sectiom: Int) {
        header.headerLabel.text = headerNameArray[section]
    }
    
    func setConstraints(){
        
        self.addSubview(headerLabel)
        NSLayoutConstraint.activate([
            headerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            headerLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: 0),
            
        ])
    
    }
}
