import android.content.Context;
import android.util.Base64;
import com.santander.app.seguros.ui.sinister.activities.SinisterDocumentsActivity;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

public class lss implements kxa {
  public lss(SinisterDocumentsActivity paramSinisterDocumentsActivity, kus paramkus) {}
  
  public void a() {
    if (this.b.isFinishing())
      return; 
    SinisterDocumentsActivity.g(this.b).setState(aor.CONTENT);
    mhj.c((Context)this.b, this.b.getResources().getString(2131297122));
  }
  
  public void a(Object paramObject) {
    if (this.b.isFinishing())
      return; 
    try {
      if (paramObject instanceof is) {
        paramObject = paramObject;
        SinisterDocumentsActivity.g(this.b).setState(aor.CONTENT);
        kwn kwn = mys.a().<kwn>a(paramObject.c().toString(), kwn.class);
        paramObject = SinisterDocumentsActivity.c(this.b, this.a);
        byte[] arrayOfByte = Base64.decode(kwn.a(), 0);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream((File)paramObject));
        bufferedOutputStream.write(arrayOfByte);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
        mhj.a((grs)this.b, (File)paramObject);
        return;
      } 
    } catch (Exception exception) {
      exception.printStackTrace();
      this.b.a(this.a);
      SinisterDocumentsActivity.g(this.b).setState(aor.CONTENT);
      mhj.c((Context)this.b, this.b.getResources().getString(2131297122));
      return;
    } 
    SinisterDocumentsActivity.g(this.b).setState(aor.CONTENT);
    mhj.c((Context)this.b, this.b.getResources().getString(2131297122));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lss.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */