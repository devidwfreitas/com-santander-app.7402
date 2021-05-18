.class Ldvy;
.super Leaw;


# instance fields
.field final synthetic a:Ldwc;


# direct methods
.method constructor <init>(Ldvb;Ldwc;)V
    .locals 0

    iput-object p2, p0, Ldvy;->a:Ldwc;

    invoke-direct {p0}, Leaw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leey;)Lcwx;
    .locals 2

    iget-object v0, p0, Ldvy;->a:Ldwc;

    new-instance v1, Ledv;

    invoke-direct {v1, p1}, Ledv;-><init>(Leey;)V

    invoke-interface {v0, v1}, Ldwc;->a(Ledv;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcxo;->a(Ljava/lang/Object;)Lcwx;

    move-result-object v0

    return-object v0
.end method

.method public b(Leey;)Lcwx;
    .locals 2

    iget-object v0, p0, Ldvy;->a:Ldwc;

    new-instance v1, Ledv;

    invoke-direct {v1, p1}, Ledv;-><init>(Leey;)V

    invoke-interface {v0, v1}, Ldwc;->b(Ledv;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcxo;->a(Ljava/lang/Object;)Lcwx;

    move-result-object v0

    return-object v0
.end method
