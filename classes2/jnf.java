import android.os.Parcel;
import android.os.Parcelable;
import com.santander.app.lojaonline.domain.LojaTerm;

public final class jnf implements Parcelable.Creator<LojaTerm> {
  public LojaTerm a(Parcel paramParcel) {
    return new LojaTerm(paramParcel);
  }
  
  public LojaTerm[] a(int paramInt) {
    return new LojaTerm[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jnf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */