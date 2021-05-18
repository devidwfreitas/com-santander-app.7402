import android.os.Bundle;
import java.util.Set;
import org.json.JSONObject;

class bzp extends bzw {
  static final Set<Integer> a = new bzq();
  
  public bzp(bzv parambzv, int paramInt) {
    super(parambzv, paramInt);
  }
  
  public Bundle a() {
    Bundle bundle = new Bundle();
    if (this.b.o != null)
      bundle.putAll(this.b.o); 
    bundle.putString("upload_phase", "finish");
    bundle.putString("upload_session_id", this.b.h);
    bqq.a(bundle, "title", this.b.b);
    bqq.a(bundle, "description", this.b.c);
    bqq.a(bundle, "ref", this.b.d);
    return bundle;
  }
  
  protected void a(int paramInt) {
    bzn.b(this.b, paramInt);
  }
  
  protected void a(bhp parambhp) {
    bzn.a(parambhp, "Video '%s' failed to finish uploading", new Object[] { this.b.i });
    b(parambhp);
  }
  
  protected void a(JSONObject paramJSONObject) {
    if (paramJSONObject.getBoolean("success")) {
      a(null, this.b.i);
      return;
    } 
    a(new bhp("Unexpected error in server response"));
  }
  
  protected Set<Integer> b() {
    return a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bzp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */