.class public Lvi;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lvo;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "7"

.field private static final b:Ljava/lang/String; = "3"

.field private static final c:Ljava/lang/String; = "8"


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lve;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Luz;

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Luz;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Luz;",
            "Ljava/util/List",
            "<",
            "Lve;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    iput-boolean v0, p0, Lvi;->h:Z

    .line 155
    iput v0, p0, Lvi;->i:I

    .line 49
    iput-object p3, p0, Lvi;->d:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lvi;->e:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lvi;->f:Luz;

    .line 52
    iput-boolean p4, p0, Lvi;->g:Z

    .line 53
    return-void
.end method

.method static synthetic a(Lvi;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lvi;->e:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 220
    iget-object v0, p0, Lvi;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lkz;->ic_risco_variavel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    .line 217
    :pswitch_0
    iget-object v0, p0, Lvi;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lkz;->ic_risco_baixo:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v0, p0, Lvi;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lkz;->ic_risco_medio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 219
    :pswitch_2
    iget-object v0, p0, Lvi;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lkz;->ic_risco_alto:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lve;)V
    .locals 6

    .prologue
    .line 191
    iget-object v0, p0, Lvi;->e:Landroid/content/Context;

    check-cast v0, Lack;

    invoke-virtual {v0}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    .line 192
    new-instance v1, Lto;

    invoke-virtual {p1}, Lve;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lve;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lve;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lve;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lvi;->f:Luz;

    invoke-virtual {v2}, Luz;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lacg;->c(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lvi;->f:Luz;

    invoke-virtual {v2}, Luz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lacg;->b(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lvi;->f:Luz;

    invoke-virtual {v2}, Luz;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lacg;->a(Ljava/lang/Integer;)V

    .line 198
    invoke-virtual {v0, v1}, Lacg;->a(Lto;)V

    .line 200
    iget-object v1, p0, Lvi;->e:Landroid/content/Context;

    sget v2, Llg;->tag_name_listagem_destaque_acao:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lvi;->f:Luz;

    .line 202
    invoke-virtual {v5}, Luz;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 201
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    invoke-virtual {p1}, Lve;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lve;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {v1, v2}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v1

    iget-object v2, p0, Lvi;->e:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lzs;->b(Landroid/content/Context;Lacg;)V

    .line 207
    return-void
.end method

.method static synthetic a(Lvi;Lve;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lvi;->a(Lve;)V

    return-void
.end method

.method private a(Lvo;)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p1, Lvo;->c:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 74
    iget-object v0, p1, Lvo;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lvi;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Llg;->list_coe_texto_link:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toque aqui"

    invoke-static {v1, v2}, Laat;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p1, Lvo;->q:Landroid/widget/TextView;

    new-instance v1, Lvj;

    invoke-direct {v1, p0}, Lvj;-><init>(Lvi;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method private a(Lvo;Lve;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 88
    iget-object v0, p1, Lvo;->b:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 89
    iget-object v0, p1, Lvo;->n:Landroid/widget/TextView;

    invoke-virtual {p2}, Lve;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lvi;->e:Landroid/content/Context;

    sget v3, Llg;->list_corretora_texto_link:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v3, Landroid/text/SpannableString;

    iget-object v4, p0, Lvi;->e:Landroid/content/Context;

    sget v5, Llg;->list_corretora_santander_corretora:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lvi;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lkx;->inv_warm_grey:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v4, v7, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 97
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 99
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v3, v1, v7, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 100
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 102
    iget-object v1, p1, Lvo;->o:Landroid/widget/TextView;

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 104
    iget-object v0, p1, Lvo;->b:Landroid/support/v7/widget/CardView;

    new-instance v1, Lvk;

    invoke-direct {v1, p0, p2}, Lvk;-><init>(Lvi;Lve;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p1, Lvo;->f:Landroid/view/View;

    iget-object v1, p0, Lvi;->f:Luz;

    invoke-virtual {v1}, Luz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 135
    return-void
.end method

.method private b(Lvo;)V
    .locals 3

    .prologue
    .line 138
    iget-boolean v0, p0, Lvi;->h:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p1, Lvo;->d:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 140
    iget-object v0, p1, Lvo;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lvi;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Llg;->list_previdencia_texto_link:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toque aqui"

    invoke-static {v1, v2}, Laat;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p1, Lvo;->p:Landroid/widget/TextView;

    new-instance v1, Lvm;

    invoke-direct {v1, p0}, Lvm;-><init>(Lvi;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvi;->h:Z

    .line 153
    :cond_0
    return-void
.end method

.method private b(Lvo;Lve;)V
    .locals 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lvi;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lve;->k()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lvi;->i:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 159
    :cond_0
    iget v0, p0, Lvi;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvi;->i:I

    .line 160
    iget-object v0, p1, Lvo;->a:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 161
    iget-object v0, p1, Lvo;->a:Landroid/support/v7/widget/CardView;

    new-instance v1, Lvn;

    invoke-direct {v1, p0, p2}, Lvn;-><init>(Lvi;Lve;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p1, Lvo;->e:Landroid/view/View;

    iget-object v1, p0, Lvi;->f:Luz;

    invoke-virtual {v1}, Luz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 167
    iget-object v0, p1, Lvo;->g:Landroid/widget/TextView;

    invoke-virtual {p2}, Lve;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p1, Lvo;->m:Landroid/widget/TextView;

    invoke-virtual {p2}, Lve;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p1, Lvo;->h:Landroid/widget/TextView;

    invoke-virtual {p2}, Lve;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p1, Lvo;->l:Landroid/widget/TextView;

    invoke-virtual {p2}, Lve;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :try_start_0
    invoke-virtual {p2}, Lve;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    :goto_0
    iget-object v1, p1, Lvo;->i:Landroid/widget/TextView;

    invoke-static {v0}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p1, Lvo;->j:Landroid/widget/TextView;

    invoke-virtual {p2}, Lve;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p2}, Lve;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lve;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    iget-object v0, p1, Lvo;->k:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lve;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lvi;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :cond_1
    :goto_1
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p1, Lvo;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lvo;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lvo;

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Llc;->layout_listagem_subproduto_card:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lvo;-><init>(Landroid/view/View;)V

    .line 57
    return-object v0
.end method

.method public a(Lvo;I)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lvi;->f:Luz;

    invoke-virtual {v0}, Luz;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    packed-switch v0, :pswitch_data_1

    .line 68
    iget-object v0, p0, Lvi;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lve;

    invoke-direct {p0, p1, v0}, Lvi;->b(Lvo;Lve;)V

    .line 70
    :goto_1
    return-void

    .line 64
    :pswitch_1
    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const-string v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 65
    :pswitch_4
    invoke-direct {p0, p1}, Lvi;->b(Lvo;)V

    goto :goto_1

    .line 66
    :pswitch_5
    iget-object v0, p0, Lvi;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lve;

    invoke-direct {p0, p1, v0}, Lvi;->a(Lvo;Lve;)V

    goto :goto_1

    .line 67
    :pswitch_6
    invoke-direct {p0, p1}, Lvi;->a(Lvo;)V

    goto :goto_1

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lvi;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lvo;

    invoke-virtual {p0, p1, p2}, Lvi;->a(Lvo;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lvi;->a(Landroid/view/ViewGroup;I)Lvo;

    move-result-object v0

    return-object v0
.end method
