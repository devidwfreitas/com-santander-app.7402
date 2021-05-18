package org.dom4j;

public class IllegalAddException extends IllegalArgumentException {
  public IllegalAddException(String paramString) {
    super(paramString);
  }
  
  public IllegalAddException(Branch paramBranch, Node paramNode, String paramString) {
    super("The node \"" + paramNode.toString() + "\" could not be added to the branch \"" + paramBranch.getName() + "\" because: " + paramString);
  }
  
  public IllegalAddException(Element paramElement, Node paramNode, String paramString) {
    super("The node \"" + paramNode.toString() + "\" could not be added to the element \"" + paramElement.getQualifiedName() + "\" because: " + paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\IllegalAddException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */