.class Ljhy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljhw;


# direct methods
.method constructor <init>(Ljhw;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Ljhy;->a:Ljhw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdx;

    .line 208
    invoke-virtual {v0}, Ljdx;->t()Ljdk;

    move-result-object v1

    sget-object v2, Ljdk;->APLICAR:Ljdk;

    invoke-virtual {v1, v2}, Ljdk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljdx;->t()Ljdk;

    move-result-object v1

    sget-object v2, Ljdk;->REAPLICAR:Ljdk;

    invoke-virtual {v1, v2}, Ljdk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    :cond_0
    const-string v1, "Investimentos_Fundos_Acao"

    const-string v2, "Aplicar"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_0
    iget-object v1, p0, Ljhy;->a:Ljhw;

    invoke-static {v1}, Ljhw;->a(Ljhw;)Ljie;

    move-result-object v1

    invoke-interface {v1, v0}, Ljie;->b(Ljdx;)V

    .line 215
    return-void

    .line 211
    :cond_1
    const-string v1, "Investimentos_Fundos_Acao"

    const-string v2, "Resgatar"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
