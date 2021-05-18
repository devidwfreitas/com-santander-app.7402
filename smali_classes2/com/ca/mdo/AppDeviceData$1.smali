.class final Lcom/ca/mdo/AppDeviceData$1;
.super Landroid/content/BroadcastReceiver;
.source "AppDeviceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mdo/AppDeviceData;->registerForBatteryStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field level:I

.field scale:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 764
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 765
    iput v0, p0, Lcom/ca/mdo/AppDeviceData$1;->scale:I

    .line 766
    iput v0, p0, Lcom/ca/mdo/AppDeviceData$1;->level:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 770
    const-string v0, "level"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ca/mdo/AppDeviceData$1;->level:I

    .line 771
    const-string v0, "scale"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ca/mdo/AppDeviceData$1;->scale:I

    .line 772
    iget v0, p0, Lcom/ca/mdo/AppDeviceData$1;->level:I

    int-to-float v0, v0

    iget v1, p0, Lcom/ca/mdo/AppDeviceData$1;->scale:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/ca/mdo/AppDeviceData;->access$102(F)F

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryManager level is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->access$100()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 775
    return-void
.end method
