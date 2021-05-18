import android.support.annotation.StringRes;
import android.text.TextUtils;
import com.santander.app.MinhaConta;

public class hur extends Exception {
  private String a;
  
  public hur(@StringRes int paramInt) {
    this.a = MinhaConta.b().getString(paramInt);
  }
  
  public hur(String paramString) {
    super(paramString);
  }
  
  public hur(Throwable paramThrowable) {
    super(paramThrowable);
  }
  
  public String getMessage() {
    return !TextUtils.isEmpty(this.a) ? this.a : super.getMessage();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hur.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */