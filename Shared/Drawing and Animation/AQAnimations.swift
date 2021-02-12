//
//  AQAnimations.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 10/02/21.
//

import SwiftUI

struct AQAnimations: View {
    @State private var startAnimation: Bool = false
    
    var body: some View {
        
            VStack{
                Spacer(minLength: 40)
                HStack {
                    Text("🐆")
                        .font(.custom("Arial", size: 50))
                        .offset(x: self.startAnimation ?  UIScreen.main.bounds.width - 50 : 0)
                    Spacer()
                }.overlay(
                Ellipse()
                    .stroke()
                    .frame(width: 40, height: 90, alignment: .center)
                    
                )
                Form {
                    SectionView(title: "easeIn", description: "An eased-in animation starts off slow and picks up speed over time. This is good for animations that start from a resting point and finish off-screen.") {
                        VStack{
                            Button("Start Animation") {
                                withAnimation(.easeIn(duration: 4)) {
                                    self.startAnimation.toggle()
                                }
                            }
                        }
                    }
                    SectionView(title: "easeOut", description: "Eased-out animations start fast and end slow. This is good for animating something coming to a steady state or final position.") {
                        VStack{
                            Button("Start Animation") {
                                withAnimation(.easeOut(duration: 4)) {
                                    self.startAnimation.toggle()
                                }
                            }
                        }
                    }
                    SectionView(title: "easeInOut", description: "Ease in and out curves combine both easeIn and easeOut. This is good for animations that start in one steady spot and end at another equilibrium.") {
                        VStack{
                            Button("Start Animation") {
                                withAnimation(.easeInOut(duration: 4)) {
                                    self.startAnimation.toggle()
                                }
                            }
                        }
                    }
                    SectionView(title: "linear", description: "This transitions the attribute from the start to end value evenly over time. This is a good timing curve for repeating animations, but it doesn’t look as natural as the eased functions.") {
                        VStack{
                            Button("Start Animation") {
                                withAnimation(.linear(duration: 4)) {
                                    self.startAnimation.toggle()
                                }
                            }
                        }
                    }
                    SectionView(title: "Spring", description: "A persistent spring animation. When mixed with other spring() or interactiveSpring() animations on the same property, each animation will be replaced by their successor, preserving velocity from one animation to the next. Optionally blends the response values between springs over a time period") {
                        VStack{
                            Button("Start Animation") {
                                withAnimation(Animation.spring()){
                                    self.startAnimation.toggle()
                                }
                            }
                        }
                        
                    }
                    
                    SectionView(title: "interactiveSpring", description: "TA convenience for a spring() animation with a lower response value, intended for driving interactive animations.") {
                        VStack{
                            Button("Start Animation") {
                                withAnimation(Animation.interactiveSpring(response: 4, dampingFraction: 0.5, blendDuration: 0.25)){
                                    self.startAnimation.toggle()
                                }
                            }
                        }
                        
                    }
                    SectionView(title: "interpolatingSpring", description: "n interpolating spring animation that uses a damped spring model to produce values in the range [0, 1] that are then used to interpolate within the [from, to] range of the animated property. Preserves velocity across overlapping animations by adding the effects of each animation.") {
                        VStack{
                            Button("Start Animation") {
                                withAnimation(Animation.interpolatingSpring(mass: 1, stiffness: 0.5, damping: 0.5, initialVelocity: 0)){
                                    self.startAnimation.toggle()
                                }
                            }
                        }
                        
                    }
                    
                }
            }.navigationBarTitle("Animation", displayMode: .inline)
            
        }
    
}
struct AQAnimations_Previews: PreviewProvider {
    static var previews: some View {
        AQAnimations()
    }
}
