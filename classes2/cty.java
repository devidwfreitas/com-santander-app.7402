import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

public final class cty implements Handler.Callback {
  final ArrayList<cpv> a = new ArrayList<cpv>();
  
  private final ctz b;
  
  private final ArrayList<cpv> c = new ArrayList<cpv>();
  
  private final ArrayList<cpw> d = new ArrayList<cpw>();
  
  private volatile boolean e = false;
  
  private final AtomicInteger f = new AtomicInteger(0);
  
  private boolean g = false;
  
  private final Handler h;
  
  private final Object i = new Object();
  
  public cty(Looper paramLooper, ctz paramctz) {
    this.b = paramctz;
    this.h = new Handler(paramLooper, this);
  }
  
  public void a() {
    this.e = false;
    this.f.incrementAndGet();
  }
  
  public void a(int paramInt) {
    boolean bool = false;
    if (Looper.myLooper() == this.h.getLooper())
      bool = true; 
    csp.a(bool, "onUnintentionalDisconnection must only be called on the Handler thread");
    this.h.removeMessages(1);
    synchronized (this.i) {
      this.g = true;
      ArrayList<cpv> arrayList = new ArrayList<cpv>(this.c);
      int i = this.f.get();
      Iterator<cpv> iterator = arrayList.iterator();
      while (true) {
        if (iterator.hasNext()) {
          cpv cpv = iterator.next();
          if (this.e && this.f.get() == i) {
            if (this.c.contains(cpv))
              cpv.a(paramInt); 
            continue;
          } 
        } 
        this.a.clear();
        this.g = false;
        return;
      } 
    } 
  }
  
  public void a(Bundle paramBundle) {
    boolean bool1;
    boolean bool2 = true;
    if (Looper.myLooper() == this.h.getLooper()) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    csp.a(bool1, "onConnectionSuccess must only be called on the Handler thread");
    synchronized (this.i) {
      if (!this.g) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      csp.a(bool1);
      this.h.removeMessages(1);
      this.g = true;
      if (this.a.size() == 0) {
        bool1 = bool2;
      } else {
        bool1 = false;
      } 
      csp.a(bool1);
      ArrayList<cpv> arrayList = new ArrayList<cpv>(this.c);
      int i = this.f.get();
      Iterator<cpv> iterator = arrayList.iterator();
      while (true) {
        if (iterator.hasNext()) {
          cpv cpv = iterator.next();
          if (this.e && this.b.b() && this.f.get() == i) {
            if (!this.a.contains(cpv))
              cpv.a(paramBundle); 
            continue;
          } 
        } 
        this.a.clear();
        this.g = false;
        return;
      } 
    } 
  }
  
  public void a(ConnectionResult paramConnectionResult) {
    boolean bool;
    if (Looper.myLooper() == this.h.getLooper()) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.a(bool, "onConnectionFailure must only be called on the Handler thread");
    this.h.removeMessages(1);
    synchronized (this.i) {
      ArrayList<cpw> arrayList = new ArrayList<cpw>(this.d);
      int i = this.f.get();
      for (cpw cpw : arrayList) {
        if (!this.e || this.f.get() != i)
          return; 
        if (this.d.contains(cpw))
          cpw.a(paramConnectionResult); 
      } 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_4} */
  }
  
  public void a(cpv paramcpv) {
    csp.a(paramcpv);
    synchronized (this.i) {
      if (this.c.contains(paramcpv)) {
        String str = String.valueOf(paramcpv);
        Log.w("GmsClientEvents", (new StringBuilder(String.valueOf(str).length() + 62)).append("registerConnectionCallbacks(): listener ").append(str).append(" is already registered").toString());
      } else {
        this.c.add(paramcpv);
      } 
      if (this.b.b())
        this.h.sendMessage(this.h.obtainMessage(1, paramcpv)); 
      return;
    } 
  }
  
  public void a(cpw paramcpw) {
    csp.a(paramcpw);
    synchronized (this.i) {
      String str;
      if (this.d.contains(paramcpw)) {
        str = String.valueOf(paramcpw);
        Log.w("GmsClientEvents", (new StringBuilder(String.valueOf(str).length() + 67)).append("registerConnectionFailedListener(): listener ").append(str).append(" is already registered").toString());
      } else {
        this.d.add(str);
      } 
      return;
    } 
  }
  
  public void b() {
    this.e = true;
  }
  
  public boolean b(cpv paramcpv) {
    csp.a(paramcpv);
    synchronized (this.i) {
      return this.c.contains(paramcpv);
    } 
  }
  
  public boolean b(cpw paramcpw) {
    csp.a(paramcpw);
    synchronized (this.i) {
      return this.d.contains(paramcpw);
    } 
  }
  
  public void c(cpv paramcpv) {
    csp.a(paramcpv);
    synchronized (this.i) {
      String str;
      if (!this.c.remove(paramcpv)) {
        str = String.valueOf(paramcpv);
        Log.w("GmsClientEvents", (new StringBuilder(String.valueOf(str).length() + 52)).append("unregisterConnectionCallbacks(): listener ").append(str).append(" not found").toString());
      } else if (this.g) {
        this.a.add(str);
      } 
      return;
    } 
  }
  
  public void c(cpw paramcpw) {
    csp.a(paramcpw);
    synchronized (this.i) {
      if (!this.d.remove(paramcpw)) {
        String str = String.valueOf(paramcpw);
        Log.w("GmsClientEvents", (new StringBuilder(String.valueOf(str).length() + 57)).append("unregisterConnectionFailedListener(): listener ").append(str).append(" not found").toString());
      } 
      return;
    } 
  }
  
  public boolean handleMessage(Message paramMessage) {
    if (paramMessage.what == 1) {
      null = (cpv)paramMessage.obj;
      synchronized (this.i) {
        if (this.e && this.b.b() && this.c.contains(null))
          null.a(this.b.v()); 
        return true;
      } 
    } 
    int i = paramMessage.what;
    Log.wtf("GmsClientEvents", (new StringBuilder(45)).append("Don't know how to handle message: ").append(i).toString(), new Exception());
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cty.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */