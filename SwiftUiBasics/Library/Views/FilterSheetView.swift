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
    @State var categories: [Category] = []
    
    init(sortItemVal: Binding<sortCategory>, isSheetVisibl: Binding<Bool>) {
        self._sortItemValue = sortItemVal
        self._isSheetVisible = isSheetVisibl
        self._categories = State(initialValue: sortCategory.allCases.map { Category(category: $0, isSelected: $0 == $sortItemValue.wrappedValue) })
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Sort by")
                .font(.system(size: 26))
                .foregroundStyle(.white)
                .fontWeight(.semibold)
                .padding(.top, 10)
            ForEach($categories) { $category in
                sortSheetButton($category)
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
        .presentationDetents([.height(350)])
    }
    
    func sortSheetButton(_ category: Binding<Category>) -> some View {
        Button(action: {
            selectSortValue(category)
        }) {
            HStack {
                Text(category.wrappedValue.category.rawValue)
                    .font(.system(size: 18))
                    .foregroundStyle(category.wrappedValue.isSelected ? .green : .white)
                    .fontWeight(.semibold)
                Spacer()
                if category.wrappedValue.isSelected {
                    Image(systemName: "checkmark")
                        .foregroundColor(category.wrappedValue.isSelected ? .green : .white)
                        .frame(width: 15, height: 15, alignment: .trailing)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    func selectSortValue(_ selectedCategory: Binding<Category>) {
        for i in categories.indices {
            if categories[i].category == selectedCategory.wrappedValue.category {
                categories[i].toggleSelection()
            } else {
                categories[i].isSelected = false
            }
        }
        sortItemValue = selectedCategory.wrappedValue.category
        isSheetVisible = false
    }
}

