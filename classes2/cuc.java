import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.HashMap;

final class cuc extends cua implements Handler.Callback {
  private final HashMap<cub, cud> a = new HashMap<cub, cud>();
  
  private final Context b;
  
  private final Handler c;
  
  private final cvf d;
  
  private final long e;
  
  private final long f;
  
  cuc(Context paramContext) {
    this.b = paramContext.getApplicationContext();
    this.c = new Handler(paramContext.getMainLooper(), this);
    this.d = cvf.a();
    this.e = 5000L;
    this.f = 300000L;
  }
  
  protected boolean a(cub paramcub, ServiceConnection paramServiceConnection, String paramString) {
    cud cud2;
    csp.a(paramServiceConnection, "ServiceConnection must not be null");
    synchronized (this.a) {
      cud cud;
      cud2 = this.a.get(paramcub);
      if (cud2 == null) {
        cud2 = new cud(this, paramcub);
        cud2.a(paramServiceConnection, paramString);
        cud2.a(paramString);
        this.a.put(paramcub, cud2);
        cud = cud2;
        return cud.a();
      } 
      this.c.removeMessages(0, cud);
      if (cud2.a(paramServiceConnection)) {
        String str = String.valueOf(cud);
        throw new IllegalStateException((new StringBuilder(String.valueOf(str).length() + 81)).append("Trying to bind a GmsServiceConnection that was already connected before.  config=").append(str).toString());
      } 
    } 
    cud2.a(paramServiceConnection, paramString);
    switch (cud2.b()) {
      case 1:
        paramServiceConnection.onServiceConnected(cud2.e(), cud2.d());
        cud1 = cud2;
        bool = cud1.a();
        /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_6} */
        return bool;
      case 2:
        cud2.a(paramString);
        cud1 = cud2;
        bool = cud1.a();
        /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_6} */
        return bool;
    } 
    cud cud1 = cud2;
    boolean bool = cud1.a();
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_6} */
    return bool;
  }
  
  protected void b(cub paramcub, ServiceConnection paramServiceConnection, String paramString) {
    String str;
    cud cud;
    csp.a(paramServiceConnection, "ServiceConnection must not be null");
    synchronized (this.a) {
      cud = this.a.get(paramcub);
      if (cud == null) {
        str = String.valueOf(paramcub);
        throw new IllegalStateException((new StringBuilder(String.valueOf(str).length() + 50)).append("Nonexistent connection status for service config: ").append(str).toString());
      } 
    } 
    if (!cud.a(paramServiceConnection)) {
      str = String.valueOf(paramcub);
      throw new IllegalStateException((new StringBuilder(String.valueOf(str).length() + 76)).append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=").append(str).toString());
    } 
    cud.b(paramServiceConnection, paramString);
    if (cud.c()) {
      Message message = this.c.obtainMessage(0, str);
      this.c.sendMessageDelayed(message, this.e);
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_4} */
  }
  
  public boolean handleMessage(Message paramMessage) {
    switch (paramMessage.what) {
      default:
        return false;
      case 0:
        synchronized (this.a) {
          cub cub = (cub)paramMessage.obj;
          cud cud = this.a.get(cub);
          if (cud != null && cud.c()) {
            if (cud.a())
              cud.b("GmsClientSupervisor"); 
            this.a.remove(cub);
          } 
          return true;
        } 
      case 1:
        break;
    } 
    synchronized (this.a) {
      cub cub = (cub)paramMessage.obj;
      cud cud = this.a.get(cub);
      if (cud != null && cud.b() == 3) {
        String str = String.valueOf(cub);
        Log.wtf("GmsClientSupervisor", (new StringBuilder(String.valueOf(str).length() + 47)).append("Timeout waiting for ServiceConnection callback ").append(str).toString(), new Exception());
        ComponentName componentName2 = cud.e();
        ComponentName componentName1 = componentName2;
        if (componentName2 == null)
          componentName1 = cub.b(); 
        if (componentName1 == null)
          componentName1 = new ComponentName(cub.a(), "unknown"); 
        cud.onServiceDisconnected(componentName1);
      } 
      return true;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cuc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */