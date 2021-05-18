import com.santander.app.cadastrocanal.activity.QuizStartActivity;
import java.util.Comparator;

public class fxu implements Comparator<fyg> {
  public fxu(QuizStartActivity paramQuizStartActivity) {}
  
  public int a(fyg paramfyg1, fyg paramfyg2) {
    return (Integer.parseInt(paramfyg1.a()) < Integer.parseInt(paramfyg2.a())) ? -1 : ((Integer.parseInt(paramfyg1.a()) > Integer.parseInt(paramfyg2.a())) ? 1 : 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fxu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */