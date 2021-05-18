.class Lgmo;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lgmm;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgmv;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method constructor <init>(Lgmm;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 165
    iput-object p1, p0, Lgmo;->b:Lgmm;

    iput-object p2, p0, Lgmo;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgmo;->c:Ljava/util/List;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgmo;->d:Z

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 271
    iget-boolean v0, p0, Lgmo;->d:Z

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "Outros_ExibirEOcultar_Emprestimos_Acao"

    const-string v1, "Ocultar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iput-boolean v3, p0, Lgmo;->d:Z

    .line 274
    iget-object v0, p0, Lgmo;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgmv;

    .line 275
    iget-object v2, p0, Lgmo;->b:Lgmm;

    invoke-static {v2, v0}, Lgmm;->a(Lgmm;Lgmv;)V

    goto :goto_0

    .line 278
    :cond_0
    const-string v0, "Outros_ExibirEOcultar_Emprestimos_Acao"

    const-string v1, "Exibir"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgmo;->d:Z

    .line 280
    iget-object v0, p0, Lgmo;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgmv;

    .line 281
    invoke-static {v0}, Lgmv;->a(Lgmv;)Lgml;

    move-result-object v2

    invoke-virtual {v2}, Lgml;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    iget-object v2, p0, Lgmo;->b:Lgmm;

    invoke-static {v2, v0, v3}, Lgmm;->a(Lgmm;Lgmv;Z)V

    goto :goto_1

    .line 284
    :cond_1
    iget-object v2, p0, Lgmo;->b:Lgmm;

    invoke-static {v2, v0}, Lgmm;->b(Lgmm;Lgmv;)V

    .line 285
    iget-object v2, p0, Lgmo;->b:Lgmm;

    invoke-static {v2, v0}, Lgmm;->c(Lgmm;Lgmv;)V

    goto :goto_1

    .line 289
    :cond_2
    return-void
.end method

.method static synthetic a(Lgmo;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lgmo;->a()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 303
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 304
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lgmo;->b:Lgmm;

    invoke-static {v0}, Lgmm;->b(Lgmm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 170
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 175
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 178
    if-nez v1, :cond_0

    .line 179
    iget-object v0, p0, Lgmo;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 180
    const v1, 0x7f040106

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 182
    new-instance v1, Lgmv;

    iget-object v0, p0, Lgmo;->b:Lgmm;

    invoke-direct {v1, v0, v2}, Lgmv;-><init>(Lgmm;Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Lgmo;->b:Lgmm;

    invoke-static {v0}, Lgmm;->b(Lgmm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 211
    :goto_0
    :pswitch_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lgmo;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    move-object v1, v2

    .line 218
    :goto_1
    invoke-static {v0}, Lgmv;->b(Lgmv;)Landroid/widget/Button;

    move-result-object v2

    invoke-static {v0}, Lgmv;->a(Lgmv;)Lgml;

    move-result-object v3

    invoke-virtual {v3}, Lgml;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-static {v0}, Lgmv;->b(Lgmv;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    invoke-static {v0}, Lgmv;->c(Lgmv;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0204d3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    invoke-static {v0}, Lgmv;->d(Lgmv;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    invoke-static {v0}, Lgmv;->e(Lgmv;)Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Lgmp;

    invoke-direct {v3, p0}, Lgmp;-><init>(Lgmo;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-static {v0}, Lgmv;->c(Lgmv;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lgmq;

    invoke-direct {v3, p0}, Lgmq;-><init>(Lgmo;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-static {v0}, Lgmv;->f(Lgmv;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lgmr;

    invoke-direct {v3, p0, v0}, Lgmr;-><init>(Lgmo;Lgmv;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-static {v0}, Lgmv;->d(Lgmv;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Lgms;

    invoke-direct {v3, p0, v0}, Lgms;-><init>(Lgmo;Lgmv;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    invoke-static {v0}, Lgmv;->b(Lgmv;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lgmt;

    invoke-direct {v3, p0, v0}, Lgmt;-><init>(Lgmo;Lgmv;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    invoke-static {v0}, Lgmv;->g(Lgmv;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    invoke-static {v0}, Lgmv;->g(Lgmv;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lgmv;->a(Lgmv;)Lgml;

    move-result-object v3

    invoke-virtual {v3}, Lgml;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-static {v0}, Lgmv;->h(Lgmv;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lgmv;->a(Lgmv;)Lgml;

    move-result-object v3

    invoke-virtual {v3}, Lgml;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    invoke-static {v0}, Lgmv;->i(Lgmv;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    invoke-static {v0}, Lgmv;->j(Lgmv;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    invoke-static {v0}, Lgmv;->k(Lgmv;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 267
    return-object v1

    .line 187
    :pswitch_1
    new-instance v0, Lgmi;

    iget-object v3, p0, Lgmo;->b:Lgmm;

    invoke-static {v3}, Lgmm;->c(Lgmm;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lgmi;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v0}, Lgmv;->a(Lgmv;Lgml;)Lgml;

    goto/16 :goto_0

    .line 191
    :pswitch_2
    new-instance v0, Lgmj;

    iget-object v3, p0, Lgmo;->b:Lgmm;

    invoke-static {v3}, Lgmm;->c(Lgmm;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lgmj;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v0}, Lgmv;->a(Lgmv;Lgml;)Lgml;

    goto/16 :goto_0

    .line 195
    :pswitch_3
    new-instance v0, Lgmg;

    iget-object v3, p0, Lgmo;->b:Lgmm;

    invoke-static {v3}, Lgmm;->c(Lgmm;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lgmg;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v0}, Lgmv;->a(Lgmv;Lgml;)Lgml;

    goto/16 :goto_0

    .line 199
    :pswitch_4
    new-instance v0, Lgmh;

    iget-object v3, p0, Lgmo;->b:Lgmm;

    invoke-static {v3}, Lgmm;->c(Lgmm;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lgmh;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v0}, Lgmv;->a(Lgmv;Lgml;)Lgml;

    goto/16 :goto_0

    .line 203
    :pswitch_5
    new-instance v0, Lgmf;

    iget-object v3, p0, Lgmo;->b:Lgmm;

    invoke-static {v3}, Lgmm;->c(Lgmm;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lgmf;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v0}, Lgmv;->a(Lgmv;Lgml;)Lgml;

    goto/16 :goto_0

    .line 207
    :pswitch_6
    new-instance v0, Lgmk;

    iget-object v3, p0, Lgmo;->b:Lgmm;

    invoke-static {v3}, Lgmm;->c(Lgmm;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lgmk;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v0}, Lgmv;->a(Lgmv;Lgml;)Lgml;

    goto/16 :goto_0

    .line 215
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgmv;

    goto/16 :goto_1

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 298
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
