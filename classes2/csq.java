import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.zzad;

public class csq implements Parcelable.Creator<zzad> {
  public static void a(zzad paramzzad, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzad.a);
    csd.a(paramParcel, 2, (Parcelable)paramzzad.a(), paramInt, false);
    csd.a(paramParcel, 3, paramzzad.b());
    csd.a(paramParcel, 4, (Parcelable)paramzzad.c(), paramInt, false);
    csd.a(paramParcel, i);
  }
  
  public zzad a(Parcel paramParcel) {
    GoogleSignInAccount googleSignInAccount = null;
    int j = 0;
    int k = csb.b(paramParcel);
    Account account = null;
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
          account = csb.<Account>a(paramParcel, m, Account.CREATOR);
          m = i;
          i = j;
          j = m;
          m = j;
          j = i;
          i = m;
          break;
        case 3:
          m = csb.g(paramParcel, m);
          j = i;
          i = m;
          m = j;
          j = i;
          i = m;
          break;
        case 4:
          googleSignInAccount = csb.<GoogleSignInAccount>a(paramParcel, m, GoogleSignInAccount.CREATOR);
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
    return new zzad(i, account, j, googleSignInAccount);
  }
  
  public zzad[] a(int paramInt) {
    return new zzad[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\csq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */