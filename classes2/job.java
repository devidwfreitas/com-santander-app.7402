import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.santander.app.lojaonline.domain.LojaCampaign;

public class job implements joa {
  @Nullable
  private jnv a;
  
  private jni b;
  
  private jnj c = new joc(this);
  
  public job(@NonNull jnv paramjnv) {
    this.a = paramjnv;
    this.b = new jnk();
  }
  
  public void a() {
    if (this.a == null)
      return; 
    this.a.a();
    this.b.a(this.c);
  }
  
  public void a(LojaCampaign.Campaign paramCampaign) {
    Uri uri;
    if (this.a == null)
      return; 
    switch (paramCampaign.a()) {
      default:
        return;
      case 1:
        uri = Uri.parse(paramCampaign.e());
        this.a.a(uri);
        return;
      case 2:
        this.a.b((LojaCampaign.Campaign)uri);
        return;
      case 3:
        break;
    } 
    this.a.c((LojaCampaign.Campaign)uri);
  }
  
  public void b() {
    this.a = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\job.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */