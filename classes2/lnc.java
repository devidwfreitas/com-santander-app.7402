import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class lnc extends mic {
  public static final String a = "account-key";
  
  private lne b;
  
  private List<kql> c;
  
  public static lnc a(List<kql> paramList) {
    Bundle bundle = new Bundle();
    bundle.putString("account-key", mys.a().b(paramList));
    lnc lnc1 = new lnc();
    lnc1.setArguments(bundle);
    return lnc1;
  }
  
  public RecyclerView.Adapter a() {
    llm llm = new llm(this.c);
    llm.a(new lnd(this));
    return llm;
  }
  
  public void a(lne paramlne) {
    this.b = paramlne;
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey("account-key"))
      this.c = new ArrayList<kql>(Arrays.asList((Object[])mys.a().a(getArguments().getString("account-key"), kql[].class))); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lnc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */