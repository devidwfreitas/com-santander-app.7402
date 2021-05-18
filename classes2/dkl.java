import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzato;

public class dkl implements Parcelable.Creator<zzato> {
  public static void a(zzato paramzzato, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 2, paramzzato.b(), false);
    csd.a(paramParcel, paramInt);
  }
  
  public zzato a(Parcel paramParcel) {
    int i = csb.b(paramParcel);
    Bundle bundle = null;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 2:
          bundle = csb.s(paramParcel, j);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new zzato(bundle);
  }
  
  public zzato[] a(int paramInt) {
    return new zzato[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dkl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */