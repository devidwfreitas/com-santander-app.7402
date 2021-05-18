.class Ldkx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldkw;


# direct methods
.method constructor <init>(Ldkw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldkx;->b:Ldkw;

    iput-object p2, p0, Ldkx;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ldkx;->b:Ldkw;

    iget-object v0, v0, Ldkw;->n:Ldlv;

    invoke-virtual {v0}, Ldlv;->e()Ldlh;

    move-result-object v0

    invoke-virtual {v0}, Ldlh;->Q()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Ldlh;->b:Ldll;

    iget-object v1, p0, Ldkx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldll;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldkx;->b:Ldkw;

    const/4 v1, 0x6

    const-string v2, "Persisted config not initialized. Not logging error/warn"

    invoke-virtual {v0, v1, v2}, Ldkw;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
