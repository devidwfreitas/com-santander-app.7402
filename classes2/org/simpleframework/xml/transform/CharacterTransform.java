package org.simpleframework.xml.transform;

class CharacterTransform implements Transform<Character> {
  public Character read(String paramString) {
    if (paramString.length() != 1)
      throw new InvalidFormatException("Cannot convert '%s' to a character", new Object[] { paramString }); 
    return Character.valueOf(paramString.charAt(0));
  }
  
  public String write(Character paramCharacter) {
    return paramCharacter.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\CharacterTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */