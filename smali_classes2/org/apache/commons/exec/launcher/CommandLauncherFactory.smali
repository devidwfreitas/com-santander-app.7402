.class public final Lorg/apache/commons/exec/launcher/CommandLauncherFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static createVMLauncher()Lorg/apache/commons/exec/launcher/CommandLauncher;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lorg/apache/commons/exec/OS;->isFamilyOpenVms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lorg/apache/commons/exec/launcher/VmsCommandLauncher;

    invoke-direct {v0}, Lorg/apache/commons/exec/launcher/VmsCommandLauncher;-><init>()V

    .line 46
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lorg/apache/commons/exec/launcher/Java13CommandLauncher;

    invoke-direct {v0}, Lorg/apache/commons/exec/launcher/Java13CommandLauncher;-><init>()V

    goto :goto_0
.end method
