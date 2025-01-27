//
//  PlacesView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 12.04.2024.
//

import CoreLocation
import MapKit
import SwiftUI

struct PlacesView: View {
    @State private var focusedPlaceIndex: Int? = nil
    @State private var isExpanded: Bool = false
    @State private var selectedPlaceStr: String? = nil
    @State private var selectedPlace: Place? = nil
    @State private var locationManager = CLLocationManager()
    
    var body: some View {
        ZStack(alignment: .top) {
            MapView(places: Place.data, focusedIndex: focusedPlaceIndex)
                .edgesIgnoringSafeArea(.top)
                .onAppear {
                    locationManager.requestWhenInUseAuthorization()
                }
            
            VStack {
                DisclosureGroup("CURRENT PLACE: \(selectedPlaceStr ?? "NONE")", isExpanded: $isExpanded) {
                    ForEach(Place.data.indices, id: \.self) { index in
                        Button(action: {
                            selectedPlace = Place.data[index]
                            selectedPlaceStr = Place.data[index].title
                            if focusedPlaceIndex == index {
                                focusedPlaceIndex = nil
                            } else {
                                focusedPlaceIndex = index
                            }
                            withAnimation {
                                isExpanded = false
                            }
                        }) {
                            Text(Place.data[index].title)
                                .font(.custom("SairaCondensed-Bold", size: 16))
                        }
                    }
                }
                .font(.custom("SairaCondensed-Bold", size: 20))
                .padding(10)
                .background(Color("secondaryBGColor"))
                .cornerRadius(10)
                .shadow(color: Color("mainThemeColor"), radius: 5)
                
                Spacer()
                PlaceInfoView(place: selectedPlace)
                    .frame(width: 300, height: 200)
                    .shadow(radius: 5)
            }
            .padding()
        }
    }
}

struct MapView: UIViewRepresentable {
    typealias UIViewType = MKMapView
    var places: [Place]
    var focusedIndex: Int?
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.overrideUserInterfaceStyle = .dark
        return mapView
    }
    
    func updateUIView(_ mapView: MKMapView, context: Context) {
        mapView.removeAnnotations(mapView.annotations)
        for place in places {
            let annotation = MKPointAnnotation()
            annotation.coordinate = place.coordinate
            annotation.title = place.title
            mapView.addAnnotation(annotation)
        }
        
        if let index = focusedIndex, index < places.count {
            let focusedPlace = places[index]
            let region = MKCoordinateRegion(center: focusedPlace.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
            mapView.setRegion(region, animated: true)
        }
    }
}

#Preview {
    PlacesView()
}
