package android.support.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

class VectorDrawableCompat$VClipPath extends VectorDrawableCompat$VPath {
  public VectorDrawableCompat$VClipPath() {}
  
  public VectorDrawableCompat$VClipPath(VectorDrawableCompat$VClipPath paramVectorDrawableCompat$VClipPath) {
    super(paramVectorDrawableCompat$VClipPath);
  }
  
  private void updateStateFromTypedArray(TypedArray paramTypedArray) {
    String str2 = paramTypedArray.getString(0);
    if (str2 != null)
      this.mPathName = str2; 
    String str1 = paramTypedArray.getString(1);
    if (str1 != null)
      this.mNodes = PathParser.createNodesFromPathData(str1); 
  }
  
  public void inflate(Resources paramResources, AttributeSet paramAttributeSet, Resources.Theme paramTheme, XmlPullParser paramXmlPullParser) {
    if (!TypedArrayUtils.hasAttribute(paramXmlPullParser, "pathData"))
      return; 
    TypedArray typedArray = VectorDrawableCommon.obtainAttributes(paramResources, paramTheme, paramAttributeSet, AndroidResources.styleable_VectorDrawableClipPath);
    updateStateFromTypedArray(typedArray);
    typedArray.recycle();
  }
  
  public boolean isClipPath() {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\graphics\drawable\VectorDrawableCompat$VClipPath.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */