.class Ldnm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldnn;

.field final synthetic b:Ldnk;


# direct methods
.method constructor <init>(Ldnk;Ldnn;)V
    .locals 0

    iput-object p1, p0, Ldnm;->b:Ldnk;

    iput-object p2, p0, Ldnm;->a:Ldnn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ldnm;->b:Ldnk;

    iget-object v1, p0, Ldnm;->a:Ldnn;

    invoke-static {v0, v1}, Ldnk;->a(Ldnk;Ldnn;)V

    iget-object v0, p0, Ldnm;->b:Ldnk;

    iput-object v2, v0, Ldnk;->a:Ldnn;

    iget-object v0, p0, Ldnm;->b:Ldnk;

    invoke-virtual {v0}, Ldnk;->k()Ldno;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldno;->a(Legk;)V

    return-void
.end method
