import android.app.Activity;
import android.app.Fragment;
import android.support.v4.app.Fragment;
import com.facebook.share.model.GameRequestContent;
import java.util.ArrayList;
import java.util.List;

public class cbx extends bny<GameRequestContent, cca> {
  private static final String b = "apprequests";
  
  private static final int c = bnl.GameRequest.toRequestCode();
  
  public cbx(Activity paramActivity) {
    super(paramActivity, c);
  }
  
  public cbx(Fragment paramFragment) {
    this(new bpa(paramFragment));
  }
  
  public cbx(Fragment paramFragment) {
    this(new bpa(paramFragment));
  }
  
  private cbx(bpa parambpa) {
    super(parambpa, c);
  }
  
  public static void a(Activity paramActivity, GameRequestContent paramGameRequestContent) {
    (new cbx(paramActivity)).b(paramGameRequestContent);
  }
  
  public static void a(Fragment paramFragment, GameRequestContent paramGameRequestContent) {
    a(new bpa(paramFragment), paramGameRequestContent);
  }
  
  public static void a(Fragment paramFragment, GameRequestContent paramGameRequestContent) {
    a(new bpa(paramFragment), paramGameRequestContent);
  }
  
  private static void a(bpa parambpa, GameRequestContent paramGameRequestContent) {
    (new cbx(parambpa)).b(paramGameRequestContent);
  }
  
  public static boolean e() {
    return true;
  }
  
  protected void a(bnj parambnj, bhl<cca> parambhl) {
    cby cby;
    if (parambhl == null) {
      parambhl = null;
    } else {
      cby = new cby(this, parambhl, parambhl);
    } 
    parambnj.b(a(), new cbz(this, cby));
  }
  
  protected List<bny<GameRequestContent, cca>.bnz> c() {
    ArrayList<ccb> arrayList = new ArrayList();
    arrayList.add(new ccb(this, null));
    return (List)arrayList;
  }
  
  protected bmr d() {
    return new bmr(a());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cbx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */