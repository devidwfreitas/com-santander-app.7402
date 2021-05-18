import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class crk<T extends SafeParcelable> extends cqw<T> {
  private static final String[] b = new String[] { "data" };
  
  private final Parcelable.Creator<T> c;
  
  public crk(DataHolder paramDataHolder, Parcelable.Creator<T> paramCreator) {
    super(paramDataHolder);
    this.c = paramCreator;
  }
  
  public static <T extends SafeParcelable> void a(crd paramcrd, T paramT) {
    Parcel parcel = Parcel.obtain();
    paramT.writeToParcel(parcel, 0);
    ContentValues contentValues = new ContentValues();
    contentValues.put("data", parcel.marshall());
    paramcrd.a(contentValues);
    parcel.recycle();
  }
  
  public static crd f() {
    return DataHolder.a(b);
  }
  
  public T b(int paramInt) {
    byte[] arrayOfByte = this.a.f("data", paramInt, this.a.a(paramInt));
    Parcel parcel = Parcel.obtain();
    parcel.unmarshall(arrayOfByte, 0, arrayOfByte.length);
    parcel.setDataPosition(0);
    SafeParcelable safeParcelable = (SafeParcelable)this.c.createFromParcel(parcel);
    parcel.recycle();
    return (T)safeParcelable;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */