//
//  filterSheetView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 12/06/24.
//

import SwiftUI

struct FilterSheetView: View {
    @Binding var sortItemValue: sortCategory
    @Binding var isSheetVisible: Bool
    
     var categories: [Category] = []
    
    init(sortItemVal: Binding<sortCategory>, isSheetVisibl: Binding<Bool>) {
        self._sortItemValue = sortItemVal
        self._isSheetVisible = isSheetVisibl
        categories = sortCategory.allCases.map { categoryType in
            Category(category: categoryType)
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Sort by")
                .font(.system(size: 24))
                .foregroundStyle(.white)
                .fontWeight(.semibold)
            ForEach(categories, id: \.self) { category in
                sortSheetButton(category: category)
                    .background(Color.black.opacity(0.8))
                    .padding(.top, 10)
            }
        }
        .background(Color.black.opacity(0.8))
    }
    
    func sortSheetButton(category: Category) -> some View {
        Button(action: {}) {
            HStack {
                Text(category.category.rawValue)
                    .font(.system(size: 20))
                    .foregroundStyle(category.isSelected ? .green : .white)
                    .fontWeight(.semibold)
                Spacer()
                if category.isSelected {
                    Image(systemName: "checkmark")
                        .foregroundColor(.green)
                        .frame(width: 15, height: 15, alignment: .trailing)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.black.opacity(0.8))
        }
        .background(Color.black.opacity(0.8))
    }
}

