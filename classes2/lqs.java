import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import com.santander.app.seguros.ui.sinister.activities.MySinisterActivity;
import java.util.List;

public class lqs extends FragmentPagerAdapter {
  private List<kvp> b;
  
  private List<kvp> c;
  
  private String[] d = new String[] { this.a.getResources().getString(2131298311), this.a.getResources().getString(2131296883) };
  
  public lqs(MySinisterActivity paramMySinisterActivity, FragmentManager paramFragmentManager, List<kvp> paramList1, List<kvp> paramList2) {
    super(paramFragmentManager);
    this.b = paramList1;
    this.c = paramList2;
  }
  
  public int getCount() {
    return 2;
  }
  
  public Fragment getItem(int paramInt) {
    switch (paramInt) {
      default:
        return lwi.a(this.b);
      case 0:
        return lwi.a(this.b);
      case 1:
        break;
    } 
    return lwg.a(this.c);
  }
  
  public CharSequence getPageTitle(int paramInt) {
    return this.d[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lqs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */