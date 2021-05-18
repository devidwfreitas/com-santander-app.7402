.class public final Leri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final a:F = 45.0f

.field private static final b:F = 450.0f


# instance fields
.field private c:Lfej;

.field private d:Lfel;

.field private e:Landroid/hardware/Sensor;

.field private f:Landroid/content/Context;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfej;Lfel;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Leri;->f:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Leri;->c:Lfej;

    .line 50
    iput-object p3, p0, Leri;->d:Lfel;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leri;->g:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic a(Leri;)Lfej;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Leri;->c:Lfej;

    return-object v0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Leri;->g:Landroid/os/Handler;

    new-instance v1, Lerj;

    invoke-direct {v1, p0, p1}, Lerj;-><init>(Leri;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Leri;->d:Lfel;

    invoke-virtual {v0}, Lfel;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Leri;->f:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 58
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Leri;->e:Landroid/hardware/Sensor;

    .line 59
    iget-object v1, p0, Leri;->e:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Leri;->e:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 63
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Leri;->e:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Leri;->f:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 68
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Leri;->e:Landroid/hardware/Sensor;

    .line 71
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    .line 85
    iget-object v1, p0, Leri;->c:Lfej;

    if-eqz v1, :cond_0

    .line 86
    const/high16 v1, 0x42340000    # 45.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 87
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Leri;->a(Z)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const/high16 v1, 0x43e10000    # 450.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 89
    invoke-direct {p0, v2}, Leri;->a(Z)V

    goto :goto_0
.end method
