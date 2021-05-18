import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.stats.WakeLockEvent;
import java.util.ArrayList;

public class cvi implements Parcelable.Creator<WakeLockEvent> {
  public static void a(WakeLockEvent paramWakeLockEvent, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramWakeLockEvent.a);
    csd.a(paramParcel, 2, paramWakeLockEvent.a());
    csd.a(paramParcel, 4, paramWakeLockEvent.e(), false);
    csd.a(paramParcel, 5, paramWakeLockEvent.h());
    csd.b(paramParcel, 6, paramWakeLockEvent.i(), false);
    csd.a(paramParcel, 8, paramWakeLockEvent.k());
    csd.a(paramParcel, 10, paramWakeLockEvent.f(), false);
    csd.a(paramParcel, 11, paramWakeLockEvent.b());
    csd.a(paramParcel, 12, paramWakeLockEvent.j(), false);
    csd.a(paramParcel, 13, paramWakeLockEvent.m(), false);
    csd.a(paramParcel, 14, paramWakeLockEvent.l());
    csd.a(paramParcel, 15, paramWakeLockEvent.n());
    csd.a(paramParcel, 16, paramWakeLockEvent.o());
    csd.a(paramParcel, 17, paramWakeLockEvent.g(), false);
    csd.a(paramParcel, paramInt);
  }
  
  public WakeLockEvent a(Parcel paramParcel) {
    int n = csb.b(paramParcel);
    int m = 0;
    long l3 = 0L;
    int k = 0;
    String str5 = null;
    int j = 0;
    ArrayList<String> arrayList = null;
    String str4 = null;
    long l2 = 0L;
    int i = 0;
    String str3 = null;
    String str2 = null;
    float f = 0.0F;
    long l1 = 0L;
    String str1 = null;
    while (paramParcel.dataPosition() < n) {
      int i1 = csb.a(paramParcel);
      switch (csb.a(i1)) {
        case 1:
          m = csb.g(paramParcel, i1);
          break;
        case 2:
          l3 = csb.i(paramParcel, i1);
          break;
        case 4:
          str5 = csb.q(paramParcel, i1);
          break;
        case 5:
          j = csb.g(paramParcel, i1);
          break;
        case 6:
          arrayList = csb.E(paramParcel, i1);
          break;
        case 8:
          l2 = csb.i(paramParcel, i1);
          break;
        case 10:
          str3 = csb.q(paramParcel, i1);
          break;
        case 11:
          k = csb.g(paramParcel, i1);
          break;
        case 12:
          str4 = csb.q(paramParcel, i1);
          break;
        case 13:
          str2 = csb.q(paramParcel, i1);
          break;
        case 14:
          i = csb.g(paramParcel, i1);
          break;
        case 15:
          f = csb.l(paramParcel, i1);
          break;
        case 16:
          l1 = csb.i(paramParcel, i1);
          break;
        case 17:
          str1 = csb.q(paramParcel, i1);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != n)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(n).toString(), paramParcel); 
    return new WakeLockEvent(m, l3, k, str5, j, arrayList, str4, l2, i, str3, str2, f, l1, str1);
  }
  
  public WakeLockEvent[] a(int paramInt) {
    return new WakeLockEvent[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */