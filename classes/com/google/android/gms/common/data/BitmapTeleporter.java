package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import crh;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class BitmapTeleporter extends zza implements ReflectedParcelable {
  public static final Parcelable.Creator<BitmapTeleporter> CREATOR = (Parcelable.Creator<BitmapTeleporter>)new crh();
  
  public final int a;
  
  public ParcelFileDescriptor b;
  
  public final int c;
  
  private Bitmap d;
  
  private boolean e;
  
  private File f;
  
  public BitmapTeleporter(int paramInt1, ParcelFileDescriptor paramParcelFileDescriptor, int paramInt2) {
    this.a = paramInt1;
    this.b = paramParcelFileDescriptor;
    this.c = paramInt2;
    this.d = null;
    this.e = false;
  }
  
  public BitmapTeleporter(Bitmap paramBitmap) {
    this.a = 1;
    this.b = null;
    this.c = 0;
    this.d = paramBitmap;
    this.e = true;
  }
  
  private void a(Closeable paramCloseable) {
    try {
      paramCloseable.close();
      return;
    } catch (IOException iOException) {
      Log.w("BitmapTeleporter", "Could not close stream", iOException);
      return;
    } 
  }
  
  private FileOutputStream c() {
    if (this.f == null)
      throw new IllegalStateException("setTempDir() must be called before writing this object to a parcel"); 
    try {
      File file = File.createTempFile("teleporter", ".tmp", this.f);
      try {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        this.b = ParcelFileDescriptor.open(file, 268435456);
        file.delete();
        return fileOutputStream;
      } catch (FileNotFoundException fileNotFoundException) {
        throw new IllegalStateException("Temporary file is somehow already deleted");
      } 
    } catch (IOException iOException) {
      throw new IllegalStateException("Could not create temporary file", iOException);
    } 
  }
  
  public Bitmap a() {
    if (!this.e) {
      ByteBuffer byteBuffer;
      DataInputStream dataInputStream = new DataInputStream((InputStream)new ParcelFileDescriptor.AutoCloseInputStream(this.b));
      try {
        byte[] arrayOfByte = new byte[dataInputStream.readInt()];
        int i = dataInputStream.readInt();
        int j = dataInputStream.readInt();
        Bitmap.Config config = Bitmap.Config.valueOf(dataInputStream.readUTF());
        dataInputStream.read(arrayOfByte);
        a(dataInputStream);
        byteBuffer = ByteBuffer.wrap(arrayOfByte);
        Bitmap bitmap = Bitmap.createBitmap(i, j, config);
        bitmap.copyPixelsFromBuffer(byteBuffer);
        this.d = bitmap;
        return this.d;
      } catch (IOException iOException) {
        throw new IllegalStateException("Could not read from parcel file descriptor", iOException);
      } finally {
        a((Closeable)byteBuffer);
      } 
    } 
    return this.d;
  }
  
  public void a(File paramFile) {
    if (paramFile == null)
      throw new NullPointerException("Cannot set null temp directory"); 
    this.f = paramFile;
  }
  
  public void b() {
    if (!this.e)
      try {
        this.b.close();
        return;
      } catch (IOException iOException) {
        Log.w("BitmapTeleporter", "Could not close PFD", iOException);
        return;
      }  
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    if (this.b == null) {
      Bitmap bitmap = this.d;
      ByteBuffer byteBuffer = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
      bitmap.copyPixelsToBuffer(byteBuffer);
      byte[] arrayOfByte = byteBuffer.array();
      DataOutputStream dataOutputStream = new DataOutputStream(c());
      try {
        dataOutputStream.writeInt(arrayOfByte.length);
        dataOutputStream.writeInt(bitmap.getWidth());
        dataOutputStream.writeInt(bitmap.getHeight());
        dataOutputStream.writeUTF(bitmap.getConfig().toString());
        dataOutputStream.write(arrayOfByte);
        a(dataOutputStream);
        crh.a(this, paramParcel, paramInt | 0x1);
        return;
      } catch (IOException iOException) {
        throw new IllegalStateException("Could not write into unlinked file", iOException);
      } finally {
        a(dataOutputStream);
      } 
    } 
    crh.a(this, paramParcel, paramInt | 0x1);
    this.b = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\data\BitmapTeleporter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */