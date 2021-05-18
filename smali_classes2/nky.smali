.class Lnky;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnib;

.field final synthetic b:Lnkv;


# direct methods
.method constructor <init>(Lnkv;Lnib;)V
    .locals 0

    iput-object p1, p0, Lnky;->b:Lnkv;

    iput-object p2, p0, Lnky;->a:Lnib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnky;->a:Lnib;

    invoke-virtual {v0}, Lnib;->f()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lnky;->b:Lnkv;

    invoke-static {v0}, Lnkv;->a(Lnkv;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lniw;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnky;->a:Lnib;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    invoke-virtual {v3, v0}, Lnib;->a(Ljava/util/EventListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnky;->b:Lnkv;

    iget-object v1, v1, Lnkv;->a:Lnhc;

    invoke-virtual {v1, v0}, Lnhc;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
