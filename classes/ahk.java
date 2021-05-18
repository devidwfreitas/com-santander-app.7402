import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import java.util.ArrayList;
import java.util.List;

final class ahk extends FragmentPagerAdapter {
  private final List<Fragment> a = new ArrayList<Fragment>();
  
  private final List<String> b = new ArrayList<String>();
  
  public ahk(FragmentManager paramFragmentManager) {
    super(paramFragmentManager);
  }
  
  public final void a(Fragment paramFragment, String paramString) {
    this.a.add(paramFragment);
    this.b.add(paramString);
  }
  
  public final int getCount() {
    return this.a.size();
  }
  
  public final Fragment getItem(int paramInt) {
    return this.a.get(paramInt);
  }
  
  public final CharSequence getPageTitle(int paramInt) {
    return this.b.get(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ahk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */