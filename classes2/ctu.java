import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.zzc;

public class ctu implements Parcelable.Creator<zzj> {
  public static void a(zzj paramzzj, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzj.a);
    csd.a(paramParcel, 2, paramzzj.b);
    csd.a(paramParcel, 3, paramzzj.c);
    csd.a(paramParcel, 4, paramzzj.d, false);
    csd.a(paramParcel, 5, paramzzj.e, false);
    csd.a(paramParcel, 6, paramzzj.f, paramInt, false);
    csd.a(paramParcel, 7, paramzzj.g, false);
    csd.a(paramParcel, 8, (Parcelable)paramzzj.h, paramInt, false);
    csd.a(paramParcel, 10, paramzzj.i, paramInt, false);
    csd.a(paramParcel, i);
  }
  
  public zzj a(Parcel paramParcel) {
    int i = 0;
    zzc[] arrayOfZzc = null;
    int m = csb.b(paramParcel);
    Account account = null;
    Bundle bundle = null;
    Scope[] arrayOfScope = null;
    IBinder iBinder = null;
    String str = null;
    int j = 0;
    int k = 0;
    while (paramParcel.dataPosition() < m) {
      int n = csb.a(paramParcel);
      switch (csb.a(n)) {
        case 1:
          k = csb.g(paramParcel, n);
          break;
        case 2:
          j = csb.g(paramParcel, n);
          break;
        case 3:
          i = csb.g(paramParcel, n);
          break;
        case 4:
          str = csb.q(paramParcel, n);
          break;
        case 5:
          iBinder = csb.r(paramParcel, n);
          break;
        case 6:
          arrayOfScope = csb.<Scope>b(paramParcel, n, Scope.CREATOR);
          break;
        case 7:
          bundle = csb.s(paramParcel, n);
          break;
        case 8:
          account = csb.<Account>a(paramParcel, n, Account.CREATOR);
          break;
        case 10:
          arrayOfZzc = csb.<zzc>b(paramParcel, n, zzc.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != m)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(m).toString(), paramParcel); 
    return new zzj(k, j, i, str, iBinder, arrayOfScope, bundle, account, arrayOfZzc);
  }
  
  public zzj[] a(int paramInt) {
    return new zzj[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ctu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */