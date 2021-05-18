package org.simpleframework.xml.stream;

class InputStack extends Stack<InputNode> {
  public InputStack() {
    super(6);
  }
  
  public boolean isRelevant(InputNode paramInputNode) {
    return (contains(paramInputNode) || isEmpty());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\InputStack.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */