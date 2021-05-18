.class public Lcom/santander/app/FazerPagamentoConfirmacaoActivity;
.super Lgoj;
.source "SourceFile"

# interfaces
.implements Lnau;


# instance fields
.field private A:Lfht;

.field private B:Lfvh;

.field private C:Ljava/lang/Boolean;

.field private D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation
.end field

.field public a:Landroid/app/Dialog;

.field public b:Ljava/lang/String;

.field public c:Lfur;

.field private final f:Ljava/lang/String;

.field private g:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

.field private w:Lfhv;

.field private x:Lfvi;

.field private y:Lfhx;

.field private z:Lfvk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lgoj;-><init>()V

    .line 62
    const-string v0, "FazerPagamentoConfirmacaoActivity"

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->f:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a:Landroid/app/Dialog;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->b:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->C:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lcom/santander/app/FazerPagamentoConfirmacaoActivity;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->g:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Lfvh;)Lfvh;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Lfvi;)Lfvi;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->x:Lfvi;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Lfvk;)Lfvk;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->z:Lfvk;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->C:Ljava/lang/Boolean;

    .line 222
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->b:Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 225
    new-instance v1, Lijv;

    invoke-direct {v1}, Lijv;-><init>()V

    .line 226
    const v2, 0x7f10053a

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 227
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 228
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 229
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lfvi;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->x:Lfvi;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 256
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->C:Ljava/lang/Boolean;

    .line 258
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->b:Ljava/lang/String;

    .line 259
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 261
    new-instance v1, Likb;

    invoke-direct {v1}, Likb;-><init>()V

    .line 262
    const v2, 0x7f10053a

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 263
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 264
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 265
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->r()V

    return-void
.end method

