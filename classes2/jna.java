import android.os.Parcel;
import android.os.Parcelable;
import com.santander.app.lojaonline.domain.LojaCampaign;

public final class jna implements Parcelable.Creator<LojaCampaign.Campaign> {
  public LojaCampaign.Campaign a(Parcel paramParcel) {
    return new LojaCampaign.Campaign(paramParcel);
  }
  
  public LojaCampaign.Campaign[] a(int paramInt) {
    return new LojaCampaign.Campaign[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jna.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */