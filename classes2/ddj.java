import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.MainThread;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class ddj {
  protected final ddk d;
  
  protected ddj(ddk paramddk) {
    this.d = paramddk;
  }
  
  public static ddk a(Activity paramActivity) {
    return b(new ddi(paramActivity));
  }
  
  protected static ddk b(ddi paramddi) {
    return (ddk)(paramddi.a() ? def.a(paramddi.c()) : ddl.a(paramddi.b()));
  }
  
  @MainThread
  public void a() {}
  
  @MainThread
  public void a(int paramInt1, int paramInt2, Intent paramIntent) {}
  
  @MainThread
  public void a(Bundle paramBundle) {}
  
  @MainThread
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {}
  
  @MainThread
  public void b() {}
  
  @MainThread
  public void b(Bundle paramBundle) {}
  
  public Activity f() {
    return this.d.a();
  }
  
  @MainThread
  public void g() {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ddj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */