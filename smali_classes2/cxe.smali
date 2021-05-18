.class Lcxe;
.super Ljava/lang/Object;

# interfaces
.implements Lcxj;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcxb;


# direct methods
.method constructor <init>(Lcxb;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcxe;->b:Lcxb;

    iput-object p2, p0, Lcxe;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcxa;)V
    .locals 2

    iget-object v0, p0, Lcxe;->b:Lcxb;

    invoke-static {v0}, Lcxb;->b(Lcxb;)Lcxa;

    move-result-object v0

    iget-object v1, p0, Lcxe;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcxa;->a(Landroid/os/Bundle;)V

    return-void
.end method
