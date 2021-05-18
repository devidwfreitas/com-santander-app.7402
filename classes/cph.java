import android.content.Intent;
import android.os.IBinder;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.Scope;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Set;

public interface cph extends cpe {
  void a();
  
  void a(cth paramcth);
  
  void a(cug paramcug, Set<Scope> paramSet);
  
  void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString);
  
  boolean b();
  
  boolean c();
  
  boolean d();
  
  boolean e();
  
  boolean f();
  
  Intent g();
  
  @Nullable
  IBinder h();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cph.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */