import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

public class cqv implements Parcelable.Creator<Status> {
  public static void a(Status paramStatus, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramStatus.h());
    csd.a(paramParcel, 2, paramStatus.c(), false);
    csd.a(paramParcel, 3, (Parcelable)paramStatus.b(), paramInt, false);
    csd.a(paramParcel, 1000, paramStatus.h);
    csd.a(paramParcel, i);
  }
  
  public Status a(Parcel paramParcel) {
    PendingIntent pendingIntent = null;
    int j = 0;
    int k = csb.b(paramParcel);
    String str = null;
    int i = 0;
    while (paramParcel.dataPosition() < k) {
      int m = csb.a(paramParcel);
      switch (csb.a(m)) {
        case 1:
          j = csb.g(paramParcel, m);
          break;
        case 2:
          str = csb.q(paramParcel, m);
          break;
        case 3:
          pendingIntent = (PendingIntent)csb.a(paramParcel, m, PendingIntent.CREATOR);
          break;
        case 1000:
          i = csb.g(paramParcel, m);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != k)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(k).toString(), paramParcel); 
    return new Status(i, j, str, pendingIntent);
  }
  
  public Status[] a(int paramInt) {
    return new Status[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cqv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */