import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import com.facebook.FacebookActivity;
import com.facebook.share.model.ShareContent;
import java.util.List;

public class bvv extends bny<ShareContent, bvx> {
  private static final int b = bnl.DeviceShare.toRequestCode();
  
  public bvv(Activity paramActivity) {
    super(paramActivity, b);
  }
  
  public bvv(Fragment paramFragment) {
    super(new bpa(paramFragment), b);
  }
  
  public bvv(Fragment paramFragment) {
    super(new bpa(paramFragment), b);
  }
  
  protected void a(bnj parambnj, bhl<bvx> parambhl) {
    parambnj.b(a(), new bvw(this, parambhl));
  }
  
  protected boolean a(ShareContent paramShareContent, Object paramObject) {
    return (paramShareContent instanceof com.facebook.share.model.ShareLinkContent || paramShareContent instanceof com.facebook.share.model.ShareOpenGraphContent);
  }
  
  protected void b(ShareContent paramShareContent, Object paramObject) {
    if (paramShareContent == null)
      throw new bhp("Must provide non-null content to share"); 
    if (!(paramShareContent instanceof com.facebook.share.model.ShareLinkContent) && !(paramShareContent instanceof com.facebook.share.model.ShareOpenGraphContent))
      throw new bhp(getClass().getSimpleName() + " only supports ShareLinkContent or ShareOpenGraphContent"); 
    paramObject = new Intent();
    paramObject.setClass(bhv.h(), FacebookActivity.class);
    paramObject.setAction("DeviceShareDialogFragment");
    paramObject.putExtra("content", (Parcelable)paramShareContent);
    a((Intent)paramObject, a());
  }
  
  protected List<bny<ShareContent, bvx>.bnz> c() {
    return null;
  }
  
  protected bmr d() {
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bvv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */