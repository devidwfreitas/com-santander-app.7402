package android.support.v7.widget;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.support.v4.util.LruCache;

class AppCompatDrawableManager$ColorFilterLruCache extends LruCache<Integer, PorterDuffColorFilter> {
  public AppCompatDrawableManager$ColorFilterLruCache(int paramInt) {
    super(paramInt);
  }
  
  private static int generateCacheKey(int paramInt, PorterDuff.Mode paramMode) {
    return (paramInt + 31) * 31 + paramMode.hashCode();
  }
  
  PorterDuffColorFilter get(int paramInt, PorterDuff.Mode paramMode) {
    return (PorterDuffColorFilter)get(Integer.valueOf(generateCacheKey(paramInt, paramMode)));
  }
  
  PorterDuffColorFilter put(int paramInt, PorterDuff.Mode paramMode, PorterDuffColorFilter paramPorterDuffColorFilter) {
    return (PorterDuffColorFilter)put(Integer.valueOf(generateCacheKey(paramInt, paramMode)), paramPorterDuffColorFilter);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AppCompatDrawableManager$ColorFilterLruCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */