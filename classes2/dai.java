import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class dai implements cpw {
  public final int a;
  
  public final cpt b;
  
  public final cpw c;
  
  public dai(dah paramdah, int paramInt, cpt paramcpt, cpw paramcpw) {
    this.a = paramInt;
    this.b = paramcpt;
    this.c = paramcpw;
    paramcpt.a(this);
  }
  
  public void a() {
    this.b.c(this);
    this.b.g();
  }
  
  public void a(@NonNull ConnectionResult paramConnectionResult) {
    String str = String.valueOf(paramConnectionResult);
    Log.d("AutoManageHelper", (new StringBuilder(String.valueOf(str).length() + 27)).append("beginFailureResolution for ").append(str).toString());
    this.d.b(paramConnectionResult, this.a);
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {
    paramPrintWriter.append(paramString).append("GoogleApiClient #").print(this.a);
    paramPrintWriter.println(":");
    this.b.b(String.valueOf(paramString).concat("  "), paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */