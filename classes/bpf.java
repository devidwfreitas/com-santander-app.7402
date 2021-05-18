import android.content.Context;

class bpf implements Runnable {
  private Context a;
  
  private bph b;
  
  bpf(Context paramContext, bph parambph) {
    this.a = paramContext;
    this.b = parambph;
  }
  
  public void run() {
    bpc.a(this.b, this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bpf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */