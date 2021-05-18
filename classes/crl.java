import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;

public class crl implements Parcelable.Creator<DataHolder> {
  public static void a(DataHolder paramDataHolder, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramDataHolder.b(), false);
    csd.a(paramParcel, 2, (Parcelable[])paramDataHolder.c(), paramInt, false);
    csd.a(paramParcel, 3, paramDataHolder.d());
    csd.a(paramParcel, 4, paramDataHolder.e(), false);
    csd.a(paramParcel, 1000, paramDataHolder.a);
    csd.a(paramParcel, i);
  }
  
  public DataHolder a(Parcel paramParcel) {
    int i = 0;
    Bundle bundle = null;
    int k = csb.b(paramParcel);
    CursorWindow[] arrayOfCursorWindow = null;
    String[] arrayOfString = null;
    int j = 0;
    while (paramParcel.dataPosition() < k) {
      int m = csb.a(paramParcel);
      switch (csb.a(m)) {
        case 1:
          arrayOfString = csb.C(paramParcel, m);
          break;
        case 2:
          arrayOfCursorWindow = (CursorWindow[])csb.b(paramParcel, m, CursorWindow.CREATOR);
          break;
        case 3:
          i = csb.g(paramParcel, m);
          break;
        case 4:
          bundle = csb.s(paramParcel, m);
          break;
        case 1000:
          j = csb.g(paramParcel, m);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != k)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(k).toString(), paramParcel); 
    DataHolder dataHolder = new DataHolder(j, arrayOfString, arrayOfCursorWindow, i, bundle);
    dataHolder.a();
    return dataHolder;
  }
  
  public DataHolder[] a(int paramInt) {
    return new DataHolder[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */