.class public Ljep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljen;


# static fields
.field private static final c:I = 0x0

.field private static final d:I = 0x1


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lmip;

.field private e:Ljiy;

.field private final f:Ljava/lang/String;

.field private g:Ljeo;

.field private h:Ljdx;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljeo;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "https://www.santander.com.br/portal/pam/script/cvm/CvmAction.do?pdf=pdfLamina&canal=03&codFundo="

    iput-object v0, p0, Ljep;->f:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Ljep;->a:Landroid/app/Activity;

    .line 49
    iput-object p2, p0, Ljep;->g:Ljeo;

    .line 50
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljep;->b:Lmip;

    .line 51
    new-instance v0, Ljiz;

    invoke-direct {v0, p1}, Ljiz;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ljep;->e:Ljiy;

    .line 52
    return-void
.end method

.method private a(Ljdi;)Lgvb;
    .locals 10

    .prologue
    const v9, 0x7f0904e5

    const v8, 0x7f0904e3

    const/4 v7, 0x1

    .line 210
    new-instance v2, Lgvb;

    invoke-direct {v2}, Lgvb;-><init>()V

    .line 211
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 212
    const-string v1, ""

    .line 213
    const-string v0, ""

    .line 216
    new-instance v4, Lgky;

    const-string v5, "Fundo: "

    iget-object v6, p0, Ljep;->h:Ljdx;

    invoke-virtual {v6}, Ljdx;->M()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v4, Ljex;->a:[I

    iget-object v5, p0, Ljep;->h:Ljdx;

    invoke-virtual {v5}, Ljdx;->t()Ljdk;

    move-result-object v5

    invoke-virtual {v5}, Ljdk;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 266
    :goto_0
    invoke-virtual {v2, v3}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 267
    iget-object v3, p0, Ljep;->a:Landroid/app/Activity;

    const v4, 0x7f090685

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgvb;->c(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v2, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Ljdi;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v0

    const-string v3, "yyyy-MM-dd hh:mm:ss"

    const-string v4, "dd/MM/yyyy hh:mm:ss"

    invoke-static {v0, v3, v4}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->f(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Ljdi;->getAutenticacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v2, v1}, Lgvb;->j(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Comprovante - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lgvb;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->g(Ljava/lang/String;)V

    .line 274
    return-object v2

    .line 220
    :pswitch_0
    new-instance v0, Lgky;

    const-string v1, "Conta Fundo: "

    const-string v4, "Nova"

    invoke-direct {v0, v1, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v0, Lgky;

    const-string v1, "Transa\u00e7\u00e3o: "

    iget-object v4, p0, Ljep;->a:Landroid/app/Activity;

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v0, Lgky;

    const-string v1, "Valor Aplicado: "

    invoke-virtual {p1}, Ljdi;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v0, Lgky;

    const-string v1, "Data Aplica\u00e7\u00e3o: "

    invoke-virtual {p1}, Ljdi;->e()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ddMMyyyy"

    const-string v6, "dd/MM/yyyy"

    invoke-static {v4, v5, v6}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v0, Lgky;

    const-string v1, "Convers\u00e3o em Cotas: "

    iget-object v4, p0, Ljep;->h:Ljdx;

    invoke-virtual {v4}, Ljdx;->ac()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, v7}, Lgky;->a(Z)V

    .line 226
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v1, "fundAplCompShare"

    .line 228
    iget-object v0, p0, Ljep;->a:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 232
    :pswitch_1
    new-instance v0, Lgky;

    const-string v1, "Conta Fundo: "

    iget-object v4, p0, Ljep;->h:Ljdx;

    invoke-virtual {v4}, Ljdx;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Ljep;->h:Ljdx;

    invoke-virtual {v0}, Ljdx;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nova"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Lgky;

    const-string v1, "Transa\u00e7\u00e3o: "

    iget-object v4, p0, Ljep;->a:Landroid/app/Activity;

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :goto_1
    new-instance v0, Lgky;

    const-string v1, "Valor Aplicado: "

    invoke-virtual {p1}, Ljdi;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lgky;

    const-string v1, "Data Aplica\u00e7\u00e3o: "

    invoke-virtual {p1}, Ljdi;->e()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ddMMyyyy"

    const-string v6, "dd/MM/yyyy"

    invoke-static {v4, v5, v6}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v0, Lgky;

    const-string v1, "Convers\u00e3o em Cotas: "

    iget-object v4, p0, Ljep;->h:Ljdx;

    invoke-virtual {v4}, Ljdx;->ac()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, v7}, Lgky;->a(Z)V

    .line 243
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    const-string v1, "fundReaCompShare"

    .line 245
    iget-object v0, p0, Ljep;->a:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 236
    :cond_0
    new-instance v0, Lgky;

    const-string v1, "Transa\u00e7\u00e3o: "

    iget-object v4, p0, Ljep;->a:Landroid/app/Activity;

    const v5, 0x7f0904e4

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 249
    :pswitch_2
    new-instance v0, Lgky;

    const-string v1, "Conta Fundo: "

    invoke-virtual {p1}, Ljdi;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v0, Lgky;

    const-string v1, "Transa\u00e7\u00e3o: "

    iget-object v4, p0, Ljep;->h:Ljdx;

    invoke-virtual {v4}, Ljdx;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v0, Lgky;

    const-string v1, "Valor Resgatado: "

    invoke-virtual {p1}, Ljdi;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v0, Lgky;

    const-string v1, "Data Resgate: "

    invoke-virtual {p1}, Ljdi;->e()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ddMMyyyy"

    const-string v6, "dd/MM/yyyy"

    invoke-static {v4, v5, v6}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v0, Lgky;

    const-string v1, "Cr\u00e9dito em Conta: "

    invoke-virtual {p1}, Ljdi;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ddMMyyyy"

    const-string v6, "dd/MM/yyyy"

    invoke-static {v4, v5, v6}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v0, Lgky;

    const-string v1, "Convers\u00e3o em Cotas: "

    iget-object v4, p0, Ljep;->h:Ljdx;

    invoke-virtual {v4}, Ljdx;->aa()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0, v7}, Lgky;->a(Z)V

    .line 256
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    const-string v1, "fundResCompShare"

    .line 258
    iget-object v0, p0, Ljep;->h:Ljdx;

    invoke-virtual {v0}, Ljdx;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Ljep;->a:Landroid/app/Activity;

    const v4, 0x7f0904e7

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Ljep;->a:Landroid/app/Activity;

    const v4, 0x7f0904e6

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Ljep;Ljdi;)Lgvb;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljep;->b(Ljdi;)Lgvb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljep;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljep;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljep;)Ljeo;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Ljep;->g:Ljeo;

    return-object v0
