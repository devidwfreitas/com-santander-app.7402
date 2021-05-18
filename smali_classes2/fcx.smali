.class Lfcx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfcw;


# direct methods
.method constructor <init>(Lfcw;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lfcx;->a:Lfcw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lfcx;->a:Lfcw;

    iget-object v0, v0, Lfcw;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->c(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    .line 217
    return-void
.end method
