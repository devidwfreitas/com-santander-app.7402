.class Ldlx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldlv;


# direct methods
.method constructor <init>(Ldlv;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldlx;->b:Ldlv;

    iput-object p2, p0, Ldlx;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ldlx;->b:Ldlv;

    invoke-virtual {v0}, Ldlv;->p()Ldkb;

    move-result-object v0

    iget-object v1, p0, Ldlx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldkb;->b(Ljava/lang/String;)Ldjw;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ldjw;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldlx;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
