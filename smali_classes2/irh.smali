.class Lirh;
.super Lgpe;
.source "SourceFile"


# instance fields
.field final synthetic a:Lird;


# direct methods
.method constructor <init>(Lird;Landroid/view/View;Lgpj;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lirh;->a:Lird;

    invoke-direct {p0, p2, p3}, Lgpe;-><init>(Landroid/view/View;Lgpj;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lirh;->a:Lird;

    invoke-static {v0, p1}, Lird;->a(Lird;Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lirh;->a:Lird;

    invoke-static {v0}, Lird;->a(Lird;)Lirb;

    move-result-object v0

    invoke-interface {v0}, Lirb;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lgpe;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
