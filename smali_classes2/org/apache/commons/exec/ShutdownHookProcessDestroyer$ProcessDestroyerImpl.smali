.class Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private shouldDestroy:Z

.field private final this$0:Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;)V
    .locals 1

    .prologue
    .line 48
    const-string v0, "ProcessDestroyer Shutdown Hook"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;->this$0:Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;->shouldDestroy:Z

    .line 49
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;->shouldDestroy:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;->this$0:Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;

    invoke-virtual {v0}, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->run()V

    .line 55
    :cond_0
    return-void
.end method

.method public setShouldDestroy(Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;->shouldDestroy:Z

    .line 59
    return-void
.end method
