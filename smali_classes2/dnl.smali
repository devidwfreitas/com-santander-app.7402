.class Ldnl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ldnn;

.field final synthetic c:Ldnk;


# direct methods
.method constructor <init>(Ldnk;ZLdnn;)V
    .locals 0

    iput-object p1, p0, Ldnl;->c:Ldnk;

    iput-boolean p2, p0, Ldnl;->a:Z

    iput-object p3, p0, Ldnl;->b:Ldnn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Ldnl;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldnl;->c:Ldnk;

    iget-object v0, v0, Ldnk;->a:Ldnn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldnl;->c:Ldnk;

    iget-object v1, p0, Ldnl;->c:Ldnk;

    iget-object v1, v1, Ldnk;->a:Ldnn;

    invoke-static {v0, v1}, Ldnk;->a(Ldnk;Ldnn;)V

    :cond_0
    iget-object v0, p0, Ldnl;->c:Ldnk;

    iget-object v1, p0, Ldnl;->b:Ldnn;

    iput-object v1, v0, Ldnk;->a:Ldnn;

    iget-object v0, p0, Ldnl;->c:Ldnk;

    invoke-virtual {v0}, Ldnk;->k()Ldno;

    move-result-object v0

    iget-object v1, p0, Ldnl;->b:Ldnn;

    invoke-virtual {v0, v1}, Ldno;->a(Legk;)V

    return-void
.end method
