.class public Llvz;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "note-list-key"

.field public static final b:Ljava/lang/String; = "sinister-details-key"

.field public static final c:Ljava/lang/String; = "sinister-key"

.field public static final d:Ljava/lang/String; = "send-tag"


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvs;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lkvp;

.field private C:Lkvr;

.field private D:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

.field private e:Lkya;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Llyp;

.field private z:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 57
    new-instance v0, Lkyb;

    invoke-direct {v0}, Lkyb;-><init>()V

    iput-object v0, p0, Llvz;->e:Lkya;

    return-void
.end method

.method public static a(Ljava/util/List;Lkvp;Lkvr;)Llvz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvs;",
            ">;",
            "Lkvp;",
            "Lkvr;",
            ")",
            "Llvz;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    const-string v1, "note-list-key"

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v2

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "sinister-details-key"

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v2

    invoke-virtual {v2, p2}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "sinister-key"

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v2

    invoke-virtual {v2, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v1, Llvz;

    invoke-direct {v1}, Llvz;-><init>()V

    .line 99
    invoke-virtual {v1, v0}, Llvz;->setArguments(Landroid/os/Bundle;)V

    .line 100
    return-object v1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "send-tag"

    invoke-virtual {v0, v1}, Lmhg;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Llvz;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "send-tag"

    const-string v2, "tagSent"

    invoke-virtual {v0, v1, v2}, Lmhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_Concluido_Acao"

    const-string v1, "PagamentoEfetuado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Llvz;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "send-tag"

    const-string v2, "tagSent"

    invoke-virtual {v0, v1, v2}, Lmhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_Concluido_Acao"

    const-string v1, "Negado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 251
    const v0, 0x7f100924

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvz;->f:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f100925

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llvz;->g:Landroid/widget/LinearLayout;

    .line 253
    const v0, 0x7f100926

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvz;->h:Landroid/widget/TextView;

    .line 254
    const v0, 0x7f100927

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llvz;->i:Landroid/view/View;

    .line 255
    const v0, 0x7f100928

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llvz;->j:Landroid/widget/LinearLayout;

    .line 256
    const v0, 0x7f100929

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvz;->k:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f10092a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvz;->l:Landroid/widget/TextView;

    .line 258
    const v0, 0x7f10092b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvz;->m:Landroid/widget/TextView;

    .line 259
    const v0, 0x7f10092c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvz;->n:Landroid/widget/TextView;

    .line 260
    const v0, 0x7f10092d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvz;->o:Landroid/widget/TextView;

    .line 261
    const v0, 0x7f10092e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvz;->p:Landroid/widget/TextView;

    .line 262
    const v0, 0x7f10092f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvz;->q:Landroid/widget/TextView;

    .line 263
    const v0, 0x7f100932

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llvz;->r:Landroid/widget/LinearLayout;

    .line 264
    const v0, 0x7f100934

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvz;->s:Landroid/widget/TextView;

    .line 265
    const v0, 0x7f100933

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llvz;->t:Landroid/widget/LinearLayout;

    .line 266
    const v0, 0x7f100935

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llvz;->u:Landroid/widget/LinearLayout;

    .line 267
    const v0, 0x7f100936

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvz;->v:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f100931

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvz;->w:Landroid/widget/TextView;

    .line 269
    const v0, 0x7f100930

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvz;->x:Landroid/widget/TextView;

    .line 270
    const v0, 0x7f100937

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llvz;->z:Landroid/widget/Button;

    .line 271
    iget-object v0, p0, Llvz;->z:Landroid/widget/Button;

    iget-object v1, p0, Llvz;->z:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPaintFlags(I)V

    .line 272
    iget-object v0, p0, Llvz;->z:Landroid/widget/Button;

    invoke-direct {p0}, Llvz;->d()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 235
    const-string v0, ""

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 238
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 245
    :cond_0
    :goto_0
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    invoke-virtual {p0, p1}, Llvz;->a(Ljava/lang/String;)V

    .line 248
    :cond_1
    return-void

    .line 241
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object p1, p2

    .line 242
    goto :goto_0

    :cond_3
    move-object p1, v0

    goto :goto_0
.end method

.method static synthetic a(Llvz;Z)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Llvz;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 332
    if-eqz p1, :cond_0

    .line 333
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_Concluido_PagamentoAprovado_Acao"

    const-string v1, "Contestar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :goto_0
    return-void

    .line 336
    :cond_0
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_Concluido_PagamentoRecusado_Acao"

    const-string v1, "Contestar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Llvz;)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Llvz;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Llvz;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Llvz;->D:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    return-object v0
.end method

.method private b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 161
    .line 162
    iget-object v1, p0, Llvz;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 163
    const/4 v0, 0x1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    iget-object v1, p0, Llvz;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method static synthetic c(Llvz;)Lkvp;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Llvz;->B:Lkvp;

    return-object v0
.end method

.method private c()V
    .locals 13

    .prologue
    const/16 v11, 0x30

    const/4 v10, 0x3

    const/16 v9, 0x8

    const/4 v4, 0x0

    .line 171
    const-string v2, ""

    .line 172
    const-string v1, ""

    .line 174
    iget-object v0, p0, Llvz;->A:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Llvz;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    move v3, v4

    .line 175
    :goto_0
    iget-object v0, p0, Llvz;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 176
    iget-object v0, p0, Llvz;->A:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    .line 177
    invoke-virtual {v0}, Lkvs;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "05"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 178
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ""

    .line 180
    :goto_1
    const-string v6, "006"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 183
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 175
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 184
    :cond_1
    const-string v6, "007"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 185
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_2

    .line 188
    :cond_2
    iget-object v6, p0, Llvz;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object v6, p0, Llvz;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    const-string v6, "002"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 191
    iget-object v6, p0, Llvz;->w:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 192
    :cond_3
    const-string v6, "003"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 193
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 194
    iget-object v6, p0, Llvz;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "VALOR DO PAGAMENTO:"

    const-string v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 196
    :cond_4
    const-string v6, "005"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 197
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "data da transacao:"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "00:00:00"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "-"

    const-string v6, "/"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v5, p0, Llvz;->x:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object v0, v1

    move-object v1, v2

    .line 208
    goto/16 :goto_2

    .line 204
    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    iget-object v0, p0, Llvz;->x:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 208
    :cond_5
    const-string v6, "004"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 211
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\\("

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "\\)"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ":"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    const-string v5, "banco"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    const-string v6, "agencia"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 213
    const-string v6, "agencia"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x7

    const-string v7, "conta"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 214
    const-string v7, "conta"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v7, p0, Llvz;->l:Landroid/widget/TextView;

    invoke-static {v5, v11, v10}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v5, p0, Llvz;->n:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-static {v6, v11, v7}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v5, p0, Llvz;->p:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_2

    .line 225
    :cond_7
    invoke-direct {p0, v2, v1}, Llvz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_4
    return-void

    .line 228
    :cond_8
    iget-object v0, p0, Llvz;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Llvz;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method private d()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 276
    new-instance v0, Llwa;

    invoke-direct {v0, p0}, Llwa;-><init>(Llvz;)V

    return-object v0
.end method

.method static synthetic d(Llvz;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Llvz;->e()V

    return-void
.end method

.method static synthetic e(Llvz;)Lkya;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Llvz;->e:Lkya;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 323
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llvz;->D:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    const-string v1, "sinister-key"

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v2

    iget-object v3, p0, Llvz;->B:Lkvp;

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v1, "status-payment"

    invoke-direct {p0}, Llvz;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v0}, Llvz;->startActivity(Landroid/content/Intent;)V

    .line 327
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Llvz;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Llvz;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090834

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Llvz;->v:Landroid/widget/TextView;

    invoke-static {p1}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Llvz;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Llvz;->u:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 109
    instance-of v0, p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    if-eqz v0, :cond_0

    .line 110
    check-cast p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iput-object p1, p0, Llvz;->D:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    .line 112
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Llvz;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llvz;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "note-list-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p0}, Llvz;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "note-list-key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, [Lkvs;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Llvz;->A:Ljava/util/List;

    .line 121
    :cond_0
    invoke-virtual {p0}, Llvz;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llvz;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sinister-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p0}, Llvz;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sinister-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvp;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvp;

    iput-object v0, p0, Llvz;->B:Lkvp;

    .line 125
    :cond_1
    invoke-virtual {p0}, Llvz;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Llvz;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sinister-details-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p0}, Llvz;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sinister-details-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvr;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvr;

    iput-object v0, p0, Llvz;->C:Lkvr;

    .line 131
    :cond_2
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
    .line 136
    const v0, 0x7f0401df

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 137
    invoke-direct {p0, v0}, Llvz;->a(Landroid/view/View;)V

    .line 138
    invoke-direct {p0}, Llvz;->c()V

    .line 140
    invoke-direct {p0}, Llvz;->a()V

    .line 142
    return-object v0
.end method