.method public static synthetic c(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->h()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 374
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->C:Ljava/lang/Boolean;

    .line 376
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->b:Ljava/lang/String;

    .line 377
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 379
    new-instance v1, Lijp;

    invoke-direct {v1}, Lijp;-><init>()V

    .line 380
    const v2, 0x7f10053a

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 381
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 382
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 383
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lfvk;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->z:Lfvk;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->j()V

    return-void
.end method

.method public static synthetic g(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)Lfvh;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lfhv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfhv;-><init>(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Lfhr;)V

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->w:Lfhv;

    .line 181
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->w:Lfhv;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfhv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 182
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 186
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->C:Ljava/lang/Boolean;

    .line 188
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->f()V

    .line 190
    new-instance v0, Lgvb;

    invoke-direct {v0}, Lgvb;-><init>()V

    .line 191
    const-string v1, "OfferCadDebAuto"

    invoke-virtual {v0, v1}, Lgvb;->l(Ljava/lang/String;)V

    .line 193
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Lgvb;->f(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->x:Lfvi;

    invoke-virtual {v1}, Lfvi;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->e(Ljava/lang/String;)V

    .line 197
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgvb;->d(Z)V

    .line 198
    invoke-virtual {v0, v3}, Lgvb;->f(Z)V

    .line 199
    const-string v1, "Cadastro em D\u00e9bito Autom\u00e1tico"

    invoke-virtual {v0, v1}, Lgvb;->k(Ljava/lang/String;)V

    .line 200
    const-string v1, "Comprovante - Pagamento realizado com sucesso"

    invoke-virtual {v0, v1}, Lgvb;->g(Ljava/lang/String;)V

    .line 201
    const-class v1, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;

    invoke-virtual {v0, v1}, Lgvb;->a(Ljava/lang/Class;)V

    .line 202
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 203
    const v1, 0x7f090a98

    invoke-virtual {p0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->c(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v1

    invoke-virtual {v1}, Lhau;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const-string v1, "Pagamento agendado com sucesso"

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    .line 211
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    const-string v2, "comprovanteBase"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 215
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->s()V

    .line 216
    return-void

    .line 208
    :cond_0
    const-string v1, "Pagamento realizado com sucesso"

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic h(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->o()V

    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lfhx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfhx;-><init>(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Lfhr;)V

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->y:Lfhx;

    .line 233
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->y:Lfhx;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfhx;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 234
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 238
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->C:Ljava/lang/Boolean;

    .line 240
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c:Lfur;

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Lfhs;

    invoke-direct {v0, p0}, Lfhs;-><init>(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;)V

    new-array v1, v1, [Lfur;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c:Lfur;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lfhs;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 246
    new-instance v1, Likd;

    invoke-direct {v1}, Likd;-><init>()V

    .line 247
    const v2, 0x7f10053a

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 248
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 249
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 251
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->s()V

    .line 252
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 268
    new-instance v0, Lfht;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfht;-><init>(Lcom/santander/app/FazerPagamentoConfirmacaoActivity;Lfhr;)V

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->A:Lfht;

    .line 269
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->A:Lfht;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfht;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 270
    return-void
.end method

.method private o()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->C:Ljava/lang/Boolean;

    .line 276
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->s()V

    .line 278
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->p()V

    .line 279
    return-void
.end method

.method private p()V
    .locals 6

    .prologue
    const v5, 0x7f090ab3

    const/4 v4, 0x1

    .line 283
    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    new-instance v1, Lgky;

    const-string v2, "Chave \u00danica:"

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v3}, Lfvh;->w()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1, v4}, Lgky;->a(Z)V

    .line 288
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v1, Lgky;

    const-string v2, "Valor do T\u00edtulo:"

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v3}, Lfvh;->u()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v1, Lgky;

    const-string v2, "Valor Custas e Emolumento:"

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v3}, Lfvh;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v1, Lgky;

    const-string v2, "Valor Total do T\u00edtulo:"

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v3}, Lfvh;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v1, Lgky;

    const-string v2, "CNPJ/CPF do Pagador:"

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v3}, Lfvh;->z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v1, Lgky;

    const-string v2, "Nome ou Raz\u00e3o Social do Pagador:"

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v3}, Lfvh;->v()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1, v4}, Lgky;->a(Z)V

    .line 304
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v1, Lgky;

    const-string v2, "N\u00famero de Identifica\u00e7\u00e3o do Cart\u00f3rio:"

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v3}, Lfvh;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1, v4}, Lgky;->a(Z)V

    .line 308
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v1, Lgky;

    const-string v2, "UF:"

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v3}, Lfvh;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v1, Lgky;

    const-string v2, "Munic\u00edpio:"

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v3}, Lfvh;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v1, Lgky;

    const-string v2, "N\u00famero do Protocolo:"

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v3}, Lfvh;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v1, Lgky;

    const-string v2, "Data do Protocolo:"

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v3}, Lfvh;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance v1, Lgky;

    const-string v2, "Data Limite do Pagamento:"

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v3}, Lfvh;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v1, Lgky;

    const-string v2, "N\u00famero do T\u00edtulo:"

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v3}, Lfvh;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v1, Lgky;

    const-string v2, "Esp\u00e9cie do T\u00edtulo:"

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v3}, Lfvh;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v1, Lgky;

    const-string v2, "Data de Vencimento do T\u00edtulo:"

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v3}, Lfvh;->y()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v1, Lgky;

    const-string v2, "Nome ou Raz\u00e3o Social do Avalista:"

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v3}, Lfvh;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1, v4}, Lgky;->a(Z)V

    .line 336
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v1, Lgky;

    const-string v2, "Institui\u00e7\u00e3o Financeira Destinat\u00e1ria:"

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v3}, Lfvh;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1, v4}, Lgky;->a(Z)V

    .line 340
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v1, Lgvb;

    invoke-direct {v1}, Lgvb;-><init>()V

    .line 344
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-virtual {v1, v2}, Lgvb;->f(Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v2}, Lfvh;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgvb;->e(Ljava/lang/String;)V

    .line 348
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgvb;->d(Z)V

    .line 349
    const-string v2, "Comprovante - Pagamento de T\u00edtulo em Cart\u00f3rio"

    invoke-virtual {v1, v2}, Lgvb;->g(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v1, v0}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 351
    invoke-virtual {p0, v5}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 352
    const-string v0, " realizado com sucesso"

    .line 353
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v2

    invoke-virtual {v2}, Lhau;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    const-string v0, " agendado com sucesso"

    .line 356
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1, v4}, Lgvb;->k(Z)V

    .line 359
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->q()V

    .line 361
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    const-string v2, "comprovanteBase"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 363
    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 364
    return-void
.end method

.method private q()V
    .locals 4

    .prologue
    .line 367
    const-string v0, "Pagamentos_Pagamento_DataDePagamento"

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v1}, Lfvh;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v0, "Pagamentos_Pagamento_TitulosEmCatorio_ValorDePagamento"

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v1}, Lfvh;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lfrq;->a(Ljava/lang/String;D)V

    .line 369
    const-string v0, "Pagamentos_Pagamento_TitulosEmCatorio_ReferOper"

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    invoke-virtual {v1}, Lfvh;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method private r()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a:Landroid/app/Dialog;

    .line 456
    :cond_0
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    .line 756
    const-string v0, "avaliacaoApp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 757
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 758
    const-string v1, "transacaoKey"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 759
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 760
    return-void
.end method


# virtual methods
.method public a()Lfur;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c:Lfur;

    return-object v0
.end method

.method public a(IZ)V
    .locals 0

    .prologue
    .line 163
    packed-switch p1, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 165
    :pswitch_0
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->g()V

    goto :goto_0

    .line 169
    :pswitch_1
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->i()V

    goto :goto_0

    .line 173
    :pswitch_2
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->n()V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lfur;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c:Lfur;

    .line 90
    return-void
.end method

.method public a(Lfvh;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    .line 673
    return-void
.end method

.method public a(Lfvi;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->x:Lfvi;

    .line 657
    return-void
.end method

.method public a(Lfvk;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->z:Lfvk;

    .line 665
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 677
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 678
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 679
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 680
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v4, "com.santander.app"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->onDestroy()V

    .line 682
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 683
    const/4 v2, 0x1

    .line 686
    :cond_0
    return v2

    .line 679
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    const v0, 0x7f10053a

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lfvi;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->x:Lfvi;

    return-object v0
.end method

.method public confirmacaoCartorioDone(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 148
    const-string v0, "Pagamentos_Pagamento_TitulosEmCatorio_Confirmacao_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 154
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 155
    const v2, 0x7f10053a

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 156
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 157
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 158
    return-void
.end method

.method public confirmacaoContasDone(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 130
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 131
    const v2, 0x7f10053a

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 132
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 133
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 134
    return-void
.end method

.method public confirmacaoTitulosDone(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 141
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 142
    const v2, 0x7f10053a

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 143
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 144
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 145
    return-void
.end method

.method public d()Lfvk;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->z:Lfvk;

    return-object v0
.end method

.method public e()Lfvh;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->B:Lfvh;

    return-object v0
.end method

.method public f()V
    .locals 9

    .prologue
    const/16 v8, 0x24

    const/16 v7, 0x18

    const/16 v6, 0xc

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 692
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->x:Lfvi;

    invoke-virtual {v0}, Lfvi;->c()Ljava/lang/String;

    move-result-object v1

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->x:Lfvi;

    invoke-virtual {v2}, Lfvi;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->x:Lfvi;

    invoke-virtual {v3}, Lfvi;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->x:Lfvi;

    .line 694
    invoke-virtual {v2}, Lfvi;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->x:Lfvi;

    invoke-virtual {v3}, Lfvi;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 696
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x25

    if-le v2, v3, :cond_0

    .line 697
    const-string v0, ""

    .line 698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->D:Ljava/util/ArrayList;

    .line 707
    new-instance v1, Lgky;

    const-string v2, "C\u00f3digo de barras:"

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {v1, v5}, Lgky;->a(Z)V

    .line 709
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    new-instance v0, Lgky;

    const-string v1, "Empresa:"

    iget-object v2, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->x:Lfvi;

    invoke-virtual {v2}, Lfvi;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0, v5}, Lgky;->a(Z)V

    .line 713
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    new-instance v0, Lgky;

    const-string v1, "Valor:"

    iget-object v2, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->x:Lfvi;

    invoke-virtual {v2}, Lfvi;->q()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->x:Lfvi;

    invoke-virtual {v0}, Lfvi;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    new-instance v0, Lgky;

    const-string v1, "Forma de Pagamento:"

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "dd/MM/yyyy"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 728
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMdd"

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->x:Lfvi;

    invoke-virtual {v0}, Lfvi;->g()Ljava/lang/String;

    move-result-object v0

    .line 731
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 732
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 738
    :goto_1
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->x:Lfvi;

    invoke-virtual {v1}, Lfvi;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 739
    new-instance v1, Lgky;

    const-string v2, "Data de Agendamento:"

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    :goto_2
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->x:Lfvi;

    invoke-virtual {v0}, Lfvi;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    new-instance v0, Lgky;

    const v1, 0x7f09081c

    invoke-virtual {p0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09081d

    invoke-virtual {p0, v2}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    new-instance v0, Lgky;

    const v1, 0x7f09081e

    invoke-virtual {p0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    :cond_1
    return-void

    .line 722
    :cond_2
    new-instance v0, Lgky;

    const-string v1, "Forma de Pagamento:"

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 733
    :catch_0
    move-exception v1

    .line 735
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 742
    :cond_3
    new-instance v1, Lgky;

    const-string v2, "Data de Pagamento:"

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->C:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->v:Lmip;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmip;->c(Z)V

    .line 390
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->finishAffinity()V

    .line 391
    invoke-virtual {p0, p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->a(Landroid/content/Context;)Z

    .line 397
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f10053a

    const/4 v3, 0x0

    .line 94
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f0401cc

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->setContentView(I)V

    .line 97
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 99
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 100
    iput-object p0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->g:Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    .line 102
    const v1, 0x7f0904a1

    invoke-virtual {p0, v1}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "type_pagamento"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 108
    new-instance v0, Lfur;

    invoke-direct {v0}, Lfur;-><init>()V

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c:Lfur;

    .line 109
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "BENEFICIARIO"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lfur;

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->c:Lfur;

    .line 111
    if-nez v2, :cond_1

    .line 112
    new-instance v0, Liju;

    invoke-direct {v0}, Liju;-><init>()V

    .line 113
    invoke-virtual {v1, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 121
    :cond_0
    :goto_0
    const/16 v0, 0x1001

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 122
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 123
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    .line 115
    new-instance v0, Lika;

    invoke-direct {v0}, Lika;-><init>()V

    .line 116
    invoke-virtual {v1, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 117
    :cond_2
    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    .line 118
    new-instance v0, Lijo;

    invoke-direct {v0}, Lijo;-><init>()V

    .line 119
    invoke-virtual {v1, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 764
    invoke-super {p0}, Lgoj;->onDestroy()V

    .line 765
    return-void
.end method
