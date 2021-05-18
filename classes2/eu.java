import java.util.concurrent.Executor;

class eu implements Executor {
  private static final int a = 15;
  
  private ThreadLocal<Integer> b = new ThreadLocal<Integer>();
  
  private eu() {}
  
  private int a() {
    Integer integer2 = this.b.get();
    Integer integer1 = integer2;
    if (integer2 == null)
      integer1 = Integer.valueOf(0); 
    int i = integer1.intValue() + 1;
    this.b.set(Integer.valueOf(i));
    return i;
  }
  
  private int b() {
    Integer integer2 = this.b.get();
    Integer integer1 = integer2;
    if (integer2 == null)
      integer1 = Integer.valueOf(0); 
    int i = integer1.intValue() - 1;
    if (i == 0) {
      this.b.remove();
      return i;
    } 
    this.b.set(Integer.valueOf(i));
    return i;
  }
  
  public void execute(Runnable paramRunnable) {
    if (a() <= 15)
      try {
        paramRunnable.run();
        return;
      } finally {
        b();
      }  
    es.a().execute(paramRunnable);
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */