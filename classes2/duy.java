import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.zzt;
import java.util.ArrayList;

public class duy implements Parcelable.Creator<zzt> {
  public static void a(zzt paramzzt, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.b(paramParcel, 1, paramzzt.a(), false);
    csd.a(paramParcel, 2, (Parcelable)paramzzt.b(), paramInt, false);
    csd.a(paramParcel, 3, paramzzt.c(), false);
    csd.a(paramParcel, i);
  }
  
  public zzt a(Parcel paramParcel) {
    PendingIntent pendingIntent;
    ArrayList<String> arrayList2 = null;
    int i = csb.b(paramParcel);
    String str = "";
    ArrayList<String> arrayList1 = null;
    while (paramParcel.dataPosition() < i) {
      PendingIntent pendingIntent2;
      ArrayList<String> arrayList3;
      PendingIntent pendingIntent1;
      PendingIntent pendingIntent3;
      ArrayList<String> arrayList4;
      ArrayList<String> arrayList6;
      PendingIntent pendingIntent4;
      ArrayList<String> arrayList5;
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 1:
          arrayList6 = csb.E(paramParcel, j);
          arrayList1 = arrayList2;
          arrayList2 = arrayList6;
          arrayList6 = arrayList2;
          arrayList2 = arrayList1;
          arrayList1 = arrayList6;
          break;
        case 2:
          pendingIntent4 = csb.<PendingIntent>a(paramParcel, j, PendingIntent.CREATOR);
          arrayList2 = arrayList1;
          pendingIntent2 = pendingIntent4;
          arrayList5 = arrayList2;
          pendingIntent3 = pendingIntent2;
          arrayList3 = arrayList5;
          break;
        case 3:
          str = csb.q(paramParcel, j);
          arrayList5 = arrayList3;
          pendingIntent1 = pendingIntent3;
          arrayList4 = arrayList5;
          arrayList5 = arrayList4;
          pendingIntent = pendingIntent1;
          arrayList1 = arrayList5;
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new zzt(arrayList1, pendingIntent, str);
  }
  
  public zzt[] a(int paramInt) {
    return new zzt[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\duy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */