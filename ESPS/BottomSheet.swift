////
////  BottomSheet.swift
////  ESPS
////
////  Created by Ramshad Basheer on 03/07/2021.
////
//
//import Foundation
//import SwiftUI
//import Swift
//
//fileprivate enum Constants {
//    static let radius: CGFloat = 16
//    static let indicatorHeight: CGFloat = 6
//    static let indicatorWidth: CGFloat = 60
//    static let snapRatio: CGFloat = 0.25
//    static let minHeightRatio: CGFloat = 0.3
//}
//
//struct BottomSheetView<Content: View>: View {
//    @Binding var isOpen: Bool
//
//    let maxHeight: CGFloat
//    @State var minHeight: CGFloat = 0.0
//    let content: Content
//    @State var isClosed = false
//
//    @GestureState private var translation: CGFloat = 0
//
//    private var offset: CGFloat {
//        isOpen ? 0 : maxHeight - minHeight
//    }
//
//    private var indicator: some View {
//        RoundedRectangle(cornerRadius: Constants.radius)
//            .fill(Color.secondary)
//            .frame(
//                width: Constants.indicatorWidth,
//                height: Constants.indicatorHeight
//        ).onTapGesture {
//            self.isOpen.toggle()
//        }
//    }
//
//    init(isOpen: Binding<Bool>, maxHeight: CGFloat, @ViewBuilder content: () -> Content) {
//        let _ = print("hello!!!")
//        print(maxHeight)
//        self.maxHeight = maxHeight
//        self.content = content()
////        self._isOpen = isOpen
//        self.minHeight = maxHeight * Constants.minHeightRatio
//        let _ = print(minHeight)
//    }
//
//    var body: some View {
//        GeometryReader { geometry in
//            VStack(spacing: 0) {
//                ZStack {
//                    self.indicator.padding()
//
//                    HStack {
//                        Spacer()
//                        Button(action: {
//                            self.isOpen.toggle()
//                            self.minHeight = 0
//                        }) {
//                            Text("x")
//                        }.padding(.horizontal, 16)
//                    }
//                }
//                self.content
//            }
//            .frame(width: geometry.size.width, height: self.maxHeight, alignment: .top)
//            .background(Color(.secondarySystemBackground))
//            .cornerRadius(Constants.radius)
//            .frame(height: geometry.size.height, alignment: .bottom)
//            .offset(y: max(self.offset + self.translation, 0))
//            .animation(.interactiveSpring())
//            .gesture(
//                DragGesture().updating(self.$translation) { value, state, _ in
//                    state = value.translation.height
//                }.onEnded { value in
//                    let snapDistance = self.maxHeight * Constants.snapRatio
//                    guard abs(value.translation.height) > snapDistance else {
//                        return
//                    }
//                    self.isOpen = value.translation.height < 0
//                }
//            )
//        }
//    }
//}
