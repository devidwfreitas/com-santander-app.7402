import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.share.model.ShareOpenGraphAction;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

class bwd implements bns {
  bwd(bvy parambvy, Bundle paramBundle, ShareOpenGraphAction paramShareOpenGraphAction, bim parambim, bhl parambhl) {}
  
  public void a() {
    try {
      bvy.a(this.a);
      (new GraphRequest(AccessToken.a(), bvy.a(this.e, URLEncoder.encode(this.b.a(), "UTF-8")), this.a, biz.POST, this.c)).n();
      return;
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      bze.a(this.d, unsupportedEncodingException);
      return;
    } 
  }
  
  public void a(bhp parambhp) {
    bze.a(this.d, parambhp);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bwd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */