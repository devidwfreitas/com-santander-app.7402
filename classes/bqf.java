import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import java.util.HashSet;
import java.util.TreeSet;

abstract class bqf {
  private static final String a = "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc";
  
  private static final String b = "5e8f16062ea3cd2c4a0d547876baa6f38cabf625";
  
  private static final String c = "8a3c4b262d721acd49a4bf97d5213199c86fa2b9";
  
  private static final HashSet<String> d = d();
  
  private TreeSet<Integer> e;
  
  private bqf() {}
  
  private void a(boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_1
    //   3: ifne -> 13
    //   6: aload_0
    //   7: getfield e : Ljava/util/TreeSet;
    //   10: ifnonnull -> 21
    //   13: aload_0
    //   14: aload_0
    //   15: invokestatic a : (Lbqf;)Ljava/util/TreeSet;
    //   18: putfield e : Ljava/util/TreeSet;
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    //   24: astore_2
    //   25: aload_0
    //   26: monitorexit
    //   27: aload_2
    //   28: athrow
    // Exception table:
    //   from	to	target	type
    //   6	13	24	finally
    //   13	21	24	finally
  }
  
  private static HashSet<String> d() {
    HashSet<String> hashSet = new HashSet();
    hashSet.add("8a3c4b262d721acd49a4bf97d5213199c86fa2b9");
    hashSet.add("a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc");
    hashSet.add("5e8f16062ea3cd2c4a0d547876baa6f38cabf625");
    return hashSet;
  }
  
  protected abstract String a();
  
  public boolean a(Context paramContext, String paramString) {
    String str = Build.BRAND;
    int i = (paramContext.getApplicationInfo()).flags;
    if (!str.startsWith("generic") || (i & 0x2) == 0) {
      try {
        PackageInfo packageInfo = paramContext.getPackageManager().getPackageInfo(paramString, 64);
        if (packageInfo.signatures == null || packageInfo.signatures.length <= 0)
          return false; 
      } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
        return false;
      } 
      Signature[] arrayOfSignature = ((PackageInfo)nameNotFoundException).signatures;
      int j = arrayOfSignature.length;
      i = 0;
      while (true) {
        if (i < j) {
          paramString = bqq.a(arrayOfSignature[i].toByteArray());
          if (!d.contains(paramString))
            return false; 
          i++;
          continue;
        } 
        return true;
      } 
    } 
    return true;
  }
  
  protected abstract String b();
  
  public TreeSet<Integer> c() {
    if (this.e == null)
      a(false); 
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bqf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */