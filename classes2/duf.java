import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.DetectedActivity;
import java.util.ArrayList;

public class duf implements Parcelable.Creator<ActivityRecognitionResult> {
  public static void a(ActivityRecognitionResult paramActivityRecognitionResult, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.c(paramParcel, 1, paramActivityRecognitionResult.a, false);
    csd.a(paramParcel, 2, paramActivityRecognitionResult.b);
    csd.a(paramParcel, 3, paramActivityRecognitionResult.c);
    csd.a(paramParcel, 4, paramActivityRecognitionResult.d);
    csd.a(paramParcel, 5, paramActivityRecognitionResult.e, false);
    csd.a(paramParcel, paramInt);
  }
  
  public ActivityRecognitionResult a(Parcel paramParcel) {
    long l1 = 0L;
    Bundle bundle = null;
    int j = csb.b(paramParcel);
    int i = 0;
    long l2 = 0L;
    ArrayList<?> arrayList = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          arrayList = csb.c(paramParcel, k, DetectedActivity.CREATOR);
          break;
        case 2:
          l2 = csb.i(paramParcel, k);
          break;
        case 3:
          l1 = csb.i(paramParcel, k);
          break;
        case 4:
          i = csb.g(paramParcel, k);
          break;
        case 5:
          bundle = csb.s(paramParcel, k);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new ActivityRecognitionResult(arrayList, l2, l1, i, bundle);
  }
  
  public ActivityRecognitionResult[] a(int paramInt) {
    return new ActivityRecognitionResult[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\duf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */