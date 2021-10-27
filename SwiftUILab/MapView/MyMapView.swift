import Foundation
import MapKit
import SwiftUI
import CoreLocation

struct MyMapView: UIViewRepresentable {
    
    let locationManager = CLLocationManager()
    
    func makeUIView(context: Context) -> some MKMapView {
        print("MyMapView - makeUIView() called")
        
        let mkMapView = MKMapView()
        mkMapView.delegate = context.coordinator
        
        self.locationManager.delegate = context.coordinator // 위치 매니저 델리겟 연결
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest // 위치 정확도 설정
        self.locationManager.requestWhenInUseAuthorization() // 위치 허용 물어보기
        self.locationManager.startUpdatingLocation() // 현재 위치 업데이트 시작
        
        mkMapView.showsUserLocation = true
        mkMapView.setUserTrackingMode(.follow, animated: true)
        
        let regionRadius: CLLocationDistance = 200 // 맵 카메라 반경
        
        // 보여줄 지역 설정
        let coordinateRegion = MKCoordinateRegion(center: mkMapView.userLocation.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        
        // 지도의 지역 설정
        mkMapView.setRegion(coordinateRegion, animated: true)
        
        return MKMapView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        print("MyMapView - updateUIView() called")
    }
    
    func makeCoordinator() -> MyMapView.Coordinator {
        return MyMapView.Coordinator(self)
    }
    
    
    class Coordinator: NSObject {
        var myMapView: MyMapView
        
        init(_ myMapView: MyMapView) {
            self.myMapView = myMapView
        }
    }
}

extension MyMapView.Coordinator: MKMapViewDelegate {
    
}

extension MyMapView.Coordinator: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lat = locations.first?.coordinate.latitude,
              let log = locations.first?.coordinate.longitude else {
                  return
              }
        print(lat, log)
    }
}
