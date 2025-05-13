//
//  DayCell.swift
//  
//
//  Created by Alessio Moiso on 16.04.23.
//

import SwiftUI

import Foundation
import SwiftUI
import UIKit

extension Color {
    static let CSYellow = Color("CSYellow")
}


struct DayCell: View {
	let content: String
	let isHighlighted: Bool
	let isSelected: Bool
	let isEnabled: Bool
	
	var body: some View {
		Text(content)
//			.foregroundColor((isHighlighted || isSelected) ? .accentColor : (isEnabled) ? .primary : .secondary)
			.fontWeight(isSelected ? .bold : .regular)
			.padding([.top, .bottom], 8)
			.padding([.leading, .trailing], 8)
			.background {
				Circle()
					.foregroundColor(isSelected ? Color.yellow : .clear)
			}
			.dynamicTypeSize(...DynamicTypeSize.xxxLarge)
	}
}

// MARK: - Preview
struct DayCell_Previews: PreviewProvider {
	static var previews: some View {
		HStack {
			DayCell(
				content: "22",
				isHighlighted: true,
				isSelected: true,
				isEnabled: true
			)
			
			DayCell(
				content: "11",
				isHighlighted: false,
				isSelected: true,
				isEnabled: true
			)
			
			DayCell(
				content: "14",
				isHighlighted: true,
				isSelected: false,
				isEnabled: true
			)
			
			DayCell(
				content: "08",
				isHighlighted: false,
				isSelected: false,
				isEnabled: true
			)
			
			DayCell(
				content: "12",
				isHighlighted: false,
				isSelected: false,
				isEnabled: false
			)
		}
	}
}
