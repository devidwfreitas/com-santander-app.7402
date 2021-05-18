.class public Lcom/ca/android/app/BitMapClass;
.super Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;
.source "BitMapClass.java"


# instance fields
.field public duration:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ca/android/app/BitMapClass;->url:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/ca/android/app/BitMapClass;->duration:I

    .line 24
    return-void
.end method


# virtual methods
.method public onFinishGetBitmap(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "response"    # I

    .prologue
    .line 26
    const-string v0, "CA MAA"

    const-string v1, "In CrossWalk callback : Got the bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    if-eqz p1, :cond_0

    .line 28
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/app/BitMapClass;->url:Ljava/lang/String;

    iget v2, p0, Lcom/ca/android/app/BitMapClass;->duration:I

    invoke-interface {v0, v1, v2, p1}, Lcom/ca/android/app/AnalyticsAgent;->viewLoaded(Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 34
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/app/BitMapClass;->url:Ljava/lang/String;

    iget v2, p0, Lcom/ca/android/app/BitMapClass;->duration:I

    invoke-interface {v0, v1, v2}, Lcom/ca/android/app/AnalyticsAgent;->viewLoaded(Ljava/lang/String;I)V

    goto :goto_0
.end method
