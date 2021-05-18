.class Lcmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcmh;


# direct methods
.method private constructor <init>(Lcmh;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcmj;->a:Lcmh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcmh;Lcmi;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcmj;-><init>(Lcmh;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 119
    iget-object v0, p0, Lcmj;->a:Lcmh;

    invoke-static {v0}, Lcmh;->a(Lcmh;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcmj;->a:Lcmh;

    invoke-static {v0}, Lcmh;->b(Lcmh;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcmj;->a:Lcmh;

    .line 128
    invoke-static {v0}, Lcmh;->c(Lcmh;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcmn;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcmj;->a:Lcmh;

    .line 129
    invoke-static {v0}, Lcmh;->d(Lcmh;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    monitor-exit v1

    .line 137
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcmj;->a:Lcmh;

    invoke-static {v0}, Lcmh;->f(Lcmh;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcmj;->a:Lcmh;

    invoke-static {v2}, Lcmh;->e(Lcmh;)Lcml;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Lcml;->a(J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    iget-object v0, p0, Lcmj;->a:Lcmh;

    invoke-static {v0}, Lcmh;->c(Lcmh;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcmn;->c(Landroid/content/Context;)V

    .line 134
    iget-object v0, p0, Lcmj;->a:Lcmh;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcmh;->a(Lcmh;Z)Z

    .line 135
    iget-object v0, p0, Lcmj;->a:Lcmh;

    invoke-static {v0}, Lcmh;->a(Lcmh;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 136
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
