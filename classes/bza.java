import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.ShareVideoContent;

class bza extends byz {
  private bza() {
    super(null);
  }
  
  public void a(ShareMediaContent paramShareMediaContent) {
    throw new bhp("Cannot share ShareMediaContent via web sharing dialogs");
  }
  
  public void a(SharePhoto paramSharePhoto) {
    byw.a(paramSharePhoto, this);
  }
  
  public void a(ShareVideoContent paramShareVideoContent) {
    throw new bhp("Cannot share ShareVideoContent via web sharing dialogs");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bza.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */