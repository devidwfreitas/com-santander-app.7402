.class public Lluh;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llur;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvs;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lkwh;

.field private c:Z

.field private d:Llus;

.field private e:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvs;",
            ">;",
            "Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lluh;->c:Z

    .line 55
    iput-object p1, p0, Lluh;->a:Ljava/util/List;

    .line 56
    iput-object p2, p0, Lluh;->e:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lkwh;Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvs;",
            ">;",
            "Lkwh;",
            "Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lluh;->c:Z

    .line 60
    iput-object p1, p0, Lluh;->a:Ljava/util/List;

    .line 61
    iput-object p2, p0, Lluh;->b:Lkwh;

    .line 62
    iput-object p3, p0, Lluh;->e:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    .line 63
    return-void
.end method

.method static synthetic a(Lluh;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lluh;->e:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    return-object v0
.end method

.method private a(ILandroid/view/View;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 310
    iget-object v0, p0, Lluh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 311
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 312
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 323
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {p0}, Lluh;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 314
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 315
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 316
    :cond_1
    if-nez p1, :cond_2

    .line 317
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 318
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 320
    :cond_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 321
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v0, p0, Lluh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    .line 301
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 302
    :goto_0
    const-string v4, "004"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "005"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    invoke-virtual {v0}, Lkvs;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 306
    :goto_1
    return v0

    .line 301
    :cond_2
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 306
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lluh;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lluh;->c:Z

    return p1
.end method

.method static synthetic b(Lluh;)Lkwh;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lluh;->b:Lkwh;

    return-object v0
.end method

.method static synthetic c(Lluh;)Llus;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lluh;->d:Llus;

    return-object v0
.end method

.method static synthetic d(Lluh;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lluh;->c:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llur;
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040105

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    new-instance v1, Llur;

    invoke-direct {v1, p0, v0}, Llur;-><init>(Lluh;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lkwh;I)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lluh;->b:Lkwh;

    .line 75
    invoke-virtual {p0}, Lluh;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method public a(Llur;I)V
    .locals 9

    .prologue
    const v8, 0x7f0203c2

    const v7, 0x7f02036d

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 87
    iget-object v0, p0, Lluh;->a:Ljava/util/List;

    invoke-virtual {p1}, Llur;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    .line 88
    invoke-static {p1}, Llur;->a(Llur;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-static {p1}, Llur;->b(Llur;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-static {p1}, Llur;->c(Llur;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-static {p1}, Llur;->d(Llur;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->c(Z)V

    .line 92
    invoke-static {p1}, Llur;->d(Llur;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->setOnExpansionUpdateListener(Lmbu;)V

    .line 93
    invoke-virtual {v0}, Lkvs;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lkvs;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 95
    invoke-static {p1}, Llur;->e(Llur;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    invoke-static {p1}, Llur;->f(Llur;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    invoke-static {p1}, Llur;->g(Llur;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    invoke-static {p1}, Llur;->h(Llur;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    invoke-virtual {p1}, Llur;->getAdapterPosition()I

    move-result v1

    invoke-static {p1}, Llur;->i(Llur;)Landroid/view/View;

    move-result-object v2

    invoke-static {p1}, Llur;->j(Llur;)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lluh;->a(ILandroid/view/View;Landroid/view/View;)V

    .line 101
    invoke-static {p1}, Llur;->k(Llur;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkvs;->e()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {p1}, Llur;->l(Llur;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkvs;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Llui;

    invoke-direct {v2, p0, p1, v0}, Llui;-><init>(Lluh;Llur;Lkvs;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    iget-boolean v0, p0, Lluh;->c:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-static {p1}, Llur;->d(Llur;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->b(Z)V

    .line 163
    invoke-static {p1}, Llur;->o(Llur;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 169
    :goto_0
    invoke-static {p1}, Llur;->p(Llur;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Llum;

    invoke-direct {v1, p0, p1}, Llum;-><init>(Lluh;Llur;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-static {p1}, Llur;->d(Llur;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v0

    new-instance v1, Llup;

    invoke-direct {v1, p0, p1}, Llup;-><init>(Lluh;Llur;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->setOnExpansionUpdateListener(Lmbu;)V

    .line 296
    :goto_1
    return-void

    .line 165
    :cond_0
    invoke-static {p1}, Llur;->d(Llur;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->c(Z)V

    .line 166
    invoke-static {p1}, Llur;->o(Llur;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v0}, Lkvs;->g()Ljava/lang/String;

    move-result-object v1

    .line 255
    const-string v2, "002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    invoke-virtual {v0}, Lkvs;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lluh;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 256
    invoke-virtual {p1}, Llur;->getAdapterPosition()I

    move-result v2

    invoke-static {p1}, Llur;->q(Llur;)Landroid/view/View;

    move-result-object v3

    invoke-static {p1}, Llur;->r(Llur;)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lluh;->a(ILandroid/view/View;Landroid/view/View;)V

    .line 258
    invoke-static {p1}, Llur;->e(Llur;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 259
    invoke-static {p1}, Llur;->f(Llur;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    invoke-static {p1}, Llur;->h(Llur;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    invoke-static {p1}, Llur;->g(Llur;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    const-string v2, "002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 263
    invoke-static {p1}, Llur;->s(Llur;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    :goto_2
    invoke-static {p1}, Llur;->t(Llur;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkvs;->e()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-static {p1}, Llur;->u(Llur;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkvs;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-static {p1}, Llur;->a(Llur;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lluq;

    invoke-direct {v2, p0, v0}, Lluq;-><init>(Lluh;Lkvs;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 265
    :cond_3
    invoke-static {p1}, Llur;->s(Llur;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 280
    :cond_4
    invoke-virtual {p1}, Llur;->getAdapterPosition()I

    move-result v2

    invoke-static {p1}, Llur;->v(Llur;)Landroid/view/View;

    move-result-object v3

    invoke-static {p1}, Llur;->w(Llur;)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lluh;->a(ILandroid/view/View;Landroid/view/View;)V

    .line 282
    invoke-static {p1}, Llur;->e(Llur;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    invoke-static {p1}, Llur;->f(Llur;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    invoke-static {p1}, Llur;->h(Llur;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    const-string v2, "003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lkvs;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "03"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    const-string v2, "002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lkvs;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 287
    :cond_6
    invoke-static {p1}, Llur;->x(Llur;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    :goto_3
    invoke-static {p1}, Llur;->y(Llur;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkvs;->e()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-static {p1}, Llur;->z(Llur;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkvs;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 289
    :cond_7
    invoke-static {p1}, Llur;->x(Llur;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method public a(Llus;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lluh;->d:Llus;

    .line 339
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lluh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Llur;

    invoke-virtual {p0, p1, p2}, Lluh;->a(Llur;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lluh;->a(Landroid/view/ViewGroup;I)Llur;

    move-result-object v0

    return-object v0
.end method