.end method

.method private a(Ljdi;I)V
    .locals 3

    .prologue
    .line 293
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    const/4 v1, 0x0

    sget-object v2, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lmzp;->RELOAD_INVESTIMENTO:Lmzp;

    aput-object v2, v0, v1

    .line 296
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 297
    new-instance v2, Ljew;

    invoke-direct {v2, p0, p2, p1}, Ljew;-><init>(Ljep;ILjdi;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 307
    return-void
.end method

.method static synthetic a(Ljep;Ljdi;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljep;->a(Ljdi;I)V

    return-void
.end method

.method private b(Ljdi;)Lgvb;
    .locals 3

    .prologue
    .line 279
    new-instance v0, Lgvb;

    invoke-direct {v0}, Lgvb;-><init>()V

    .line 280
    iget-object v1, p0, Ljep;->a:Landroid/app/Activity;

    const v2, 0x7f090685

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->c(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Ljep;->a:Landroid/app/Activity;

    const v2, 0x7f0904e2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    .line 283
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgvb;->e(Ljava/lang/String;)V

    .line 284
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgvb;->f(Ljava/lang/String;)V

    .line 285
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgvb;->e(Z)V

    .line 286
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgvb;->d(Z)V

    .line 287
    invoke-virtual {p1}, Ljdi;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->b(Ljava/lang/String;)V

    .line 288
    return-object v0
.end method

.method static synthetic b(Ljep;Ljdi;)Lgvb;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljep;->a(Ljdi;)Lgvb;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.santander.com.br/portal/pam/script/cvm/CvmAction.do?pdf=pdfLamina&canal=03&codFundo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljdx;)Ljek;
    .locals 4

    .prologue
    .line 146
    new-instance v0, Ljek;

    invoke-direct {v0}, Ljek;-><init>()V

    .line 147
    invoke-virtual {p1}, Ljdx;->y()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljdx;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljek;->d(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Ljdx;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljek;->setAgencia(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Ljdx;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljek;->e(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Ljep;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljek;->setAgencia(Ljava/lang/String;)V

    .line 151
    const-string v1, "0033"

    invoke-virtual {v0, v1}, Ljek;->a(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Ljep;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljek;->e(Ljava/lang/String;)V

    .line 153
    const-string v1, "35"

    invoke-virtual {v0, v1}, Ljek;->g(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Ljep;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljek;->setConnUuid(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Ljep;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljek;->setTokenSessao(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Ljep;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljek;->setTokenTransacao(Ljava/lang/String;)V

    .line 158
    return-object v0
.end method

.method private e(Ljdx;Z)Ljdj;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 166
    new-instance v0, Ljdj;

    invoke-direct {v0}, Ljdj;-><init>()V

    .line 168
    iget-object v1, p0, Ljep;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->setConnUuid(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Ljep;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->setTokenSessao(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Ljep;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->setTokenTransacao(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Ljdx;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->setAgencia(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Ljdx;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->setConta(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Ljdx;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljdj;->a(Z)V

    .line 175
    invoke-virtual {p1}, Ljdx;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p1}, Ljdx;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dd/MM/yyyy"

    const-string v3, "ddMMyyyy"

    invoke-static {v1, v2, v3}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->a(Ljava/lang/String;)V

    .line 178
    :cond_0
    sget-object v1, Ljex;->a:[I

    invoke-virtual {p1}, Ljdx;->t()Ljdk;

    move-result-object v2

    invoke-virtual {v2}, Ljdk;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 202
    :goto_0
    invoke-virtual {p1}, Ljdx;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljdx;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->b(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, p2}, Ljdj;->c(Z)V

    .line 204
    invoke-virtual {p1}, Ljdx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->e(Ljava/lang/String;)V

    .line 206
    return-object v0

    .line 180
    :pswitch_0
    invoke-virtual {v0, v4}, Ljdj;->b(Z)V

    .line 181
    const-string v1, "REAPLICACAO"

    invoke-virtual {v0, v1}, Ljdj;->d(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Ljdx;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nova"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    const-string v1, "000000000"

    invoke-virtual {v0, v1}, Ljdj;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p1}, Ljdx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :pswitch_1
    invoke-virtual {v0, v5}, Ljdj;->b(Z)V

    .line 190
    const-string v1, "APLICACAO"

    invoke-virtual {v0, v1}, Ljdj;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :pswitch_2
    invoke-virtual {v0, v4}, Ljdj;->b(Z)V

    .line 195
    invoke-virtual {p1}, Ljdx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->c(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Ljdx;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljep;->a:Landroid/app/Activity;

    const v3, 0x7f0906cb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    const-string v1, "RESGATE_TOTAL"

    invoke-virtual {v0, v1}, Ljdj;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_2
    const-string v1, "RESGATE_PARCIAL"

    invoke-virtual {v0, v1}, Ljdj;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Ljep;->e:Ljiy;

    new-instance v1, Ljeu;

    invoke-direct {v1, p0, p1}, Ljeu;-><init>(Ljep;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, p1}, Ljep;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-interface {v0, v1, v2}, Ljiy;->a(Lgkw;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public a(Ljdx;)V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Ljep;->e:Ljiy;

    new-instance v1, Ljev;

    invoke-direct {v1, p0}, Ljev;-><init>(Ljep;)V

    .line 142
    invoke-direct {p0, p1}, Ljep;->b(Ljdx;)Ljek;

    move-result-object v2

    .line 137
    invoke-interface {v0, v1, v2}, Ljiy;->a(Lgkw;Ljek;)V

    .line 143
    return-void
.end method

.method public a(Ljdx;Z)V
    .locals 3

    .prologue
    .line 56
    iput-object p1, p0, Ljep;->h:Ljdx;

    .line 57
    iget-object v0, p0, Ljep;->e:Ljiy;

    new-instance v1, Ljeq;

    invoke-direct {v1, p0}, Ljeq;-><init>(Ljep;)V

    .line 68
    invoke-direct {p0, p1, p2}, Ljep;->e(Ljdx;Z)Ljdj;

    move-result-object v2

    .line 57
    invoke-interface {v0, v1, v2}, Ljiy;->a(Lgkw;Ljdj;)V

    .line 69
    return-void
.end method

.method public b(Ljdx;Z)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Ljep;->e:Ljiy;

    new-instance v1, Ljer;

    invoke-direct {v1, p0}, Ljer;-><init>(Ljep;)V

    .line 83
    invoke-direct {p0, p1, p2}, Ljep;->e(Ljdx;Z)Ljdj;

    move-result-object v2

    .line 73
    invoke-interface {v0, v1, v2}, Ljiy;->a(Lgkw;Ljdj;)V

    .line 84
    return-void
.end method

.method public c(Ljdx;Z)V
    .locals 3

    .prologue
    .line 88
    iput-object p1, p0, Ljep;->h:Ljdx;

    .line 89
    iget-object v0, p0, Ljep;->e:Ljiy;

    new-instance v1, Ljes;

    invoke-direct {v1, p0}, Ljes;-><init>(Ljep;)V

    .line 100
    invoke-direct {p0, p1, p2}, Ljep;->e(Ljdx;Z)Ljdj;

    move-result-object v2

    .line 89
    invoke-interface {v0, v1, v2}, Ljiy;->b(Lgkw;Ljdj;)V

    .line 101
    return-void
.end method

.method public d(Ljdx;Z)V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Ljep;->e:Ljiy;

    new-instance v1, Ljet;

    invoke-direct {v1, p0}, Ljet;-><init>(Ljep;)V

    .line 115
    invoke-direct {p0, p1, p2}, Ljep;->e(Ljdx;Z)Ljdj;

    move-result-object v2

    .line 105
    invoke-interface {v0, v1, v2}, Ljiy;->b(Lgkw;Ljdj;)V

    .line 116
    return-void
.end method
