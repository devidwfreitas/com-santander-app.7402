.class public Lfcv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/CameraPreview;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lfcv;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lerz;->zxing_prewiew_size_ready:I

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v1, p0, Lfcv;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lfdu;

    invoke-static {v1, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->b(Lcom/journeyapps/barcodescanner/CameraPreview;Lfdu;)V

    .line 195
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    .line 196
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lerz;->zxing_camera_error:I

    if-ne v0, v1, :cond_1

    .line 197
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    .line 199
    iget-object v1, p0, Lfcv;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lfcv;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->e()V

    .line 202
    iget-object v1, p0, Lfcv;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->b(Lcom/journeyapps/barcodescanner/CameraPreview;)Lfcz;

    move-result-object v1

    invoke-interface {v1, v0}, Lfcz;->a(Ljava/lang/Exception;)V

    .line 205
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
