import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zzg;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;

public class cok implements Parcelable.Creator<GoogleSignInOptions> {
  public static void a(GoogleSignInOptions paramGoogleSignInOptions, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramGoogleSignInOptions.g);
    csd.c(paramParcel, 2, paramGoogleSignInOptions.a(), false);
    csd.a(paramParcel, 3, (Parcelable)paramGoogleSignInOptions.c(), paramInt, false);
    csd.a(paramParcel, 4, paramGoogleSignInOptions.d());
    csd.a(paramParcel, 5, paramGoogleSignInOptions.e());
    csd.a(paramParcel, 6, paramGoogleSignInOptions.f());
    csd.a(paramParcel, 7, paramGoogleSignInOptions.g(), false);
    csd.a(paramParcel, 8, paramGoogleSignInOptions.h(), false);
    csd.c(paramParcel, 9, paramGoogleSignInOptions.i(), false);
    csd.a(paramParcel, i);
  }
  
  public GoogleSignInOptions a(Parcel paramParcel) {
    boolean bool1 = false;
    ArrayList arrayList1 = null;
    int j = csb.b(paramParcel);
    String str1 = null;
    String str2 = null;
    boolean bool2 = false;
    boolean bool3 = false;
    Account account = null;
    ArrayList arrayList2 = null;
    int i = 0;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          i = csb.g(paramParcel, k);
          break;
        case 2:
          arrayList2 = csb.c(paramParcel, k, Scope.CREATOR);
          break;
        case 3:
          account = (Account)csb.a(paramParcel, k, Account.CREATOR);
          break;
        case 4:
          bool3 = csb.c(paramParcel, k);
          break;
        case 5:
          bool2 = csb.c(paramParcel, k);
          break;
        case 6:
          bool1 = csb.c(paramParcel, k);
          break;
        case 7:
          str2 = csb.q(paramParcel, k);
          break;
        case 8:
          str1 = csb.q(paramParcel, k);
          break;
        case 9:
          arrayList1 = csb.c(paramParcel, k, zzg.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new GoogleSignInOptions(i, arrayList2, account, bool3, bool2, bool1, str2, str1, arrayList1);
  }
  
  public GoogleSignInOptions[] a(int paramInt) {
    return new GoogleSignInOptions[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cok.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */