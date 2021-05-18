import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;

public class tt extends FragmentPagerAdapter {
  public tt(FragmentManager paramFragmentManager) {
    super(paramFragmentManager);
  }
  
  public int getCount() {
    return 1;
  }
  
  public Fragment getItem(int paramInt) {
    switch (paramInt) {
      default:
        return null;
      case 0:
        return new ts();
      case 1:
        break;
    } 
    return new tr();
  }
  
  public CharSequence getPageTitle(int paramInt) {
    switch (paramInt) {
      default:
        return null;
      case 0:
        return "Investimentos";
      case 1:
        break;
    } 
    return "Objetivos";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\tt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */