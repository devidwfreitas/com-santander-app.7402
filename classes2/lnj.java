import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class lnj extends mic {
  public static final String a = "account-key";
  
  public static final String b = "no-to-inform-key";
  
  private lnl c;
  
  private List<ksd> d;
  
  private boolean e;
  
  public static lnj a(List<ksd> paramList, boolean paramBoolean) {
    Bundle bundle = new Bundle();
    bundle.putString("account-key", mys.a().b(paramList));
    bundle.putBoolean("no-to-inform-key", paramBoolean);
    lnj lnj1 = new lnj();
    lnj1.setArguments(bundle);
    return lnj1;
  }
  
  public RecyclerView.Adapter a() {
    llq llq = new llq(this.d, this.e);
    llq.a(new lnk(this));
    return llq;
  }
  
  public void a(lnl paramlnl) {
    this.c = paramlnl;
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey("account-key"))
      this.d = new ArrayList<ksd>(Arrays.asList((Object[])mys.a().a(getArguments().getString("account-key"), ksd[].class))); 
    if (getArguments() != null && getArguments().containsKey("no-to-inform-key"))
      this.e = getArguments().getBoolean("no-to-inform-key"); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lnj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */