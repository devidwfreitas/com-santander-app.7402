import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;

public class cwl implements Parcelable.Creator<ConnectionResult> {
  public static void a(ConnectionResult paramConnectionResult, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramConnectionResult.v);
    csd.a(paramParcel, 2, paramConnectionResult.c());
    csd.a(paramParcel, 3, (Parcelable)paramConnectionResult.d(), paramInt, false);
    csd.a(paramParcel, 4, paramConnectionResult.e(), false);
    csd.a(paramParcel, i);
  }
  
  public ConnectionResult a(Parcel paramParcel) {
    String str = null;
    int j = 0;
    int k = csb.b(paramParcel);
    PendingIntent pendingIntent = null;
    int i = 0;
    while (paramParcel.dataPosition() < k) {
      int m = csb.a(paramParcel);
      switch (csb.a(m)) {
        case 1:
          m = csb.g(paramParcel, m);
          i = j;
          j = m;
          m = j;
          j = i;
          i = m;
          break;
        case 2:
          m = csb.g(paramParcel, m);
          j = i;
          i = m;
          m = j;
          j = i;
          i = m;
          break;
        case 3:
          pendingIntent = csb.<PendingIntent>a(paramParcel, m, PendingIntent.CREATOR);
          m = i;
          i = j;
          j = m;
          m = j;
          j = i;
          i = m;
          break;
        case 4:
          str = csb.q(paramParcel, m);
          m = i;
          i = j;
          j = m;
          m = j;
          j = i;
          i = m;
          break;
      } 
    } 
    if (paramParcel.dataPosition() != k)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(k).toString(), paramParcel); 
    return new ConnectionResult(i, j, pendingIntent, str);
  }
  
  public ConnectionResult[] a(int paramInt) {
    return new ConnectionResult[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cwl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */