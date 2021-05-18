import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanResult;
import java.util.Iterator;
import java.util.List;

class buj extends ScanCallback {
  private buj(bug parambug) {}
  
  public void onBatchScanResults(List<ScanResult> paramList) {
    super.onBatchScanResults(paramList);
    try {
      synchronized (bug.a(this.a)) {
        Iterator<ScanResult> iterator = paramList.iterator();
        while (iterator.hasNext()) {
          bul bul = bug.a(iterator.next());
          if (bul != null)
            bug.a(this.a).add(bul); 
        } 
      } 
    } catch (Exception exception) {
      bug.a("Exception in ble scan callback", exception);
      return;
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
  }
  
  public void onScanFailed(int paramInt) {
    super.onScanFailed(paramInt);
    bug.a(this.a, paramInt);
  }
  
  public void onScanResult(int paramInt, ScanResult paramScanResult) {
    super.onScanResult(paramInt, paramScanResult);
    try {
      synchronized (bug.a(this.a)) {
        bul bul = bug.a(paramScanResult);
        if (bul != null)
          bug.a(this.a).add(bul); 
        return;
      } 
    } catch (Exception exception) {
      bug.a("Exception in ble scan callback", exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\buj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */