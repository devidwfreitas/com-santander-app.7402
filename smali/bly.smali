.class Lbly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lblx;


# direct methods
.method constructor <init>(Lblx;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lbly;->a:Lblx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 231
    invoke-static {}, Lblt;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    .line 232
    iget-object v0, p0, Lbly;->a:Lblx;

    iget-object v0, v0, Lblx;->b:Landroid/content/Context;

    iget-object v1, p0, Lbly;->a:Lblx;

    iget-object v1, v1, Lblx;->c:Ljava/lang/String;

    .line 235
    invoke-static {}, Lblt;->c()Lbmd;

    move-result-object v2

    .line 236
    invoke-static {}, Lblt;->d()Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-static {v0, v1, v2, v3}, Lbme;->a(Landroid/content/Context;Ljava/lang/String;Lbmd;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lbmd;->b()V

    .line 238
    invoke-static {v4}, Lblt;->a(Lbmd;)Lbmd;

    .line 241
    :cond_0
    invoke-static {v4}, Lblt;->a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 242
    return-void
.end method
