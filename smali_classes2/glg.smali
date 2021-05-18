.class Lglg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lglf;


# direct methods
.method constructor <init>(Lglf;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lglg;->a:Lglf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 163
    iget-object v0, p0, Lglg;->a:Lglf;

    iget-object v0, v0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->c(Lgld;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "Outros_ExibirEOcultar_Cartoes_Acao"

    const-string v1, "Exibir"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_0
    iget-object v0, p0, Lglg;->a:Lglf;

    iget-object v0, v0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->d(Lgld;)Lipp;

    move-result-object v0

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Lglg;->a:Lglf;

    iget-object v0, v0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->c(Lgld;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lglg;->a:Lglf;

    iget-object v0, v0, Lglf;->c:Lgld;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgld;->a(Lgld;Z)Z

    .line 176
    :goto_1
    iget-object v0, p0, Lglg;->a:Lglf;

    invoke-static {v0}, Lglf;->a(Lglf;)V

    .line 182
    :goto_2
    return-void

    .line 167
    :cond_0
    const-string v0, "Outros_ExibirEOcultar_Cartoes_Acao"

    const-string v1, "Ocultar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lglg;->a:Lglf;

    iget-object v0, v0, Lglf;->c:Lgld;

    invoke-static {v0, v2}, Lgld;->a(Lgld;Z)Z

    goto :goto_1

    .line 179
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lglg;->a:Lglf;

    iget-object v0, v0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->e(Lgld;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_2
.end method
