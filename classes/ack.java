import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;

public class ack extends AppCompatActivity {
  private acf a;
  
  public acf a() {
    return this.a;
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    try {
      String str = getIntent().getExtras().getString("to");
      if (!acj.a(str)) {
        this.a = (acf)(new eju()).j().a(str, acg.class);
        return;
      } 
      this.a = new acg();
      return;
    } catch (Exception exception) {
      this.a = new acg();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ack.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */