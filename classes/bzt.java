import android.os.Bundle;
import java.util.Set;
import org.json.JSONObject;

class bzt extends bzw {
  static final Set<Integer> a = new bzu();
  
  private String d;
  
  private String e;
  
  public bzt(bzv parambzv, String paramString1, String paramString2, int paramInt) {
    super(parambzv, paramInt);
    this.d = paramString1;
    this.e = paramString2;
  }
  
  public Bundle a() {
    Bundle bundle = new Bundle();
    bundle.putString("upload_phase", "transfer");
    bundle.putString("upload_session_id", this.b.h);
    bundle.putString("start_offset", this.d);
    byte[] arrayOfByte = bzn.a(this.b, this.d, this.e);
    if (arrayOfByte != null) {
      bundle.putByteArray("video_file_chunk", arrayOfByte);
      return bundle;
    } 
    throw new bhp("Error reading video");
  }
  
  protected void a(int paramInt) {
    bzn.a(this.b, this.d, this.e, paramInt);
  }
  
  protected void a(bhp parambhp) {
    bzn.a(parambhp, "Error uploading video '%s'", new Object[] { this.b.i });
    b(parambhp);
  }
  
  protected void a(JSONObject paramJSONObject) {
    String str2 = paramJSONObject.getString("start_offset");
    String str1 = paramJSONObject.getString("end_offset");
    if (bqq.a(str2, str1)) {
      bzn.b(this.b, 0);
      return;
    } 
    bzn.a(this.b, str2, str1, 0);
  }
  
  protected Set<Integer> b() {
    return a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bzt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */