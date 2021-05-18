.class Lgmb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgma;


# direct methods
.method constructor <init>(Lgma;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lgmb;->a:Lgma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lgmb;->a:Lgma;

    iget-object v0, v0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->c(Lgly;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lgmb;->a:Lgma;

    iget-object v0, v0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->e(Lgly;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 170
    iget-object v0, p0, Lgmb;->a:Lgma;

    iget-object v0, v0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->c(Lgly;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lgmb;->a:Lgma;

    iget-object v0, v0, Lgma;->c:Lgly;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgly;->a(Lgly;Z)Z

    .line 172
    const-string v0, "Outros_ExibirEOcultar_Poupanca_Acao"

    const-string v1, "Exibir"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    iget-object v0, p0, Lgmb;->a:Lgma;

    invoke-static {v0}, Lgma;->a(Lgma;)V

    .line 178
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lgmb;->a:Lgma;

    iget-object v0, v0, Lgma;->c:Lgly;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lgly;->a(Lgly;Z)Z

    .line 175
    const-string v0, "Outros_ExibirEOcultar_Poupanca_Acao"

    const-string v1, "Ocultar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
