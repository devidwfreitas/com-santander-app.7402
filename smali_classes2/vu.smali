.class Lvu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lvt;


# direct methods
.method constructor <init>(Lvt;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lvu;->a:Lvt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lvu;->a:Lvt;

    iget-object v0, v0, Lvt;->a:Lvp;

    invoke-static {v0}, Lvp;->a(Lvp;)V

    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lvu;->a:Lvt;

    iget-object v0, v0, Lvt;->a:Lvp;

    invoke-static {v0}, Lvp;->c(Lvp;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lvu;->a:Lvt;

    iget-object v0, v0, Lvt;->a:Lvp;

    invoke-virtual {v0}, Lvp;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->finish()V

    .line 133
    return-void
.end method
