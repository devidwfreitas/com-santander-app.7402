.class public Lhiq;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lhix;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

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
.method private constructor <init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;Lhik;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lhiq;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)V

    return-void
.end method

.method private a(Lhja;)Ljava/util/LinkedList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhja;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lgkx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 210
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 213
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 214
    const-string v2, "(a) Taxa de Juros"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1, v8}, Lgkx;->a(I)V

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 217
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tMensal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhja;->e()Ljava/lang/String;

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

    .line 218
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tAnual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhja;->d()Ljava/lang/String;

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

    .line 219
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 222
    const-string v2, "Custo Efetivo Total - CET (**) "

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1, v8}, Lgkx;->a(I)V

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 225
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tMensal(**)"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhja;->b()Ljava/lang/String;

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

    .line 226
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tAnual(**)"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhja;->a()Ljava/lang/String;

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

    .line 227
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 230
    const-string v2, "Tipo de Taxa de Juros"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1, v7}, Lgkx;->a(I)V

    .line 232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 233
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, ""

    invoke-virtual {p1}, Lhja;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 237
    const-string v2, "(b) Valor Total Devido no Ato da Contra\u00e7\u00e3o"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1, v8}, Lgkx;->a(I)V

    .line 239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 240
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tEm Reais"

    invoke-virtual {p1}, Lhja;->n()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tPercentual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhja;->j()Ljava/lang/String;

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

    .line 242
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 245
    const-string v2, "(c) Valor do IOF"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1, v8}, Lgkx;->a(I)V

    .line 247
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 248
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tEm Reais (financiado)"

    invoke-virtual {p1}, Lhja;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tPercentual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhja;->k()Ljava/lang/String;

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

    .line 250
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 253
    const-string v2, "(d) Valor Liberado"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v1, v8}, Lgkx;->a(I)V

    .line 255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 256
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tEm Reais"

    invoke-virtual {p1}, Lhja;->p()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, "\t\tPercentual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhja;->l()Ljava/lang/String;

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

    .line 258
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 261
    const-string v2, "(e) Data/Hora do C\u00e1culo(*)"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1, v7}, Lgkx;->a(I)V

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 264
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, ""

    invoke-virtual {p1}, Lhja;->g()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 268
    const-string v2, "(f) Quantidade de Parcelas"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1, v7}, Lgkx;->a(I)V

    .line 270
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 271
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, ""

    invoke-virtual {p1}, Lhja;->m()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 275
    const-string v2, "(g) Valor das Parcelas"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v1, v7}, Lgkx;->a(I)V

    .line 277
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 278
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, ""

    invoke-virtual {p1}, Lhja;->q()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 282
    const-string v2, "(h) Data do 1\u00ba Vencimento"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1, v7}, Lgkx;->a(I)V

    .line 284
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 285
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, ""

    invoke-virtual {p1}, Lhja;->h()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 289
    const-string v2, "Data do \u00daltimo Vencimento"

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v1, v7}, Lgkx;->a(I)V

    .line 291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 292
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgky;

    const-string v4, ""

    invoke-virtual {p1}, Lhja;->i()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v1, Lgkx;

    invoke-direct {v1}, Lgkx;-><init>()V

    .line 296
    invoke-virtual {v1, v7}, Lgkx;->a(I)V

    .line 297
    const-string v2, "* As condi\u00e7\u00f5es calculadas s\u00e3o v\u00e1lidas para o Canal de Internet/Mobile at\u00e9 as 18h00min da data acima indicada. Este documento trata-se de demonstrativo n\u00e3o constituindo obriga\u00e7\u00e3o do Banco Santander (Brasil) S.A. conceder o empr\u00e9stimo. A efetiva concess\u00e3o est\u00e1 sujeita a an\u00e1lise de cr\u00e9dito e demais condi\u00e7\u00f5es do produto.\n\n ** Para efeito do c\u00e1lculo do Custo Efetivo Total (CET) foram considerados os itens indicados com as letras: (A) \u00e0 (H)."

    invoke-virtual {v1, v2}, Lgkx;->a(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 300
    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lhix;
    .locals 7

    .prologue
    .line 170
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 171
    iget-object v6, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    iget-object v1, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->i(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Lhje;

    move-result-object v1

    const-class v2, Lhix;

    invoke-static {}, Lhas;->T()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cetAntecipacao13"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhix;

    invoke-static {v6, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;Lhix;)Lhix;

    .line 174
    iget-object v0, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->j(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Lhix;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lhix;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->j(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Lhix;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->j(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Lhix;

    move-result-object v0

    invoke-virtual {v0}, Lhix;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->i(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Lhje;

    move-result-object v0

    iget-object v1, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->j(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Lhix;

    move-result-object v1

    invoke-virtual {v1}, Lhix;->getTokenTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhje;->setTokenTransacao(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->j(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Lhix;

    move-result-object v0

    invoke-virtual {v0}, Lhix;->a()Lhja;

    move-result-object v0

    invoke-direct {p0, v0}, Lhiq;->a(Lhja;)Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lhiq;->b:Ljava/util/LinkedList;

    .line 188
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->f(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    const-string v1, "listaCET"

    iget-object v2, p0, Lhiq;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 190
    const-string v1, "listaCustoCET"

    iget-object v2, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v2}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->k(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 191
    const-string v1, "custoEfetivoTotalDTModel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 192
    const-string v1, "simularAntecipacaoRequest"

    iget-object v2, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v2}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->i(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Lhje;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->l(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->l(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 196
    iget-object v1, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v1, v3}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 199
    :cond_0
    iget-object v1, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->startActivity(Landroid/content/Intent;)V

    .line 204
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 205
    return-void

    .line 201
    :cond_1
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->f(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lhiq;->a([Ljava/lang/Void;)Lhix;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 157
    check-cast p1, Lhix;

    invoke-virtual {p0, p1}, Lhiq;->a(Lhix;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    iget-object v1, p0, Lhiq;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->f(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 164
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 165
    return-void
.end method
