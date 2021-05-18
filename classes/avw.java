import com.adjust.sdk.PackageHandler;

public class avw implements Runnable {
  public avw(PackageHandler paramPackageHandler) {}
  
  public void run() {
    PackageHandler.access$400(this.a).verbose("Package handler can send", new Object[0]);
    PackageHandler.access$500(this.a).set(false);
    this.a.sendFirstPackage();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\avw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */