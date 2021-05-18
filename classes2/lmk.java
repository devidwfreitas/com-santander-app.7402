import android.content.Context;
import android.view.View;
import android.widget.SeekBar;

class lmk implements SeekBar.OnSeekBarChangeListener {
  lmk(lmi paramlmi) {}
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean) {
    mhj.a((Context)lmi.b(this.a), (View)lmi.c(this.a));
    lmi.a(this.a);
    lmi.d(this.a).setVisibility(0);
    lmi.d(this.a).setText(String.format("%d%%", new Object[] { Integer.valueOf(paramInt) }));
  }
  
  public void onStartTrackingTouch(SeekBar paramSeekBar) {}
  
  public void onStopTrackingTouch(SeekBar paramSeekBar) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lmk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */