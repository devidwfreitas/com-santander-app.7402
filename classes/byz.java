import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.ShareOpenGraphValueContainer;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;

class byz {
  private boolean a = false;
  
  private byz() {}
  
  public void a(ShareLinkContent paramShareLinkContent) {
    byw.a(paramShareLinkContent, this);
  }
  
  public void a(ShareMedia paramShareMedia) {
    byw.a(paramShareMedia, this);
  }
  
  public void a(ShareMediaContent paramShareMediaContent) {
    byw.a(paramShareMediaContent, this);
  }
  
  public void a(ShareOpenGraphAction paramShareOpenGraphAction) {
    byw.a(paramShareOpenGraphAction, this);
  }
  
  public void a(ShareOpenGraphContent paramShareOpenGraphContent) {
    this.a = true;
    byw.a(paramShareOpenGraphContent, this);
  }
  
  public void a(ShareOpenGraphObject paramShareOpenGraphObject) {
    byw.a(paramShareOpenGraphObject, this);
  }
  
  public void a(ShareOpenGraphValueContainer paramShareOpenGraphValueContainer, boolean paramBoolean) {
    byw.a(paramShareOpenGraphValueContainer, this, paramBoolean);
  }
  
  public void a(SharePhoto paramSharePhoto) {
    byw.c(paramSharePhoto, this);
  }
  
  public void a(SharePhotoContent paramSharePhotoContent) {
    byw.a(paramSharePhotoContent, this);
  }
  
  public void a(ShareVideo paramShareVideo) {
    byw.a(paramShareVideo, this);
  }
  
  public void a(ShareVideoContent paramShareVideoContent) {
    byw.a(paramShareVideoContent, this);
  }
  
  public boolean a() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\byz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */