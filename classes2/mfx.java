import android.widget.SeekBar;

class mfx implements SeekBar.OnSeekBarChangeListener {
  private SeekBar.OnSeekBarChangeListener a;
  
  private SeekBar.OnSeekBarChangeListener b;
  
  private mfx() {}
  
  public void a(SeekBar.OnSeekBarChangeListener paramOnSeekBarChangeListener) {
    this.a = paramOnSeekBarChangeListener;
  }
  
  public void b(SeekBar.OnSeekBarChangeListener paramOnSeekBarChangeListener) {
    this.b = paramOnSeekBarChangeListener;
  }
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean) {
    if (this.a != null)
      this.a.onProgressChanged(paramSeekBar, paramInt, paramBoolean); 
    if (this.b != null)
      this.b.onProgressChanged(paramSeekBar, paramInt, paramBoolean); 
  }
  
  public void onStartTrackingTouch(SeekBar paramSeekBar) {
    if (this.a != null)
      this.a.onStartTrackingTouch(paramSeekBar); 
    if (this.b != null)
      this.b.onStartTrackingTouch(paramSeekBar); 
  }
  
  public void onStopTrackingTouch(SeekBar paramSeekBar) {
    if (this.a != null)
      this.a.onStopTrackingTouch(paramSeekBar); 
    if (this.b != null)
      this.b.onStopTrackingTouch(paramSeekBar); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mfx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */