import android.app.Activity;
import android.support.v7.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.santander.app.dpp.DPPListaProgramadaActivity;

class hdl implements ActionMode.Callback {
  hdl(hdk paramhdk, int paramInt) {}
  
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem) {
    switch (paramMenuItem.getItemId()) {
      default:
        return false;
      case 2131759623:
        break;
    } 
    DPPListaProgramadaActivity.a(this.b.a, DPPListaProgramadaActivity.a(this.b.a).get(this.b.a.b));
    this.b.a.v.f().i(DPPListaProgramadaActivity.b(this.b.a).e());
    hdm hdm = new hdm(this);
    mxn.a((Activity)this.b.a.a, hdm, "Excluir o depósito programado?", "Excluir", "Cancelar");
    return false;
  }
  
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu) {
    paramActionMode.getMenuInflater().inflate(2131886088, paramMenu);
    View view = this.b.a.a(this.a, this.b.a.c);
    ((TextView)view.findViewById(2131757068)).setTextColor(-1);
    ((TextView)view.findViewById(2131757069)).setTextColor(-1);
    view.setBackgroundColor(this.b.a.getResources().getColor(2131624298));
    return true;
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode) {
    View view = this.b.a.a(this.a, this.b.a.c);
    ((TextView)view.findViewById(2131757068)).setTextColor(-16777216);
    ((TextView)view.findViewById(2131757069)).setTextColor(this.b.a.getResources().getColor(2131624206));
    view.setBackgroundColor(0);
  }
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu) {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */