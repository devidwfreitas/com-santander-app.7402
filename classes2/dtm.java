import com.google.android.gms.location.DetectedActivity;
import java.util.Comparator;

public final class dtm implements Comparator<DetectedActivity> {
  public int a(DetectedActivity paramDetectedActivity1, DetectedActivity paramDetectedActivity2) {
    int j = Integer.valueOf(paramDetectedActivity2.b()).compareTo(Integer.valueOf(paramDetectedActivity1.b()));
    int i = j;
    if (j == 0)
      i = Integer.valueOf(paramDetectedActivity1.a()).compareTo(Integer.valueOf(paramDetectedActivity2.a())); 
    return i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dtm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */