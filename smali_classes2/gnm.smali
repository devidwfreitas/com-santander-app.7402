.class Lgnm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lgnl;


# direct methods
.method constructor <init>(Lgnl;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lgnm;->b:Lgnl;

    iput-object p2, p0, Lgnm;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Lgnm;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object v0, p0, Lgnm;->b:Lgnl;

    invoke-virtual {v0}, Lgnl;->a()V

    .line 239
    return-void

    .line 237
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgnm;->b:Lgnl;

    invoke-virtual {v1}, Lgnl;->a()V

    throw v0
.end method
