import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzasi;
import com.google.android.gms.internal.zzask;

public class djm implements Parcelable.Creator<zzask> {
  public static void a(zzask paramzzask, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzask.a);
    csd.a(paramParcel, 2, (Parcelable)paramzzask.b, paramInt, false);
    csd.a(paramParcel, 3, paramzzask.a(), false);
    csd.a(paramParcel, 4, (Parcelable)paramzzask.d, paramInt, false);
    csd.a(paramParcel, 5, paramzzask.b(), false);
    csd.a(paramParcel, 6, paramzzask.c(), false);
    csd.a(paramParcel, i);
  }
  
  public zzask a(Parcel paramParcel) {
    IBinder iBinder1 = null;
    int j = csb.b(paramParcel);
    int i = 1;
    IBinder iBinder2 = null;
    PendingIntent pendingIntent = null;
    IBinder iBinder3 = null;
    zzasi zzasi = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          i = csb.g(paramParcel, k);
          break;
        case 2:
          zzasi = csb.<zzasi>a(paramParcel, k, zzasi.CREATOR);
          break;
        case 3:
          iBinder3 = csb.r(paramParcel, k);
          break;
        case 4:
          pendingIntent = csb.<PendingIntent>a(paramParcel, k, PendingIntent.CREATOR);
          break;
        case 5:
          iBinder2 = csb.r(paramParcel, k);
          break;
        case 6:
          iBinder1 = csb.r(paramParcel, k);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzask(i, zzasi, iBinder3, pendingIntent, iBinder2, iBinder1);
  }
  
  public zzask[] a(int paramInt) {
    return new zzask[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\djm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */