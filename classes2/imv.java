import android.database.DataSetObserver;
import android.util.Log;

class imv extends DataSetObserver {
  imv(imu paramimu) {}
  
  public void onChanged() {
    Log.d("Santander", "Activity observer");
    this.a.a.a();
    super.onChanged();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\imv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */