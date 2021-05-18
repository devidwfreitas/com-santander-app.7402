import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public final class edz {
  public float a;
  
  public float b;
  
  public float c;
  
  public edz() {}
  
  public edz(StreetViewPanoramaCamera paramStreetViewPanoramaCamera) {
    this.c = paramStreetViewPanoramaCamera.a;
    this.a = paramStreetViewPanoramaCamera.c;
    this.b = paramStreetViewPanoramaCamera.b;
  }
  
  public StreetViewPanoramaCamera a() {
    return new StreetViewPanoramaCamera(this.c, this.b, this.a);
  }
  
  public edz a(float paramFloat) {
    this.c = paramFloat;
    return this;
  }
  
  public edz a(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation) {
    this.b = paramStreetViewPanoramaOrientation.a;
    this.a = paramStreetViewPanoramaOrientation.b;
    return this;
  }
  
  public edz b(float paramFloat) {
    this.b = paramFloat;
    return this;
  }
  
  public edz c(float paramFloat) {
    this.a = paramFloat;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\edz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */