.class public Llxc;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "sinister-key"

.field private static final b:Ljava/lang/String; = "095"


# instance fields
.field private c:Z

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/Button;

.field private f:Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

.field private i:Lkyy;

.field private j:Lkvp;

.field private k:Lkxf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Llxc;->c:Z

    .line 90
    new-instance v0, Lkyz;

    invoke-direct {v0}, Lkyz;-><init>()V

    iput-object v0, p0, Llxc;->i:Lkyy;

    return-void
.end method

.method static synthetic a(Llxc;)Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Llxc;->h:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    return-object v0
.end method

.method static synthetic a(Llxc;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Llxc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lkvp;)Llxc;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    if-eqz p0, :cond_0

    .line 73
    const-string v1, "sinister-key"

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v2

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    new-instance v1, Llxc;

    invoke-direct {v1}, Llxc;-><init>()V

    .line 76
    invoke-virtual {v1, v0}, Llxc;->setArguments(Landroid/os/Bundle;)V

    .line 77
    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 248
    const v0, 0x7f1007b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;

    iput-object v0, p0, Llxc;->f:Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;

    .line 249
    const v0, 0x7f100111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llxc;->d:Landroid/widget/LinearLayout;

    .line 250
    const v0, 0x7f1003f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llxc;->e:Landroid/widget/Button;

    .line 251
    iget-object v0, p0, Llxc;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Llxc;->a()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    const v0, 0x7f1009ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llxc;->g:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Llxc;->f:Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;

    new-instance v1, Llxg;

    invoke-direct {v1, p0}, Llxg;-><init>(Llxc;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 277
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Llxc;->h:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->b()Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 184
    new-instance v0, Lkwf;

    invoke-direct {v0}, Lkwf;-><init>()V

    .line 185
    iget-object v1, p0, Llxc;->j:Lkvp;

    invoke-virtual {v1}, Lkvp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkwf;->a(Ljava/lang/String;)V

    .line 186
    new-instance v1, Lkwg;

    iget-object v2, p0, Llxc;->j:Lkvp;

    invoke-virtual {v2}, Lkvp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkwg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkwf;->a(Lkwg;)V

    .line 187
    iget-object v1, p0, Llxc;->j:Lkvp;

    invoke-virtual {v1}, Lkvp;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkwf;->b(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Llxc;->j:Lkvp;

    invoke-virtual {v1}, Lkvp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkwf;->c(Ljava/lang/String;)V

    .line 189
    new-instance v1, Lkwc;

    invoke-direct {v1, p1}, Lkwc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkwf;->a(Lkwc;)V

    .line 191
    iget-object v1, p0, Llxc;->h:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->a()Lkya;

    move-result-object v1

    new-instance v2, Llxe;

    invoke-direct {v2, p0}, Llxe;-><init>(Llxc;)V

    new-instance v3, Llxf;

    invoke-direct {v3, p0}, Llxf;-><init>(Llxc;)V

    invoke-interface {v1, v0, v2, v3}, Lkya;->a(Lkwf;Lkxl;Lkxl;)V

    .line 215
    return-void
.end method

.method static synthetic b(Llxc;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Llxc;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const-string v0, "\n"

    const-string v1, " "

    .line 221
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    const-string v2, ""

    .line 222
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    const-string v2, ""

    .line 223
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    const-string v2, ")"

    .line 224
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$"

    const-string v2, ""

    .line 225
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%"

    const-string v2, ""

    .line 226
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    const-string v2, ""

    .line 227
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, ""

    .line 228
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    .line 229
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, ""

    .line 230
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, ""

    .line 231
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    const-string v2, ""

    .line 232
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    const-string v2, ""

    .line 233
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, ""

    .line 234
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CR"

    const-string v2, ""

    .line 235
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LF"

    const-string v2, ""

    .line 236
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, ""

    .line 237
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    const-string v2, ""

    .line 238
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    .line 239
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 244
    :cond_0
    return-object p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Llxc;->e:Landroid/widget/Button;

    iget-object v1, p0, Llxc;->e:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPaintFlags(I)V

    .line 113
    return-void
.end method

.method static synthetic b(Llxc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Llxc;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Llxc;->h:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "Seguros_Sinistro_MeusSinistros_PagamentoAprovado_Contestacao_Acao"

    const-string v1, "Enviar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v0, "Seguros_Sinistro_MeusSinistros_PagamentoRecusado_Contestacao_Acao"

    const-string v1, "Enviar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Llxc;->i:Lkyy;

    iget-object v1, p0, Llxc;->j:Lkvp;

    invoke-virtual {v1}, Lkvp;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Llxc;->j:Lkvp;

    invoke-virtual {v1}, Lkvp;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Llxc;->j:Lkvp;

    invoke-virtual {v1}, Lkvp;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Llxc;->j:Lkvp;

    invoke-virtual {v1}, Lkvp;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Llxk;

    invoke-direct {v6, p0}, Llxk;-><init>(Llxc;)V

    new-instance v7, Llxl;

    invoke-direct {v7, p0}, Llxl;-><init>(Llxc;)V

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lkyy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkxk;Lkxl;)V

    .line 395
    return-void
.end method

.method static synthetic c(Llxc;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Llxc;->e()V

    return-void
.end method

.method static synthetic d(Llxc;)Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Llxc;->f:Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Llxc;->h:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->b()Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Llxd;

    invoke-direct {v1, p0}, Llxd;-><init>(Llxc;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Llxc;->h:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "Seguros_Sinistro_MeusSinistros_PagamentoAprovado_Contestacao_Acao"

    const-string v1, "AnexarDocumento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_0
    return-void

    .line 298
    :cond_0
    const-string v0, "Seguros_Sinistro_MeusSinistros_PagamentoRecusado_Contestacao_Acao"

    const-string v1, "AnexarDocumento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 313
    iget-object v0, p0, Llxc;->k:Lkxf;

    if-eqz v0, :cond_4

    .line 315
    iget-object v0, p0, Llxc;->k:Lkxf;

    iget-object v0, v0, Lkxf;->a:[B

    invoke-static {v0}, Lmhj;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Llxc;->k:Lkxf;

    iget-object v1, v1, Lkxf;->b:[B

    invoke-static {v1}, Lmhj;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 319
    new-instance v2, Lknv;

    invoke-direct {v2}, Lknv;-><init>()V

    .line 321
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 322
    iget-object v3, p0, Llxc;->k:Lkxf;

    iget-object v3, v3, Lkxf;->c:Lknw;

    invoke-virtual {v2, v3}, Lknv;->b(Lknw;)V

    .line 323
    invoke-virtual {v2, v0}, Lknv;->b(Ljava/lang/String;)V

    .line 326
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 327
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 328
    iget-object v3, p0, Llxc;->k:Lkxf;

    iget-object v3, v3, Lkxf;->d:Lknw;

    invoke-virtual {v2, v3}, Lknv;->b(Lknw;)V

    .line 329
    invoke-virtual {v2, v1}, Lknv;->b(Ljava/lang/String;)V

    .line 336
    :cond_1
    :goto_0
    iget-object v3, p0, Llxc;->j:Lkvp;

    invoke-virtual {v3}, Lkvp;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lknv;->e(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lknv;->f(Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Llxc;->j:Lkvp;

    invoke-virtual {v3}, Lkvp;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lknv;->g(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Llxc;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lknv;->d(Ljava/lang/String;)V

    .line 340
    const-string v3, "095"

    invoke-virtual {v2, v3}, Lknv;->c(Ljava/lang/String;)V

    .line 342
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 343
    iget-object v3, p0, Llxc;->k:Lkxf;

    iget-object v3, v3, Lkxf;->c:Lknw;

    invoke-virtual {v2, v3}, Lknv;->b(Lknw;)V

    .line 344
    invoke-virtual {v2, v0}, Lknv;->b(Ljava/lang/String;)V

    .line 347
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 348
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 349
    iget-object v0, p0, Llxc;->k:Lkxf;

    iget-object v0, v0, Lkxf;->d:Lknw;

    invoke-virtual {v2, v0}, Lknv;->b(Lknw;)V

    .line 350
    invoke-virtual {v2, v1}, Lknv;->b(Ljava/lang/String;)V

    .line 357
    :cond_3
    :goto_1
    iget-object v0, p0, Llxc;->h:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->b()Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 358
    iget-object v0, p0, Llxc;->i:Lkyy;

    new-instance v1, Llxi;

    invoke-direct {v1, p0}, Llxi;-><init>(Llxc;)V

    new-instance v3, Llxj;

    invoke-direct {v3, p0}, Llxj;-><init>(Llxc;)V

    invoke-interface {v0, v2, v1, v3}, Lkyy;->a(Lknv;Lkxl;Lkxl;)V

    .line 374
    :cond_4
    return-void

    .line 331
    :cond_5
    iget-object v3, p0, Llxc;->k:Lkxf;

    iget-object v3, v3, Lkxf;->d:Lknw;

    invoke-virtual {v2, v3}, Lknv;->a(Lknw;)V

    .line 332
    invoke-virtual {v2, v1}, Lknv;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_6
    iget-object v0, p0, Llxc;->k:Lkxf;

    iget-object v0, v0, Lkxf;->d:Lknw;

    invoke-virtual {v2, v0}, Lknv;->a(Lknw;)V

    .line 353
    invoke-virtual {v2, v1}, Lknv;->a(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 280
    new-instance v0, Llxh;

    invoke-direct {v0, p0}, Llxh;-><init>(Llxc;)V

    return-object v0
.end method

.method public a(Lkxf;)V
    .locals 3
    .annotation runtime Lnfq;
    .end annotation

    .prologue
    .line 308
    iput-object p1, p0, Llxc;->k:Lkxf;

    .line 309
    iget-object v0, p0, Llxc;->h:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    invoke-virtual {p0}, Llxc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 310
    return-void
.end method

.method public a(Lkxi;)V
    .locals 3
    .annotation runtime Lnfq;
    .end annotation

    .prologue
    .line 130
    iget-boolean v0, p1, Lkxi;->a:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Llxc;->f:Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Llxc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iget-object v0, p0, Llxc;->h:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    invoke-virtual {p0}, Llxc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090459

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    :goto_0
    invoke-direct {p0}, Llxc;->c()V

    .line 144
    :cond_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd2

    if-le v0, v1, :cond_2

    .line 135
    iget-object v0, p0, Llxc;->h:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    invoke-virtual {p0}, Llxc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090715

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Llxc;->k:Lkxf;

    if-nez v0, :cond_3

    .line 137
    iget-object v0, p0, Llxc;->h:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    invoke-virtual {p0}, Llxc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09044d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_3
    invoke-direct {p0}, Llxc;->f()V

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 85
    instance-of v0, p1, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    iput-object p1, p0, Llxc;->h:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    .line 88
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    iget-object v0, p0, Llxc;->h:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    invoke-virtual {p0}, Llxc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0908ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->a(Ljava/lang/String;Z)V

    .line 97
    invoke-virtual {p0}, Llxc;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llxc;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sinister-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p0}, Llxc;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sinister-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvp;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvp;

    iput-object v0, p0, Llxc;->j:Lkvp;

    .line 100
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 105
    const v0, 0x7f0401f2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 106
    invoke-direct {p0, v0}, Llxc;->a(Landroid/view/View;)V

    .line 107
    invoke-direct {p0}, Llxc;->b()V

    .line 108
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 124
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->c(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 118
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->b(Ljava/lang/Object;)V

    .line 119
    return-void
.end method
