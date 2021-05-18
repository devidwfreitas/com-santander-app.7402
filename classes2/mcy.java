import android.view.Choreographer;

class mcy implements Choreographer.FrameCallback {
  mcy(mcx parammcx) {}
  
  public void doFrame(long paramLong) {
    this.a.invalidateSelf();
    if (mcx.a(this.a))
      Choreographer.getInstance().postFrameCallback(this); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mcy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */