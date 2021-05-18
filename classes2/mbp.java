import android.text.InputFilter;
import android.text.Spanned;
import com.santander.app.seguros.ui.widgets.EmojiExcludeEditText;

public class mbp implements InputFilter {
  private mbp(EmojiExcludeEditText paramEmojiExcludeEditText) {}
  
  public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4) {
    while (paramInt1 < paramInt2) {
      paramInt3 = Character.getType(paramCharSequence.charAt(paramInt1));
      if (paramInt3 == 19 || paramInt3 == 28)
        return ""; 
      paramInt1++;
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mbp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */