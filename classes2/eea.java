import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public final class eea {
  public float a;
  
  public float b;
  
  public eea() {}
  
  public eea(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation) {
    this.a = paramStreetViewPanoramaOrientation.b;
    this.b = paramStreetViewPanoramaOrientation.a;
  }
  
  public StreetViewPanoramaOrientation a() {
    return new StreetViewPanoramaOrientation(this.b, this.a);
  }
  
  public eea a(float paramFloat) {
    this.b = paramFloat;
    return this;
  }
  
  public eea b(float paramFloat) {
    this.a = paramFloat;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eea.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */