import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;

public class coj implements Parcelable.Creator<GoogleSignInAccount> {
  public static void a(GoogleSignInAccount paramGoogleSignInAccount, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramGoogleSignInAccount.b);
    csd.a(paramParcel, 2, paramGoogleSignInAccount.a(), false);
    csd.a(paramParcel, 3, paramGoogleSignInAccount.b(), false);
    csd.a(paramParcel, 4, paramGoogleSignInAccount.c(), false);
    csd.a(paramParcel, 5, paramGoogleSignInAccount.e(), false);
    csd.a(paramParcel, 6, (Parcelable)paramGoogleSignInAccount.h(), paramInt, false);
    csd.a(paramParcel, 7, paramGoogleSignInAccount.i(), false);
    csd.a(paramParcel, 8, paramGoogleSignInAccount.j());
    csd.a(paramParcel, 9, paramGoogleSignInAccount.l(), false);
    csd.c(paramParcel, 10, paramGoogleSignInAccount.c, false);
    csd.a(paramParcel, 11, paramGoogleSignInAccount.f(), false);
    csd.a(paramParcel, 12, paramGoogleSignInAccount.g(), false);
    csd.a(paramParcel, i);
  }
  
  public GoogleSignInAccount a(Parcel paramParcel) {
    int j = csb.b(paramParcel);
    int i = 0;
    String str8 = null;
    String str7 = null;
    String str6 = null;
    String str5 = null;
    Uri uri = null;
    String str4 = null;
    long l = 0L;
    String str3 = null;
    ArrayList arrayList = null;
    String str2 = null;
    String str1 = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          i = csb.g(paramParcel, k);
          break;
        case 2:
          str8 = csb.q(paramParcel, k);
          break;
        case 3:
          str7 = csb.q(paramParcel, k);
          break;
        case 4:
          str6 = csb.q(paramParcel, k);
          break;
        case 5:
          str5 = csb.q(paramParcel, k);
          break;
        case 6:
          uri = (Uri)csb.a(paramParcel, k, Uri.CREATOR);
          break;
        case 7:
          str4 = csb.q(paramParcel, k);
          break;
        case 8:
          l = csb.i(paramParcel, k);
          break;
        case 9:
          str3 = csb.q(paramParcel, k);
          break;
        case 10:
          arrayList = csb.c(paramParcel, k, Scope.CREATOR);
          break;
        case 11:
          str2 = csb.q(paramParcel, k);
          break;
        case 12:
          str1 = csb.q(paramParcel, k);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new GoogleSignInAccount(i, str8, str7, str6, str5, uri, str4, l, str3, arrayList, str2, str1);
  }
  
  public GoogleSignInAccount[] a(int paramInt) {
    return new GoogleSignInAccount[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\coj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */