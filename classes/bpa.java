import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.support.v4.app.Fragment;

public class bpa {
  private Fragment a;
  
  private Fragment b;
  
  public bpa(Fragment paramFragment) {
    bqx.a(paramFragment, "fragment");
    this.b = paramFragment;
  }
  
  public bpa(Fragment paramFragment) {
    bqx.a(paramFragment, "fragment");
    this.a = paramFragment;
  }
  
  public Fragment a() {
    return this.b;
  }
  
  public void a(Intent paramIntent, int paramInt) {
    if (this.a != null) {
      this.a.startActivityForResult(paramIntent, paramInt);
      return;
    } 
    this.b.startActivityForResult(paramIntent, paramInt);
  }
  
  public Fragment b() {
    return this.a;
  }
  
  public final Activity c() {
    return (Activity)((this.a != null) ? this.a.getActivity() : this.b.getActivity());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bpa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */