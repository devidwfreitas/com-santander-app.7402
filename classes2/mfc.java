import android.support.v7.util.ListUpdateCallback;

final class mfc implements ListUpdateCallback {
  mfc(mec parammec) {}
  
  public void onChanged(int paramInt1, int paramInt2, Object paramObject) {
    this.a.a().a(this.a.a().e(this.a.c()) + paramInt1, paramInt2, paramObject);
  }
  
  public void onInserted(int paramInt1, int paramInt2) {
    this.a.a().b(this.a.a().e(this.a.c()) + paramInt1, paramInt2);
  }
  
  public void onMoved(int paramInt1, int paramInt2) {
    this.a.a().d(this.a.a().e(this.a.c()) + paramInt1, paramInt2);
  }
  
  public void onRemoved(int paramInt1, int paramInt2) {
    this.a.a().c(this.a.a().e(this.a.c()) + paramInt1, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mfc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */