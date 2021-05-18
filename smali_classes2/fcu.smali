.class public Lfcu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/CameraPreview;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lfcu;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 182
    invoke-static {}, Lcom/journeyapps/barcodescanner/CameraPreview;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*** WARNING *** surfaceChanged() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lfcu;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    new-instance v1, Lfdu;

    invoke-direct {v1, p3, p4}, Lfdu;-><init>(II)V

    invoke-static {v0, v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lcom/journeyapps/barcodescanner/CameraPreview;Lfdu;)Lfdu;

    .line 186
    iget-object v0, p0, Lfcu;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lfcu;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lcom/journeyapps/barcodescanner/CameraPreview;Lfdu;)Lfdu;

    .line 177
    return-void
.end method
