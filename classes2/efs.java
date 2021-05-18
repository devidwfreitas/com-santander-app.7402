import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.PatternItem;

public class efs implements Parcelable.Creator<PatternItem> {
  public static void a(PatternItem paramPatternItem, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 2, paramPatternItem.a());
    csd.a(paramParcel, 3, paramPatternItem.b(), false);
    csd.a(paramParcel, paramInt);
  }
  
  public PatternItem a(Parcel paramParcel) {
    int j = csb.b(paramParcel);
    int i = 0;
    Float float_ = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 2:
          i = csb.g(paramParcel, k);
          break;
        case 3:
          float_ = csb.m(paramParcel, k);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new PatternItem(i, float_);
  }
  
  public PatternItem[] a(int paramInt) {
    return new PatternItem[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */