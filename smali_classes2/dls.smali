.class final Ldls;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Ldlq;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldlq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldls;->a:Ldlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Ldls;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldls;->a:Ldlq;

    invoke-virtual {v0}, Ldlq;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    iget-object v1, p0, Ldls;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
