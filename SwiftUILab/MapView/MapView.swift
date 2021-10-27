import SwiftUI
import MapKit

struct MapView: View {
    @State private var myPosition = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: CLLocationDegrees(37.331705), longitude: CLLocationDegrees(-122.030237)), span: MKCoordinateSpan())
    
    var body: some View {
//        if #available(iOS 14, *) {
//            Map(coordinateRegion: $myPosition)
//        } else {
//            Text("ios 버전이 13입니다")
//        }
        MyMapView()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

