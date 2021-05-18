.class Lvt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvd;


# instance fields
.field final synthetic a:Lvp;


# direct methods
.method constructor <init>(Lvp;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lvt;->a:Lvp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lvt;->a:Lvp;

    check-cast p1, Lva;

    invoke-static {v0, p1}, Lvp;->a(Lvp;Lva;)Lva;

    .line 116
    iget-object v0, p0, Lvt;->a:Lvp;

    invoke-static {v0}, Lvp;->d(Lvp;)V

    .line 117
    iget-object v0, p0, Lvt;->a:Lvp;

    invoke-static {v0}, Lvp;->e(Lvp;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lvt;->a:Lvp;

    iget-object v1, p0, Lvt;->a:Lvp;

    invoke-static {v1}, Lvp;->f(Lvp;)Lva;

    move-result-object v1

    invoke-static {v0, v1}, Lvp;->b(Lvp;Lva;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lvt;->a:Lvp;

    invoke-static {v0}, Lvp;->c(Lvp;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lvt;->a:Lvp;

    invoke-static {v0}, Lvp;->g(Lvp;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    return-void
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lvt;->a:Lvp;

    invoke-virtual {v0}, Lvp;->e()Lack;

    move-result-object v0

    new-instance v1, Lvu;

    invoke-direct {v1, p0}, Lvu;-><init>(Lvt;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 135
    return-void
.end method
