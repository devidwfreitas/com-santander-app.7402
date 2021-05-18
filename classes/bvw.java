import android.content.Intent;
import com.facebook.FacebookRequestError;

class bvw implements bnk {
  bvw(bvv parambvv, bhl parambhl) {}
  
  public boolean a(int paramInt, Intent paramIntent) {
    if (paramIntent.hasExtra("error")) {
      FacebookRequestError facebookRequestError = (FacebookRequestError)paramIntent.getParcelableExtra("error");
      this.a.a(facebookRequestError.n());
      return true;
    } 
    this.a.a(new bvx());
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bvw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */