import android.os.Bundle;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import java.util.Locale;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

abstract class bzw implements Runnable {
  protected bzv b;
  
  protected int c;
  
  protected bzw(bzv parambzv, int paramInt) {
    this.b = parambzv;
    this.c = paramInt;
  }
  
  private boolean b(int paramInt) {
    if (this.c < 2 && b().contains(Integer.valueOf(paramInt))) {
      paramInt = (int)Math.pow(3.0D, this.c);
      bzn.b().postDelayed(new bzx(this), (paramInt * 5000));
      return true;
    } 
    return false;
  }
  
  protected abstract Bundle a();
  
  protected abstract void a(int paramInt);
  
  protected void a(Bundle paramBundle) {
    bix bix = (new GraphRequest(this.b.f, String.format(Locale.ROOT, "%s/videos", new Object[] { this.b.e }), paramBundle, biz.POST, null)).m();
    if (bix != null) {
      FacebookRequestError facebookRequestError = bix.a();
      JSONObject jSONObject = bix.b();
      if (facebookRequestError != null) {
        if (!b(facebookRequestError.d()))
          a(new bhq(bix, "Video upload failed")); 
        return;
      } 
      if (jSONObject != null)
        try {
          a(jSONObject);
          return;
        } catch (JSONException jSONException) {
          b(new bhp("Unexpected error in server response", (Throwable)jSONException));
          return;
        }  
      a(new bhp("Unexpected error in server response"));
      return;
    } 
    a(new bhp("Unexpected error in server response"));
  }
  
  protected abstract void a(bhp parambhp);
  
  protected void a(bhp parambhp, String paramString) {
    bzn.b().post(new bzy(this, parambhp, paramString));
  }
  
  protected abstract void a(JSONObject paramJSONObject);
  
  protected abstract Set<Integer> b();
  
  protected void b(bhp parambhp) {
    a(parambhp, null);
  }
  
  public void run() {
    if (!this.b.m)
      try {
        a(a());
        return;
      } catch (bhp bhp) {
        b(bhp);
        return;
      } catch (Exception exception) {
        b(new bhp("Video upload failed", exception));
        return;
      }  
    b((bhp)null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bzw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */