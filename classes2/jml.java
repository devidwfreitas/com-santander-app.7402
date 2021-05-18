import android.os.CountDownTimer;

class jml extends CountDownTimer {
  jml(jmk paramjmk, long paramLong1, long paramLong2) {
    super(paramLong1, paramLong2);
  }
  
  public void onFinish() {
    jmk.a(this.a).a();
  }
  
  public void onTick(long paramLong) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jml.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */