import android.app.Activity;
import android.app.Fragment;
import android.support.v4.app.Fragment;
import com.facebook.share.model.AppGroupCreationContent;
import java.util.ArrayList;
import java.util.List;

@Deprecated
public class cbr extends bny<AppGroupCreationContent, cbu> {
  private static final String b = "game_group_create";
  
  private static final int c = bnl.AppGroupCreate.toRequestCode();
  
  @Deprecated
  public cbr(Activity paramActivity) {
    super(paramActivity, c);
  }
  
  @Deprecated
  public cbr(Fragment paramFragment) {
    this(new bpa(paramFragment));
  }
  
  @Deprecated
  public cbr(Fragment paramFragment) {
    this(new bpa(paramFragment));
  }
  
  private cbr(bpa parambpa) {
    super(parambpa, c);
  }
  
  @Deprecated
  public static void a(Activity paramActivity, AppGroupCreationContent paramAppGroupCreationContent) {
    (new cbr(paramActivity)).b(paramAppGroupCreationContent);
  }
  
  @Deprecated
  public static void a(Fragment paramFragment, AppGroupCreationContent paramAppGroupCreationContent) {
    a(new bpa(paramFragment), paramAppGroupCreationContent);
  }
  
  @Deprecated
  public static void a(Fragment paramFragment, AppGroupCreationContent paramAppGroupCreationContent) {
    a(new bpa(paramFragment), paramAppGroupCreationContent);
  }
  
  private static void a(bpa parambpa, AppGroupCreationContent paramAppGroupCreationContent) {
    (new cbr(parambpa)).b(paramAppGroupCreationContent);
  }
  
  @Deprecated
  public static boolean e() {
    return true;
  }
  
  protected void a(bnj parambnj, bhl<cbu> parambhl) {
    cbs cbs;
    if (parambhl == null) {
      parambhl = null;
    } else {
      cbs = new cbs(this, parambhl, parambhl);
    } 
    cbt cbt = new cbt(this, cbs);
    parambnj.b(a(), cbt);
  }
  
  protected List<bny<AppGroupCreationContent, cbu>.bnz> c() {
    ArrayList<cbv> arrayList = new ArrayList();
    arrayList.add(new cbv(this, null));
    return (List)arrayList;
  }
  
  protected bmr d() {
    return new bmr(a());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cbr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */