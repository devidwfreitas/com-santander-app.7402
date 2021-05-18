.class public Lfcw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfdr;


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/CameraPreview;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lfcw;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lfcw;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->d(Lcom/journeyapps/barcodescanner/CameraPreview;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lfcx;

    invoke-direct {v1, p0}, Lfcx;-><init>(Lfcw;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    return-void
.end method
