import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;
import com.santander.app.habilitacaointernacional.activity.ListarPaisesHabilitacaoActivity;

public class inl implements AdapterView.OnItemClickListener {
  public inl(ListarPaisesHabilitacaoActivity paramListarPaisesHabilitacaoActivity) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    TextView textView = (TextView)paramView.findViewById(2131757634);
    ListarPaisesHabilitacaoActivity.a(this.a, textView.getText().toString());
    textView = (TextView)paramView.findViewById(2131757624);
    ListarPaisesHabilitacaoActivity.b(this.a, textView.getText().toString());
    this.a.onBackPressed();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\inl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */