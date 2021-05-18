.class public Lfct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/CameraPreview;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lfct;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2, p3}, Lfct;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 147
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lfct;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    new-instance v1, Lfdu;

    invoke-direct {v1, p2, p3}, Lfdu;-><init>(II)V

    invoke-static {v0, v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lcom/journeyapps/barcodescanner/CameraPreview;Lfdu;)Lfdu;

    .line 152
    iget-object v0, p0, Lfct;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    .line 153
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method
