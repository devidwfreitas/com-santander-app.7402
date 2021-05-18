import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzbar;

public class dqk implements Parcelable.Creator<zzbar> {
  public static void a(zzbar paramzzbar, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzbar.a);
    csd.a(paramParcel, 2, (Parcelable)paramzzbar.a(), paramInt, false);
    csd.a(paramParcel, 3, paramzzbar.b(), paramInt, false);
    csd.a(paramParcel, 4, paramzzbar.c(), false);
    csd.a(paramParcel, i);
  }
  
  public zzbar a(Parcel paramParcel) {
    Scope[] arrayOfScope;
    String str = null;
    int j = csb.b(paramParcel);
    int i = 0;
    Account account2 = null;
    Account account1 = null;
    while (paramParcel.dataPosition() < j) {
      Scope[] arrayOfScope2;
      Account account3;
      Scope[] arrayOfScope1;
      Scope[] arrayOfScope3;
      Account account4;
      Account account6;
      Scope[] arrayOfScope4;
      Account account5;
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          i = csb.g(paramParcel, k);
          account6 = account1;
          account1 = account2;
          account2 = account6;
          account6 = account2;
          account2 = account1;
          account1 = account6;
          break;
        case 2:
          account6 = csb.<Account>a(paramParcel, k, Account.CREATOR);
          account1 = account2;
          account2 = account6;
          account6 = account2;
          account2 = account1;
          account1 = account6;
          break;
        case 3:
          arrayOfScope4 = csb.<Scope>b(paramParcel, k, Scope.CREATOR);
          account2 = account1;
          arrayOfScope2 = arrayOfScope4;
          account5 = account2;
          arrayOfScope3 = arrayOfScope2;
          account3 = account5;
          break;
        case 4:
          str = csb.q(paramParcel, k);
          account5 = account3;
          arrayOfScope1 = arrayOfScope3;
          account4 = account5;
          account5 = account4;
          arrayOfScope = arrayOfScope1;
          account1 = account5;
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzbar(i, account1, arrayOfScope, str);
  }
  
  public zzbar[] a(int paramInt) {
    return new zzbar[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */