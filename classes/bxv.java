import java.util.ArrayList;

class bxv implements Runnable {
  private static ArrayList<String> a = new ArrayList<String>();
  
  private String b;
  
  private boolean c;
  
  bxv(String paramString, boolean paramBoolean) {
    this.b = paramString;
    this.c = paramBoolean;
  }
  
  public void run() {
    if (this.b != null) {
      a.remove(this.b);
      a.add(0, this.b);
    } 
    if (this.c && a.size() >= 128)
      while (64 < a.size()) {
        String str = a.remove(a.size() - 1);
        bww.h().remove(str);
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bxv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */