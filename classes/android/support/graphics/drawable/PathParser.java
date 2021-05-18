package android.support.graphics.drawable;

import android.graphics.Path;
import java.util.ArrayList;

class PathParser {
  private static final String LOGTAG = "PathParser";
  
  private static void addNode(ArrayList<PathParser$PathDataNode> paramArrayList, char paramChar, float[] paramArrayOffloat) {
    paramArrayList.add(new PathParser$PathDataNode(paramChar, paramArrayOffloat));
  }
  
  public static boolean canMorph(PathParser$PathDataNode[] paramArrayOfPathParser$PathDataNode1, PathParser$PathDataNode[] paramArrayOfPathParser$PathDataNode2) {
    if (paramArrayOfPathParser$PathDataNode1 != null && paramArrayOfPathParser$PathDataNode2 != null && paramArrayOfPathParser$PathDataNode1.length == paramArrayOfPathParser$PathDataNode2.length) {
      int i = 0;
      while (i < paramArrayOfPathParser$PathDataNode1.length) {
        if ((paramArrayOfPathParser$PathDataNode1[i]).type == (paramArrayOfPathParser$PathDataNode2[i]).type && (paramArrayOfPathParser$PathDataNode1[i]).params.length == (paramArrayOfPathParser$PathDataNode2[i]).params.length) {
          i++;
          continue;
        } 
        return false;
      } 
      return true;
    } 
    return false;
  }
  
  static float[] copyOfRange(float[] paramArrayOffloat, int paramInt1, int paramInt2) {
    if (paramInt1 > paramInt2)
      throw new IllegalArgumentException(); 
    int i = paramArrayOffloat.length;
    if (paramInt1 < 0 || paramInt1 > i)
      throw new ArrayIndexOutOfBoundsException(); 
    paramInt2 -= paramInt1;
    i = Math.min(paramInt2, i - paramInt1);
    float[] arrayOfFloat = new float[paramInt2];
    System.arraycopy(paramArrayOffloat, paramInt1, arrayOfFloat, 0, i);
    return arrayOfFloat;
  }
  
  public static PathParser$PathDataNode[] createNodesFromPathData(String paramString) {
    if (paramString == null)
      return null; 
    ArrayList<PathParser$PathDataNode> arrayList = new ArrayList();
    int j = 1;
    int i = 0;
    while (j < paramString.length()) {
      j = nextStart(paramString, j);
      String str = paramString.substring(i, j).trim();
      if (str.length() > 0) {
        float[] arrayOfFloat = getFloats(str);
        addNode(arrayList, str.charAt(0), arrayOfFloat);
      } 
      int k = j + 1;
      i = j;
      j = k;
    } 
    if (j - i == 1 && i < paramString.length())
      addNode(arrayList, paramString.charAt(i), new float[0]); 
    return arrayList.<PathParser$PathDataNode>toArray(new PathParser$PathDataNode[arrayList.size()]);
  }
  
  public static Path createPathFromPathData(String paramString) {
    Path path = new Path();
    PathParser$PathDataNode[] arrayOfPathParser$PathDataNode = createNodesFromPathData(paramString);
    if (arrayOfPathParser$PathDataNode != null)
      try {
        PathParser$PathDataNode.nodesToPath(arrayOfPathParser$PathDataNode, path);
        return path;
      } catch (RuntimeException runtimeException) {
        throw new RuntimeException("Error in parsing " + paramString, runtimeException);
      }  
    return null;
  }
  
  public static PathParser$PathDataNode[] deepCopyNodes(PathParser$PathDataNode[] paramArrayOfPathParser$PathDataNode) {
    if (paramArrayOfPathParser$PathDataNode == null)
      return null; 
    PathParser$PathDataNode[] arrayOfPathParser$PathDataNode = new PathParser$PathDataNode[paramArrayOfPathParser$PathDataNode.length];
    for (int i = 0; i < paramArrayOfPathParser$PathDataNode.length; i++)
      arrayOfPathParser$PathDataNode[i] = new PathParser$PathDataNode(paramArrayOfPathParser$PathDataNode[i]); 
    return arrayOfPathParser$PathDataNode;
  }
  
  private static void extract(String paramString, int paramInt, PathParser$ExtractFloatResult paramPathParser$ExtractFloatResult) {
    paramPathParser$ExtractFloatResult.mEndWithNegOrDot = false;
    boolean bool1 = false;
    boolean bool3 = false;
    boolean bool2 = false;
    int i;
    for (i = paramInt;; i++) {
      if (i < paramString.length()) {
        switch (paramString.charAt(i)) {
          default:
            bool1 = false;
            if (bool2) {
              paramPathParser$ExtractFloatResult.mEndPosition = i;
              return;
            } 
            break;
          case ' ':
          case ',':
            bool1 = false;
            bool2 = true;
            if (bool2) {
              paramPathParser$ExtractFloatResult.mEndPosition = i;
              return;
            } 
            break;
          case '-':
          
          case '.':
            if (!bool3) {
              bool1 = false;
              bool3 = true;
            } else {
              paramPathParser$ExtractFloatResult.mEndWithNegOrDot = true;
              bool1 = false;
              bool2 = true;
            } 
            if (bool2) {
              paramPathParser$ExtractFloatResult.mEndPosition = i;
              return;
            } 
            break;
          case 'E':
          case 'e':
            bool1 = true;
            if (bool2) {
              paramPathParser$ExtractFloatResult.mEndPosition = i;
              return;
            } 
            break;
        } 
        continue;
      } 
      paramPathParser$ExtractFloatResult.mEndPosition = i;
      return;
    } 
  }
  
  private static float[] getFloats(String paramString) {
    int i;
    int j;
    if (paramString.charAt(0) == 'z') {
      i = 1;
    } else {
      i = 0;
    } 
    if (paramString.charAt(0) == 'Z') {
      j = 1;
    } else {
      j = 0;
    } 
    if ((i | j) != 0)
      return new float[0]; 
    try {
      float[] arrayOfFloat = new float[paramString.length()];
      PathParser$ExtractFloatResult pathParser$ExtractFloatResult = new PathParser$ExtractFloatResult();
      int k = paramString.length();
      i = 0;
      for (j = 1;; j = m + 1) {
        int m;
        if (j < k) {
          extract(paramString, j, pathParser$ExtractFloatResult);
          m = pathParser$ExtractFloatResult.mEndPosition;
          if (j < m) {
            int n = i + 1;
            arrayOfFloat[i] = Float.parseFloat(paramString.substring(j, m));
            i = n;
          } 
          if (pathParser$ExtractFloatResult.mEndWithNegOrDot) {
            j = m;
            continue;
          } 
        } else {
          return copyOfRange(arrayOfFloat, 0, i);
        } 
      } 
    } catch (NumberFormatException numberFormatException) {
      throw new RuntimeException("error in parsing \"" + paramString + "\"", numberFormatException);
    } 
  }
  
  private static int nextStart(String paramString, int paramInt) {
    while (true) {
      if (paramInt < paramString.length()) {
        char c = paramString.charAt(paramInt);
        if (((c - 65) * (c - 90) > 0 && (c - 97) * (c - 122) > 0) || c == 'e' || c == 'E') {
          paramInt++;
          continue;
        } 
      } 
      return paramInt;
    } 
  }
  
  public static void updateNodes(PathParser$PathDataNode[] paramArrayOfPathParser$PathDataNode1, PathParser$PathDataNode[] paramArrayOfPathParser$PathDataNode2) {
    for (int i = 0; i < paramArrayOfPathParser$PathDataNode2.length; i++) {
      (paramArrayOfPathParser$PathDataNode1[i]).type = (paramArrayOfPathParser$PathDataNode2[i]).type;
      for (int j = 0; j < (paramArrayOfPathParser$PathDataNode2[i]).params.length; j++)
        (paramArrayOfPathParser$PathDataNode1[i]).params[j] = (paramArrayOfPathParser$PathDataNode2[i]).params[j]; 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\graphics\drawable\PathParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */