import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Base64;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

public class amw extends amv<amx> {
  protected final ImageView a = (ImageView)this.itemView.findViewById(als.credit_card_image_view);
  
  protected final TextView b = (TextView)this.itemView.findViewById(als.credit_card_name_text_view);
  
  protected final TextView c = (TextView)this.itemView.findViewById(als.credit_card_number_final_text_view);
  
  amw(ViewGroup paramViewGroup) {
    super(paramViewGroup, alu.santander_adapter_drop_down_cartao);
  }
  
  private void b(amx paramamx) {
    Bitmap bitmap;
    if (!TextUtils.isEmpty(paramamx.a())) {
      byte[] arrayOfByte = Base64.decode(paramamx.a(), 0);
      bitmap = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
      this.a.setImageBitmap(bitmap);
      this.a.setVisibility(0);
      return;
    } 
    if (bitmap.b() != 0) {
      this.a.setImageResource(bitmap.b());
      this.a.setVisibility(0);
      return;
    } 
    this.a.setVisibility(4);
  }
  
  public void a(amx paramamx) {
    b(paramamx);
    this.b.setText(paramamx.c());
    this.c.setText(paramamx.d());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\amw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */