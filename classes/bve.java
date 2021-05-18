import android.net.wifi.ScanResult;
import java.util.Comparator;

final class bve implements Comparator<ScanResult> {
  public int a(ScanResult paramScanResult1, ScanResult paramScanResult2) {
    return paramScanResult2.level - paramScanResult1.level;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bve.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */