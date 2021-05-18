import android.os.FileObserver;
import com.santander.app.analytics.util.TriggerService;

public class fse extends FileObserver {
  public fse(TriggerService paramTriggerService, String paramString) {
    super(paramString);
  }
  
  public void onEvent(int paramInt, String paramString) {
    if (paramInt == 2) {
      fsd fsd = TriggerService.a(this.a);
      if (fsd != null) {
        TriggerService.a(this.a, "Type: " + fsd.c() + "\nName: " + fsd.a() + "\nValue: " + fsd.b());
        this.a.a("Type: " + fsd.c() + "\nName: " + fsd.a() + "\nValue: " + fsd.b());
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */