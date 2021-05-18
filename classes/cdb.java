import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import java.util.ArrayList;
import java.util.UUID;

class cdb extends bny<ShareContent, bwo>.bnz {
  private cdb(ccv paramccv) {
    super(paramccv);
  }
  
  private SharePhotoContent a(SharePhotoContent paramSharePhotoContent, UUID paramUUID) {
    cbf cbf = (new cbf()).a(paramSharePhotoContent);
    ArrayList<SharePhoto> arrayList = new ArrayList();
    ArrayList<bpz> arrayList1 = new ArrayList();
    for (int i = 0; i < paramSharePhotoContent.a().size(); i++) {
      SharePhoto sharePhoto2 = paramSharePhotoContent.a().get(i);
      Bitmap bitmap = sharePhoto2.c();
      SharePhoto sharePhoto1 = sharePhoto2;
      if (bitmap != null) {
        bpz bpz = bpx.a(paramUUID, bitmap);
        sharePhoto1 = (new cbd()).a(sharePhoto2).a(Uri.parse(bpz.a())).a((Bitmap)null).d();
        arrayList1.add(bpz);
      } 
      arrayList.add(sharePhoto1);
    } 
    cbf.c(arrayList);
    bpx.a(arrayList1);
    return cbf.b();
  }
  
  private String b(ShareContent paramShareContent) {
    return (paramShareContent instanceof ShareLinkContent || paramShareContent instanceof SharePhotoContent) ? "share" : ((paramShareContent instanceof ShareOpenGraphContent) ? "share_open_graph" : null);
  }
  
  public bmr a(ShareContent paramShareContent) {
    ccv.a(this.b, (Context)ccv.b(this.b), paramShareContent, ccy.WEB);
    bmr bmr = this.b.d();
    byw.c(paramShareContent);
    if (paramShareContent instanceof ShareLinkContent) {
      Bundle bundle1 = bzz.a((ShareLinkContent)paramShareContent);
      bnw.a(bmr, b(paramShareContent), bundle1);
      return bmr;
    } 
    if (paramShareContent instanceof SharePhotoContent) {
      Bundle bundle1 = bzz.a(a((SharePhotoContent)paramShareContent, bmr.c()));
      bnw.a(bmr, b(paramShareContent), bundle1);
      return bmr;
    } 
    Bundle bundle = bzz.a((ShareOpenGraphContent)paramShareContent);
    bnw.a(bmr, b(paramShareContent), bundle);
    return bmr;
  }
  
  public Object a() {
    return ccy.WEB;
  }
  
  public boolean a(ShareContent paramShareContent, boolean paramBoolean) {
    return (paramShareContent != null && ccv.d(paramShareContent.getClass()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cdb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */