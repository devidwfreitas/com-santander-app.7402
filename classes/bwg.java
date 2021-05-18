import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;

class bwg implements bnp<Integer> {
  bwg(bvy parambvy, ArrayList paramArrayList, JSONArray paramJSONArray) {}
  
  public Object a(Integer paramInteger) {
    return this.a.get(paramInteger.intValue());
  }
  
  public Iterator<Integer> a() {
    int i = this.a.size();
    return new bwh(this, new bpw<Integer>(Integer.valueOf(0)), i);
  }
  
  public void a(Integer paramInteger, Object paramObject, bnq parambnq) {
    try {
      this.b.put(paramInteger.intValue(), paramObject);
      return;
    } catch (JSONException jSONException) {
      paramObject = jSONException.getLocalizedMessage();
      Object object = paramObject;
      if (paramObject == null)
        object = "Error staging object."; 
      parambnq.a(new bhp((String)object));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bwg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */