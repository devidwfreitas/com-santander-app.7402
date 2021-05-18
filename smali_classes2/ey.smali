.class Ley;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lex;


# direct methods
.method constructor <init>(Lex;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Ley;->a:Lex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Ley;->a:Lex;

    invoke-static {v0}, Lex;->a(Lex;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Ley;->a:Lex;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lex;->a(Lex;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 115
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v0, p0, Ley;->a:Lex;

    invoke-virtual {v0}, Lex;->c()V

    .line 117
    return-void

    .line 115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
