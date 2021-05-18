import java.util.EventListener;

class nky implements Runnable {
  nky(nkv paramnkv, nib paramnib) {}
  
  public void run() {
    try {
      Class<EventListener> clazz = this.a.f();
      for (niw niw : nkv.a(this.b)) {
        if (clazz.isInstance(niw))
          this.a.a(clazz.cast(niw)); 
      } 
    } catch (Throwable throwable) {
      this.b.a.a(throwable);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nky.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */