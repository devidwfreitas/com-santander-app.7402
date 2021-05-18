.class Lcom/ca/mdo/Util$ScreenDeviceSize;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mdo/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenDeviceSize"
.end annotation


# instance fields
.field public screenSizeHeight:Ljava/lang/String;

.field public screenSizeWidth:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "screenSizeWidth"    # Ljava/lang/String;
    .param p2, "screenSizeHeight"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p1, p0, Lcom/ca/mdo/Util$ScreenDeviceSize;->screenSizeWidth:Ljava/lang/String;

    .line 469
    iput-object p2, p0, Lcom/ca/mdo/Util$ScreenDeviceSize;->screenSizeHeight:Ljava/lang/String;

    .line 470
    return-void
.end method
