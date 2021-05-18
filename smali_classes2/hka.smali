.class public Lhka;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lhki;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lgkx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;Lhju;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lhka;-><init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)V

    return-void
.end method

.method private a(Lhkl;)Ljava/util/LinkedList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhkl;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lgkx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 205
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 208
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 209
    const-string v2, "(a) Taxa de Juros"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1, v7}, Lgkx;->a(I)V

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 212
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tMensal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhkl;->j()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tAnual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhkl;->i()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 217
    const-string v2, "Custo Efetivo Total - CET (**) "

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1, v7}, Lgkx;->a(I)V

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 220
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tMensal(**)"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhkl;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tAnual(**)"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhkl;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 225
    const-string v2, "Tipo de Taxa de Juros"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1, v8}, Lgkx;->a(I)V

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 228
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, ""

    invoke-virtual {p1}, Lhkl;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 232
    const-string v2, "(b) Valor Total Devido no Ato da Contra\u00e7\u00e3o"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1, v7}, Lgkx;->a(I)V

    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 235
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tEm Reais"

    invoke-virtual {p1}, Lhkl;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tPercentual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhkl;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 240
    const-string v2, "(c) Valor Solicitado"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1, v7}, Lgkx;->a(I)V

    .line 242
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 243
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tEm Reais"

    invoke-virtual {p1}, Lhkl;->n()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tPercentual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhkl;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 248
    const-string v2, "(d) IOF(***)"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1, v7}, Lgkx;->a(I)V

    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 251
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tEm Reais"

    invoke-virtual {p1}, Lhkl;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tPercentual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhkl;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 256
    const-string v2, "(e) Juros(***)"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1, v8}, Lgkx;->a(I)V

    .line 258
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 259
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, ""

    invoke-virtual {p1}, Lhkl;->m()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 263
    const-string v2, "(f) Data/Hora do C\u00e1culo(*)"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1, v8}, Lgkx;->a(I)V

    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 266
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhkl;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lhkl;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 272
    invoke-virtual {v1, v8}, Lgkx;->a(I)V

    .line 273
    const-string v2, "* As condi\u00e7\u00f5es calculadas s\u00e3o v\u00e1lidas para o Canal de Internet/Mobile at\u00e9 as 18h00min da data acima indicada. Este documento trata-se de demonstrativo n\u00e3o constituindo obriga\u00e7\u00e3o do Banco Santander (Brasil) S.A. conceder o empr\u00e9stimo. A efetiva concess\u00e3o est\u00e1 sujeita a an\u00e1lise de cr\u00e9dito e demais condi\u00e7\u00f5es do produto.\n\n ** Para efeito do c\u00e1lculo do Custo Efetivo Total (CET) foram considerados os itens indicados com as letras: A \u00e0 F.\n\n *** Juros e IOF calculados considerando os primeiros 30 dias de utiliza\u00e7\u00e3o"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 278
    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lhki;
    .locals 7

    .prologue
    .line 167
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 168
    iget-object v6, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    iget-object v1, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->i(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Lhkp;

    move-result-object v1

    const-class v2, Lhki;

    invoke-static {}, Lhas;->U()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cetAntecipacaoIR"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhki;

    invoke-static {v6, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->a(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;Lhki;)Lhki;

    .line 171
    iget-object v0, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->j(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Lhki;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lhki;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->j(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Lhki;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->j(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Lhki;

    move-result-object v0

    invoke-virtual {v0}, Lhki;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->i(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Lhkp;

    move-result-object v0

    iget-object v1, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->j(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Lhki;

    move-result-object v1

    invoke-virtual {v1}, Lhki;->getTokenTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkp;->setTokenTransacao(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->j(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Lhki;

    move-result-object v0

    invoke-virtual {v0}, Lhki;->a()Lhkl;

    move-result-object v0

    invoke-direct {p0, v0}, Lhka;->a(Lhkl;)Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lhka;->b:Ljava/util/LinkedList;

    .line 185
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->f(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    const-string v1, "listaCET"

    iget-object v2, p0, Lhka;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 187
    const-string v1, "listaCustoCET"

    iget-object v2, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v2}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->k(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 188
    const-string v1, "custoEfetivoTotalIRModel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 189
    const-string v1, "simularAntecipacaoRequest"

    iget-object v2, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v2}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->i(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Lhkp;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->l(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->l(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 193
    iget-object v1, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v1, v3}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->a(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 196
    :cond_0
    iget-object v1, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->f(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lhka;->a([Ljava/lang/Void;)Lhki;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 155
    check-cast p1, Lhki;

    invoke-virtual {p0, p1}, Lhka;->a(Lhki;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    iget-object v1, p0, Lhka;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->f(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->a(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 162
    return-void
.end method
