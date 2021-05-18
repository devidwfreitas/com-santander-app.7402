import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.DetectedActivity;

public class duj implements Parcelable.Creator<DetectedActivity> {
  public static void a(DetectedActivity paramDetectedActivity, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramDetectedActivity.l);
    csd.a(paramParcel, 2, paramDetectedActivity.m);
    csd.a(paramParcel, paramInt);
  }
  
  public DetectedActivity a(Parcel paramParcel) {
    int j = 0;
    int k = csb.b(paramParcel);
    int i = 0;
    while (paramParcel.dataPosition() < k) {
      int m = csb.a(paramParcel);
      switch (csb.a(m)) {
        case 1:
          i = csb.g(paramParcel, m);
          break;
        case 2:
          j = csb.g(paramParcel, m);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != k)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(k).toString(), paramParcel); 
    return new DetectedActivity(i, j);
  }
  
  public DetectedActivity[] a(int paramInt) {
    return new DetectedActivity[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\duj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */