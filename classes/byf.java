import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.share.internal.LikeContent;
import java.util.ArrayList;
import java.util.List;

public class byf extends bny<LikeContent, byk> {
  private static final String b = "LikeDialog";
  
  private static final int c = bnl.Like.toRequestCode();
  
  public byf(Activity paramActivity) {
    super(paramActivity, c);
  }
  
  public byf(Fragment paramFragment) {
    this(new bpa(paramFragment));
  }
  
  public byf(Fragment paramFragment) {
    this(new bpa(paramFragment));
  }
  
  public byf(bpa parambpa) {
    super(parambpa, c);
  }
  
  private static Bundle b(LikeContent paramLikeContent) {
    Bundle bundle = new Bundle();
    bundle.putString("object_id", paramLikeContent.a());
    bundle.putString("object_type", paramLikeContent.b());
    return bundle;
  }
  
  public static boolean e() {
    return bnw.a(h());
  }
  
  public static boolean f() {
    return bnw.b(h());
  }
  
  private static bnv h() {
    return bym.LIKE_DIALOG;
  }
  
  protected void a(bnj parambnj, bhl<byk> parambhl) {
    byg byg;
    if (parambhl == null) {
      parambhl = null;
    } else {
      byg = new byg(this, parambhl, parambhl);
    } 
    byh byh = new byh(this, byg);
    parambnj.b(a(), byh);
  }
  
  protected List<bny<LikeContent, byk>.bnz> c() {
    ArrayList<byi> arrayList = new ArrayList();
    arrayList.add(new byi(this, null));
    arrayList.add(new byl(this, null));
    return (List)arrayList;
  }
  
  protected bmr d() {
    return new bmr(a());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\byf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */