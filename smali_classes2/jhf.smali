.class public Ljhf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgsw;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Ljhf;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 226
    const-string v0, "buttonTab1"

    const-string v1, "selected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Ljhf;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->b(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)V

    .line 228
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "buttonTab2"

    const-string v1, "selected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Ljhf;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->c(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Ljdw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Ljhf;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    iget-object v1, p0, Ljhf;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->c(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Ljdw;

    move-result-object v1

    invoke-virtual {v1}, Ljdw;->c()Ljdv;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;Ljdv;)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Ljhf;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;Ljdv;)V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string v0, "Meus fundos"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    const-string v0, "Todos os fundos"

    return-object v0
.end method
