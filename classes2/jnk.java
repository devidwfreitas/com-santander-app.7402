import com.santander.app.lojaonline.domain.LojaCampaign;
import java.util.ArrayList;
import java.util.List;

public class jnk implements jni {
  private jnc a = miq.C().z();
  
  private joh b = joq.a();
  
  private List<LojaCampaign.Campaign> a(LojaCampaign paramLojaCampaign, @jmz int paramInt) {
    ArrayList<LojaCampaign.Campaign> arrayList = new ArrayList();
    if (paramLojaCampaign.f() == null)
      return arrayList; 
    for (LojaCampaign.Campaign campaign : paramLojaCampaign.f()) {
      if (campaign.c() == paramInt && campaign.d() != null)
        arrayList.add(campaign); 
    } 
    return arrayList;
  }
  
  public void a(jnj paramjnj) {
    if (this.a == null) {
      paramjnj.a(new jnb("LojaHome is null"));
      return;
    } 
    this.b.a(this.a.c(), new jnl(this, paramjnj));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jnk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */