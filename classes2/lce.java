import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;

class lce extends FragmentStatePagerAdapter {
  private String[] b = new String[] { this.a.getResources().getString(2131298311), this.a.getResources().getString(2131296883) };
  
  lce(lca paramlca, FragmentManager paramFragmentManager) {
    super(paramFragmentManager);
  }
  
  public int getCount() {
    return 2;
  }
  
  public Fragment getItem(int paramInt) {
    switch (paramInt) {
      default:
        return lbz.a(lca.b(this.a));
      case 0:
        break;
    } 
    return lbz.a(lca.e(this.a));
  }
  
  public CharSequence getPageTitle(int paramInt) {
    return this.b[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lce.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */