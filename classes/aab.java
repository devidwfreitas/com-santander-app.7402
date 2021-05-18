import android.os.FileObserver;

class aab extends FileObserver {
  aab(aaa paramaaa, String paramString) {
    super(paramString);
  }
  
  public void onEvent(int paramInt, String paramString) {
    if (paramInt == 2) {
      zz zz = aaa.a(this.a);
      if (zz != null) {
        aaa.a(this.a, "Type: " + zz.c() + "\nName: " + zz.a() + "\nValue: " + zz.b());
        this.a.a("Type: " + zz.c() + "\nName: " + zz.a() + "\nValue: " + zz.b());
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */