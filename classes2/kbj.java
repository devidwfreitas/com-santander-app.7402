import android.widget.SeekBar;

class kbj implements SeekBar.OnSeekBarChangeListener {
  private int c = 0;
  
  private int d = 0;
  
  kbj(kbi paramkbi, int paramInt) {}
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean) {
    this.c = paramInt;
  }
  
  public void onStartTrackingTouch(SeekBar paramSeekBar) {
    this.d = paramSeekBar.getProgress();
  }
  
  public void onStopTrackingTouch(SeekBar paramSeekBar) {
    if (this.c <= 25) {
      paramSeekBar.setProgress(0);
    } else if (this.c > 25 && this.c <= 50) {
      paramSeekBar.setProgress(50);
    } else if (this.c > 50 && this.c <= 75) {
      paramSeekBar.setProgress(50);
    } else if (this.c > 75) {
      paramSeekBar.setProgress(100);
    } 
    if (this.d != this.c)
      this.b.a(this.c, this.a, paramSeekBar, this.d, ((kbq)kbi.a(this.b).get(this.a)).b()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kbj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */