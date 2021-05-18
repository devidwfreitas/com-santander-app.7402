package android.support.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Path;
import android.util.Log;

class VectorDrawableCompat$VPath {
  int mChangingConfigurations;
  
  protected PathParser$PathDataNode[] mNodes = null;
  
  String mPathName;
  
  public VectorDrawableCompat$VPath() {}
  
  public VectorDrawableCompat$VPath(VectorDrawableCompat$VPath paramVectorDrawableCompat$VPath) {
    this.mPathName = paramVectorDrawableCompat$VPath.mPathName;
    this.mChangingConfigurations = paramVectorDrawableCompat$VPath.mChangingConfigurations;
    this.mNodes = PathParser.deepCopyNodes(paramVectorDrawableCompat$VPath.mNodes);
  }
  
  public String NodesToString(PathParser$PathDataNode[] paramArrayOfPathParser$PathDataNode) {
    String str = " ";
    for (int i = 0; i < paramArrayOfPathParser$PathDataNode.length; i++) {
      str = str + (paramArrayOfPathParser$PathDataNode[i]).type + ":";
      float[] arrayOfFloat = (paramArrayOfPathParser$PathDataNode[i]).params;
      for (int j = 0; j < arrayOfFloat.length; j++)
        str = str + arrayOfFloat[j] + ","; 
    } 
    return str;
  }
  
  public void applyTheme(Resources.Theme paramTheme) {}
  
  public boolean canApplyTheme() {
    return false;
  }
  
  public PathParser$PathDataNode[] getPathData() {
    return this.mNodes;
  }
  
  public String getPathName() {
    return this.mPathName;
  }
  
  public boolean isClipPath() {
    return false;
  }
  
  public void printVPath(int paramInt) {
    String str = "";
    for (int i = 0; i < paramInt; i++)
      str = str + "    "; 
    Log.v("VectorDrawableCompat", str + "current path is :" + this.mPathName + " pathData is " + NodesToString(this.mNodes));
  }
  
  public void setPathData(PathParser$PathDataNode[] paramArrayOfPathParser$PathDataNode) {
    if (!PathParser.canMorph(this.mNodes, paramArrayOfPathParser$PathDataNode)) {
      this.mNodes = PathParser.deepCopyNodes(paramArrayOfPathParser$PathDataNode);
      return;
    } 
    PathParser.updateNodes(this.mNodes, paramArrayOfPathParser$PathDataNode);
  }
  
  public void toPath(Path paramPath) {
    paramPath.reset();
    if (this.mNodes != null)
      PathParser$PathDataNode.nodesToPath(this.mNodes, paramPath); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\graphics\drawable\VectorDrawableCompat$VPath.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */