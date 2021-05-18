import android.graphics.ColorFilter;
import android.support.annotation.Nullable;

class axb {
  final String a;
  
  @Nullable
  final String b;
  
  @Nullable
  final ColorFilter c;
  
  axb(@Nullable String paramString1, @Nullable String paramString2, @Nullable ColorFilter paramColorFilter) {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramColorFilter;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof axb))
        return false; 
      paramObject = paramObject;
      if (hashCode() != paramObject.hashCode() || this.c != ((axb)paramObject).c)
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    int i = 17;
    if (this.a != null)
      i = this.a.hashCode() * 527; 
    int j = i;
    if (this.b != null)
      j = i * 31 * this.b.hashCode(); 
    return j;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\axb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */