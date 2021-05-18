import android.content.Context;
import android.util.Base64;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

class lxb implements kxa {
  lxb(lwr paramlwr) {}
  
  public void a() {
    if (lwr.c(this.a) == null || lwr.c(this.a).isFinishing())
      return; 
    (lwr.c(this.a)).b.setState(aor.CONTENT);
    mhj.c((Context)lwr.c(this.a), this.a.getResources().getString(2131297122));
  }
  
  public void a(Object paramObject) {
    if (lwr.c(this.a) == null || lwr.c(this.a).isFinishing())
      return; 
    try {
      if (paramObject instanceof is) {
        paramObject = paramObject;
        (lwr.c(this.a)).b.setState(aor.CONTENT);
        kwn kwn = mys.a().<kwn>a(paramObject.c().toString(), kwn.class);
        paramObject = new File(lwr.c(this.a).getExternalCacheDir(), lwr.b(this.a, lwr.d(this.a)));
        byte[] arrayOfByte = Base64.decode(kwn.a(), 0);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream((File)paramObject));
        bufferedOutputStream.write(arrayOfByte);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
        mhj.a((grs)lwr.c(this.a), (File)paramObject);
        return;
      } 
    } catch (Exception exception) {
      exception.printStackTrace();
      (lwr.c(this.a)).b.setState(aor.CONTENT);
      mhj.c((Context)lwr.c(this.a), this.a.getResources().getString(2131297122));
      return;
    } 
    (lwr.c(this.a)).b.setState(aor.CONTENT);
    mhj.c((Context)lwr.c(this.a), this.a.getResources().getString(2131297122));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lxb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */