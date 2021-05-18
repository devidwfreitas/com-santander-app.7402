import android.view.View;
import android.widget.PopupWindow;

class aob implements PopupWindow.OnDismissListener {
  aob(aoa paramaoa) {}
  
  public void onDismiss() {
    aoo.a((View)aoa.a(this.a), aoa.b(this.a));
    aoa.d(this.a).removeOnAttachStateChangeListener(aoa.c(this.a));
    if (aoa.e(this.a) != null)
      aoa.e(this.a).onDismiss(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aob.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */