import android.app.Activity;
import android.app.Fragment;
import android.support.v4.app.Fragment;
import java.util.ArrayList;
import java.util.List;

@Deprecated
public class ccc extends bny<String, ccf> {
  private static final String b = "game_group_join";
  
  private static final int c = bnl.AppGroupJoin.toRequestCode();
  
  @Deprecated
  public ccc(Activity paramActivity) {
    super(paramActivity, c);
  }
  
  @Deprecated
  public ccc(Fragment paramFragment) {
    this(new bpa(paramFragment));
  }
  
  @Deprecated
  public ccc(Fragment paramFragment) {
    this(new bpa(paramFragment));
  }
  
  private ccc(bpa parambpa) {
    super(parambpa, c);
  }
  
  @Deprecated
  public static void a(Activity paramActivity, String paramString) {
    (new ccc(paramActivity)).b(paramString);
  }
  
  @Deprecated
  public static void a(Fragment paramFragment, String paramString) {
    a(new bpa(paramFragment), paramString);
  }
  
  @Deprecated
  public static void a(Fragment paramFragment, String paramString) {
    a(new bpa(paramFragment), paramString);
  }
  
  private static void a(bpa parambpa, String paramString) {
    (new ccc(parambpa)).b(paramString);
  }
  
  @Deprecated
  public static boolean e() {
    return true;
  }
  
  protected void a(bnj parambnj, bhl<ccf> parambhl) {
    ccd ccd;
    if (parambhl == null) {
      parambhl = null;
    } else {
      ccd = new ccd(this, parambhl, parambhl);
    } 
    cce cce = new cce(this, ccd);
    parambnj.b(a(), cce);
  }
  
  protected List<bny<String, ccf>.bnz> c() {
    ArrayList<ccg> arrayList = new ArrayList();
    arrayList.add(new ccg(this, null));
    return (List)arrayList;
  }
  
  protected bmr d() {
    return new bmr(a());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ccc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */