.class Lcom/ca/mdo/Util$Screenshot;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mdo/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Screenshot"
.end annotation


# instance fields
.field public compressQuality:I

.field public encodedValue:Ljava/lang/String;

.field public screenShotHeight:I

.field public screenShotWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;III)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "screenShotWidth"    # I
    .param p3, "screenShotHeight"    # I
    .param p4, "quality"    # I

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const-string v0, ""

    iput-object v0, p0, Lcom/ca/mdo/Util$Screenshot;->encodedValue:Ljava/lang/String;

    .line 451
    const/16 v0, 0xf

    iput v0, p0, Lcom/ca/mdo/Util$Screenshot;->compressQuality:I

    .line 453
    iput p4, p0, Lcom/ca/mdo/Util$Screenshot;->compressQuality:I

    .line 454
    if-eqz p1, :cond_0

    .line 455
    iget v0, p0, Lcom/ca/mdo/Util$Screenshot;->compressQuality:I

    invoke-static {p1, v0}, Lcom/ca/mdo/Util;->compressAndEncode(Landroid/graphics/Bitmap;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mdo/Util$Screenshot;->encodedValue:Ljava/lang/String;

    .line 457
    :cond_0
    iput p2, p0, Lcom/ca/mdo/Util$Screenshot;->screenShotWidth:I

    .line 458
    iput p3, p0, Lcom/ca/mdo/Util$Screenshot;->screenShotHeight:I

    .line 460
    return-void
.end method
