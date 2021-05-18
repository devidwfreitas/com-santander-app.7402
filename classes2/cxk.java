import android.annotation.SuppressLint;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;

@SuppressLint({"NewApi"})
public final class cxk extends cxm {
  private Fragment a;
  
  private cxk(Fragment paramFragment) {
    this.a = paramFragment;
  }
  
  public static cxk a(Fragment paramFragment) {
    return (paramFragment != null) ? new cxk(paramFragment) : null;
  }
  
  public cwx a() {
    return cxo.a(this.a.getActivity());
  }
  
  public void a(Intent paramIntent) {
    this.a.startActivity(paramIntent);
  }
  
  public void a(Intent paramIntent, int paramInt) {
    this.a.startActivityForResult(paramIntent, paramInt);
  }
  
  public void a(cwx paramcwx) {
    View view = cxo.<View>a(paramcwx);
    this.a.registerForContextMenu(view);
  }
  
  public void a(boolean paramBoolean) {
    this.a.setHasOptionsMenu(paramBoolean);
  }
  
  public Bundle b() {
    return this.a.getArguments();
  }
  
  public void b(cwx paramcwx) {
    View view = cxo.<View>a(paramcwx);
    this.a.unregisterForContextMenu(view);
  }
  
  public void b(boolean paramBoolean) {
    this.a.setMenuVisibility(paramBoolean);
  }
  
  public int c() {
    return this.a.getId();
  }
  
  public void c(boolean paramBoolean) {
    this.a.setRetainInstance(paramBoolean);
  }
  
  public cxl d() {
    return a(this.a.getParentFragment());
  }
  
  public void d(boolean paramBoolean) {
    this.a.setUserVisibleHint(paramBoolean);
  }
  
  public cwx e() {
    return cxo.a(this.a.getResources());
  }
  
  public boolean f() {
    return this.a.getRetainInstance();
  }
  
  public String g() {
    return this.a.getTag();
  }
  
  public cxl h() {
    return a(this.a.getTargetFragment());
  }
  
  public int i() {
    return this.a.getTargetRequestCode();
  }
  
  public boolean j() {
    return this.a.getUserVisibleHint();
  }
  
  public cwx k() {
    return cxo.a(this.a.getView());
  }
  
  public boolean l() {
    return this.a.isAdded();
  }
  
  public boolean m() {
    return this.a.isDetached();
  }
  
  public boolean n() {
    return this.a.isHidden();
  }
  
  public boolean o() {
    return this.a.isInLayout();
  }
  
  public boolean p() {
    return this.a.isRemoving();
  }
  
  public boolean q() {
    return this.a.isResumed();
  }
  
  public boolean r() {
    return this.a.isVisible();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cxk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */