import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Iterator;

public final class cse {
  public static <T extends SafeParcelable> T a(Intent paramIntent, String paramString, Parcelable.Creator<T> paramCreator) {
    byte[] arrayOfByte = paramIntent.getByteArrayExtra(paramString);
    return (arrayOfByte == null) ? null : a(arrayOfByte, paramCreator);
  }
  
  public static <T extends SafeParcelable> T a(byte[] paramArrayOfbyte, Parcelable.Creator<T> paramCreator) {
    csp.a(paramCreator);
    Parcel parcel = Parcel.obtain();
    parcel.unmarshall(paramArrayOfbyte, 0, paramArrayOfbyte.length);
    parcel.setDataPosition(0);
    SafeParcelable safeParcelable = (SafeParcelable)paramCreator.createFromParcel(parcel);
    parcel.recycle();
    return (T)safeParcelable;
  }
  
  public static <T extends SafeParcelable> void a(T paramT, Intent paramIntent, String paramString) {
    paramIntent.putExtra(paramString, a(paramT));
  }
  
  public static <T extends SafeParcelable> byte[] a(T paramT) {
    Parcel parcel = Parcel.obtain();
    paramT.writeToParcel(parcel, 0);
    byte[] arrayOfByte = parcel.marshall();
    parcel.recycle();
    return arrayOfByte;
  }
  
  public static <T extends SafeParcelable> ArrayList<T> b(Intent paramIntent, String paramString, Parcelable.Creator<T> paramCreator) {
    ArrayList arrayList1 = (ArrayList)paramIntent.getSerializableExtra(paramString);
    if (arrayList1 == null)
      return null; 
    ArrayList<T> arrayList = new ArrayList(arrayList1.size());
    Iterator<byte[]> iterator = arrayList1.iterator();
    while (iterator.hasNext())
      arrayList.add(a(iterator.next(), paramCreator)); 
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */