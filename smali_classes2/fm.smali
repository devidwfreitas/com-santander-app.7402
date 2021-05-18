.class final Lfm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/ScheduledFuture;

.field final synthetic b:Lfw;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledFuture;Lfw;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lfm;->a:Ljava/util/concurrent/ScheduledFuture;

    iput-object p2, p0, Lfm;->b:Lfw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lfm;->a:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 278
    iget-object v0, p0, Lfm;->b:Lfw;

    invoke-virtual {v0}, Lfw;->b()Z

    .line 279
    return-void
.end method
