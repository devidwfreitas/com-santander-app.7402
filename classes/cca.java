import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

public final class cca {
  String a;
  
  List<String> b;
  
  private cca(Bundle paramBundle) {
    this.a = paramBundle.getString("request");
    this.b = new ArrayList<String>();
    while (paramBundle.containsKey(String.format("to[%d]", new Object[] { Integer.valueOf(this.b.size()) }))) {
      this.b.add(paramBundle.getString(String.format("to[%d]", new Object[] { Integer.valueOf(this.b.size()) })));
    } 
  }
  
  public String a() {
    return this.a;
  }
  
  public List<String> b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cca.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */