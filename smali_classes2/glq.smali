.class Lglq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences$Editor;

.field final synthetic b:Lglp;


# direct methods
.method constructor <init>(Lglp;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lglq;->b:Lglp;

    iput-object p2, p0, Lglq;->a:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lglq;->b:Lglp;

    iget-object v0, v0, Lglp;->c:Lgln;

    invoke-static {v0}, Lgln;->d(Lgln;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lglq;->b:Lglp;

    iget-object v0, v0, Lglp;->c:Lgln;

    invoke-static {v0, v2}, Lgln;->a(Lgln;Z)Z

    .line 174
    const-string v0, "ContaCorrente_Acao"

    const-string v1, "ExibirSaldo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "Outros_ExibirEOcultar_ContaCorrente_Acao"

    const-string v1, "Exibir"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lglq;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "state_carrossel_conta"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 177
    iget-object v0, p0, Lglq;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    :goto_0
    iget-object v0, p0, Lglq;->b:Lglp;

    invoke-static {v0}, Lglp;->a(Lglp;)V

    .line 186
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lglq;->b:Lglp;

    iget-object v0, v0, Lglp;->c:Lgln;

    invoke-static {v0, v3}, Lgln;->a(Lgln;Z)Z

    .line 180
    const-string v0, "ContaCorrente_Acao"

    const-string v1, "git OcultarSaldo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "Outros_ExibirEOcultar_ContaCorrente_Acao"

    const-string v1, "Ocultar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lglq;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "state_carrossel_conta"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 183
    iget-object v0, p0, Lglq;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
