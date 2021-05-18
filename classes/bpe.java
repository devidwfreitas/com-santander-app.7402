import android.content.Context;

class bpe implements Runnable {
  private Context a;
  
  private bph b;
  
  private boolean c;
  
  bpe(Context paramContext, bph parambph, boolean paramBoolean) {
    this.a = paramContext;
    this.b = parambph;
    this.c = paramBoolean;
  }
  
  public void run() {
    bpc.a(this.b, this.a, this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bpe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */