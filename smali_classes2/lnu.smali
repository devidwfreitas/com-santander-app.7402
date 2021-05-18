.class Llnu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmay;


# instance fields
.field final synthetic a:Llnt;


# direct methods
.method constructor <init>(Llnt;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Llnu;->a:Llnt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Llnu;->a:Llnt;

    invoke-static {v0}, Llnt;->a(Llnt;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const-string v0, "Seguros_Contratacao_Vida_Proposta_Facilidades_Acao"

    invoke-static {p1}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Llnu;->a:Llnt;

    invoke-static {v0}, Llnt;->a(Llnt;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "Seguros_Contratacao_AP_Proposta_Facilidades_Acao"

    invoke-static {p1}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
