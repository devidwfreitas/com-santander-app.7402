import android.os.IBinder;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class edr {
  private final ees a;
  
  public edr(ees paramees) {
    this.a = csp.<ees>a(paramees);
  }
  
  public int a() {
    try {
      return this.a.a();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public int b() {
    try {
      return this.a.a();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public List<eds> c() {
    try {
      List<IBinder> list = this.a.c();
      ArrayList<eds> arrayList = new ArrayList(list.size());
      Iterator<IBinder> iterator = list.iterator();
      while (iterator.hasNext())
        arrayList.add(new eds(eew.a(iterator.next()))); 
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
    return (List<eds>)remoteException;
  }
  
  public boolean d() {
    try {
      return this.a.d();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean equals(Object paramObject) {
    if (!(paramObject instanceof edr))
      return false; 
    try {
      return this.a.a(((edr)paramObject).a);
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public int hashCode() {
    try {
      return this.a.e();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\edr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */