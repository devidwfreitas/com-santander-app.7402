.class Lqo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltj;


# instance fields
.field final synthetic a:Lack;

.field final synthetic b:Lqn;


# direct methods
.method constructor <init>(Lqn;Lack;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lqo;->b:Lqn;

    iput-object p2, p0, Lqo;->a:Lack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 2

    .prologue
    .line 62
    check-cast p1, Ltq;

    .line 63
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {p1}, Ltq;->b()Lsx;

    move-result-object v1

    invoke-virtual {v1}, Lsx;->c()Ltp;

    move-result-object v1

    invoke-virtual {v0, v1}, Laca;->a(Ltp;)V

    .line 64
    iget-object v0, p0, Lqo;->a:Lack;

    sget v1, Lla;->configurar_inv_main:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lqo;->a:Lack;

    sget v1, Lla;->configurar_inv_loading:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    return-void
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lqo;->a:Lack;

    sget v1, Lla;->configurar_inv_main:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lqo;->a:Lack;

    sget v1, Lla;->configurar_inv_loading:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    return-void
.end method
