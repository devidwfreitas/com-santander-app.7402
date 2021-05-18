import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.SharePhoto;
import java.util.ArrayList;

class bwj implements bnt {
  bwj(bvy parambvy) {}
  
  public void a(Object paramObject, bnr parambnr) {
    if (paramObject instanceof ArrayList) {
      bvy.a(this.a, (ArrayList)paramObject, parambnr);
      return;
    } 
    if (paramObject instanceof ShareOpenGraphObject) {
      bvy.a(this.a, (ShareOpenGraphObject)paramObject, parambnr);
      return;
    } 
    if (paramObject instanceof SharePhoto) {
      bvy.a(this.a, (SharePhoto)paramObject, parambnr);
      return;
    } 
    parambnr.a(paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bwj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */