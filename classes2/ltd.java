import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ltd extends RecyclerView.Adapter<ltg> {
  private RecyclerView a;
  
  private List<kvi> b;
  
  private ltf c;
  
  private List<Integer> d = new ArrayList<Integer>();
  
  public ltd(List<kvi> paramList, RecyclerView paramRecyclerView) {
    this.b = paramList;
    this.a = paramRecyclerView;
  }
  
  private void a(Integer paramInteger) {
    if (paramInteger != null && paramInteger.intValue() > -1) {
      for (int i = 0; i < this.d.size(); i++) {
        if (((Integer)this.d.get(i)).intValue() == paramInteger.intValue()) {
          this.d.remove(i);
          return;
        } 
      } 
    } else {
      return;
    } 
    this.d.add(paramInteger);
  }
  
  private boolean a(int paramInt) {
    if (paramInt > -1 && this.d != null) {
      Iterator<Integer> iterator = this.d.iterator();
      while (iterator.hasNext()) {
        if (((Integer)iterator.next()).intValue() == paramInt)
          return true; 
      } 
    } 
    return false;
  }
  
  public List<kvi> a() {
    ArrayList<kvi> arrayList = new ArrayList();
    if (getItemCount() > 0 && this.d != null && this.d.size() > 0)
      for (int i = 0; i < this.d.size(); i++) {
        try {
          Integer integer = this.d.get(i);
          arrayList.add(this.b.get(integer.intValue()));
        } catch (Exception exception) {
          exception.printStackTrace();
        } 
      }  
    return arrayList;
  }
  
  public ltg a(ViewGroup paramViewGroup, int paramInt) {
    return new ltg(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968802, paramViewGroup, false));
  }
  
  public void a(List<kvi> paramList) {
    this.b = paramList;
    if (this.d == null) {
      this.d = new ArrayList<Integer>();
    } else {
      this.d.clear();
    } 
    notifyDataSetChanged();
  }
  
  public void a(ltf paramltf) {
    this.c = paramltf;
  }
  
  public void a(ltg paramltg, int paramInt) {
    ltg.a(paramltg).setOnClickListener(null);
    if (((kvi)this.b.get(paramltg.getAdapterPosition())).a()) {
      ltg.a(paramltg).setClickable(false);
      ltg.a(paramltg).setBackgroundResource(2131624121);
      ltg.b(paramltg).setText("");
      return;
    } 
    ltg.a(paramltg).setClickable(true);
    kvi kvi = this.b.get(paramltg.getAdapterPosition());
    ltg.b(paramltg).setText(kvi.g());
    if (a(paramltg.getAdapterPosition())) {
      ltg.a(paramltg).setBackgroundResource(2130837669);
      ltg.b(paramltg).setTextColor(this.a.getResources().getColor(2131624121));
    } else {
      ltg.a(paramltg).setBackgroundResource(2130837664);
      ltg.b(paramltg).setTextColor(this.a.getResources().getColor(2131624121));
    } 
    ltg.a(paramltg).setOnClickListener(new lte(this, paramltg));
  }
  
  public List<Long> b() {
    ArrayList<Long> arrayList = new ArrayList();
    if (getItemCount() > 0 && this.d != null && this.d.size() > 0)
      for (int i = 0; i < this.d.size(); i++) {
        try {
          Integer integer = this.d.get(i);
          arrayList.add(Long.valueOf(((kvi)this.b.get(integer.intValue())).c()));
        } catch (Exception exception) {
          exception.printStackTrace();
        } 
      }  
    return arrayList;
  }
  
  public int getItemCount() {
    return (this.b != null) ? this.b.size() : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ltd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */