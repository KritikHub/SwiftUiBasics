//
//  filterSheetView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 12/06/24.
//

import SwiftUI

struct FilterSheetView: View {
    
    private let viewModel = LibraryViewModel()
    @Binding var sortItemValue: sortCategory
    @Binding var isSheetVisible: Bool
     @State var categories: [Category]
    
    init(sortItemVal: Binding<sortCategory>, isSheetVisibl: Binding<Bool>) {
        self._sortItemValue = sortItemVal
        self._isSheetVisible = isSheetVisibl
        categories = sortCategory.allCases.map { categoryType in
            Category(category: categoryType)
//            if categoryType == sortCategory.mostRecent {
//                Category(category: categoryType, isSelected: true)
//            } else {
//                Category(category: categoryType)
//            }
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Sort by")
                .font(.system(size: 26))
                .foregroundStyle(.white)
                .fontWeight(.semibold)
                .padding(.top, 10)
            ForEach($categories, id: \.self) { category in
                sortSheetButton(category)
                    .padding(.top, 10)
            }
            HStack(alignment: .center) {
                Text("Cancel")
                    .font(.system(size: 22))
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                    .padding(.top, 15)
                    .onTapGesture {
                        isSheetVisible = false
                    }
            }
            .frame(maxWidth: .infinity)
            Spacer()
        }
        .padding()
        .padding(.leading, 10)
        .presentationDetents([.medium])
    }
    
    func sortSheetButton(category: Category) -> some View {
        Button(action: {
            selectSortValue(category)
        }) {
            HStack {
                Text(category.category.rawValue)
                    .font(.system(size: 18))
                    .foregroundStyle(category.isSelected ? .green : .white)
                    .fontWeight(.semibold)
                Spacer()
                if category.isSelected {
                    Image(systemName: "checkmark")
                        .foregroundColor(category.isSelected ? .green : .white)
                        .frame(width: 15, height: 15, alignment: .trailing)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    func selectSortValue(_ category: Binding<Category>) {
        if let index = categories.firstIndex(where: {$0.category == category.wrappedValue.category}) {
            categories[index].toggleSelection()
            sortItemValue = category.wrappedValue.category
            isSheetVisible = false
        }
    }
}

