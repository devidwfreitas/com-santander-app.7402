import android.os.Bundle;
import com.facebook.share.model.ShareMedia;
import java.util.List;
import java.util.UUID;

final class bzk implements bqu<ShareMedia, Bundle> {
  bzk(UUID paramUUID, List paramList) {}
  
  public Bundle a(ShareMedia paramShareMedia) {
    bpz bpz = bze.a(this.a, paramShareMedia);
    this.b.add(bpz);
    Bundle bundle = new Bundle();
    bundle.putString("type", paramShareMedia.b().name());
    bundle.putString("uri", bpz.a());
    return bundle;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bzk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */