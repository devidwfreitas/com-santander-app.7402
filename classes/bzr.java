import android.os.Bundle;
import java.util.Set;
import org.json.JSONObject;

class bzr extends bzw {
  static final Set<Integer> a = new bzs();
  
  public bzr(bzv parambzv, int paramInt) {
    super(parambzv, paramInt);
  }
  
  public Bundle a() {
    Bundle bundle = new Bundle();
    bundle.putString("upload_phase", "start");
    bundle.putLong("file_size", this.b.k);
    return bundle;
  }
  
  protected void a(int paramInt) {
    bzn.a(this.b, paramInt);
  }
  
  protected void a(bhp parambhp) {
    bzn.a(parambhp, "Error starting video upload", new Object[0]);
    b(parambhp);
  }
  
  protected void a(JSONObject paramJSONObject) {
    this.b.h = paramJSONObject.getString("upload_session_id");
    this.b.i = paramJSONObject.getString("video_id");
    String str2 = paramJSONObject.getString("start_offset");
    String str1 = paramJSONObject.getString("end_offset");
    bzn.a(this.b, str2, str1, 0);
  }
  
  protected Set<Integer> b() {
    return a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bzr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */