import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;

class bky extends ObjectInputStream {
  private static final String a = "com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1";
  
  private static final String b = "com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV1";
  
  public bky(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  protected ObjectStreamClass readClassDescriptor() {
    ObjectStreamClass objectStreamClass2 = super.readClassDescriptor();
    if (objectStreamClass2.getName().equals("com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1"))
      return ObjectStreamClass.lookup(bkh.class); 
    ObjectStreamClass objectStreamClass1 = objectStreamClass2;
    return objectStreamClass2.getName().equals("com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV1") ? ObjectStreamClass.lookup(bkn.class) : objectStreamClass1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bky.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */