import android.os.Handler;

class lzd implements Runnable {
  lzd(lyy paramlyy, Handler paramHandler) {}
  
  public void run() {
    if (lyy.g(this.b) != null) {
      int i = lyy.g(this.b).getCurrentPosition();
      lyy.e(this.b).a().setProgress(i);
    } 
    this.a.postDelayed(lyy.h(this.b), 1000L);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lzd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */