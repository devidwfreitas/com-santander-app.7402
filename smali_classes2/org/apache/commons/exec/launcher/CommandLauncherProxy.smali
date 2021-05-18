.class public abstract Lorg/apache/commons/exec/launcher/CommandLauncherProxy;
.super Lorg/apache/commons/exec/launcher/CommandLauncherImpl;
.source "SourceFile"


# instance fields
.field private final myLauncher:Lorg/apache/commons/exec/launcher/CommandLauncher;


# direct methods
.method public constructor <init>(Lorg/apache/commons/exec/launcher/CommandLauncher;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/commons/exec/launcher/CommandLauncherImpl;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/apache/commons/exec/launcher/CommandLauncherProxy;->myLauncher:Lorg/apache/commons/exec/launcher/CommandLauncher;

    .line 34
    return-void
.end method


# virtual methods
.method public exec(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;)Ljava/lang/Process;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/commons/exec/launcher/CommandLauncherProxy;->myLauncher:Lorg/apache/commons/exec/launcher/CommandLauncher;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/exec/launcher/CommandLauncher;->exec(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method
