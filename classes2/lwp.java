import android.content.Context;
import android.util.Base64;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

class lwp implements kxa {
  lwp(lwk paramlwk) {}
  
  public void a() {
    if (lwk.a(this.a) == null || lwk.a(this.a).isFinishing())
      return; 
    (lwk.a(this.a)).b.setState(aor.CONTENT);
    mhj.c((Context)lwk.a(this.a), this.a.getResources().getString(2131297122));
  }
  
  public void a(Object paramObject) {
    if (lwk.a(this.a) == null || lwk.a(this.a).isFinishing())
      return; 
    try {
      if (paramObject instanceof is) {
        paramObject = paramObject;
        (lwk.a(this.a)).b.setState(aor.CONTENT);
        kwn kwn = mys.a().<kwn>a(paramObject.c().toString(), kwn.class);
        paramObject = new File(lwk.a(this.a).getExternalCacheDir(), lwk.b(this.a, lwk.b(this.a)));
        byte[] arrayOfByte = Base64.decode(kwn.a(), 0);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream((File)paramObject));
        bufferedOutputStream.write(arrayOfByte);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
        mhj.a((grs)lwk.a(this.a), (File)paramObject);
        return;
      } 
    } catch (Exception exception) {
      exception.printStackTrace();
      (lwk.a(this.a)).b.setState(aor.CONTENT);
      mhj.c((Context)lwk.a(this.a), this.a.getResources().getString(2131297122));
      return;
    } 
    (lwk.a(this.a)).b.setState(aor.CONTENT);
    mhj.c((Context)lwk.a(this.a), this.a.getResources().getString(2131297122));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lwp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */