import android.support.annotation.Nullable;
import android.support.v7.util.DiffUtil;
import java.util.List;

final class mfb extends DiffUtil.Callback {
  mfb(List paramList1, List paramList2, mey parammey) {}
  
  public boolean areContentsTheSame(int paramInt1, int paramInt2) {
    return this.c.b(this.a.get(paramInt1), this.b.get(paramInt2));
  }
  
  public boolean areItemsTheSame(int paramInt1, int paramInt2) {
    return this.c.a(this.a.get(paramInt1), this.b.get(paramInt2));
  }
  
  @Nullable
  public Object getChangePayload(int paramInt1, int paramInt2) {
    Object object2 = this.c.a(this.a.get(paramInt1), paramInt1, this.b.get(paramInt2), paramInt2);
    Object object1 = object2;
    if (object2 == null)
      object1 = super.getChangePayload(paramInt1, paramInt2); 
    return object1;
  }
  
  public int getNewListSize() {
    return this.b.size();
  }
  
  public int getOldListSize() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mfb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */