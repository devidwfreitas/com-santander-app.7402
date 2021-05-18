.class public Lwr;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lwq;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lsy;

.field public c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsy;Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsy;",
            "Ljava/util/List",
            "<",
            "Lwq;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwr;->a:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lwr;->c:Landroid/content/Context;

    .line 44
    iput-object p1, p0, Lwr;->b:Lsy;

    .line 45
    iput-object p2, p0, Lwr;->a:Ljava/util/List;

    .line 47
    invoke-direct {p0}, Lwr;->a()V

    .line 48
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lwr;->c:Landroid/content/Context;

    sget v1, Llg;->CDB:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwr;->d:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lwr;->c:Landroid/content/Context;

    sget v1, Llg;->FUNDOS:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwr;->f:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lwr;->c:Landroid/content/Context;

    sget v1, Llg;->POUPANCA:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwr;->e:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private a(Lwt;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 146
    iget-object v0, p0, Lwr;->b:Lsy;

    invoke-virtual {v0}, Lsy;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lwr;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-static {p1}, Lwt;->b(Lwt;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 149
    invoke-static {p1}, Lwt;->c(Lwt;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 150
    invoke-static {p1}, Lwt;->d(Lwt;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    invoke-static {p1}, Lwt;->e(Lwt;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    :cond_0
    iget-object v0, p0, Lwr;->b:Lsy;

    invoke-virtual {v0}, Lsy;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lwr;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 156
    if-eqz v0, :cond_1

    .line 157
    invoke-static {p1}, Lwt;->c(Lwt;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    invoke-static {p1}, Lwt;->b(Lwt;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    invoke-static {p1}, Lwt;->d(Lwt;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 161
    invoke-static {p1}, Lwt;->e(Lwt;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 164
    :cond_1
    iget-object v0, p0, Lwr;->b:Lsy;

    invoke-virtual {v0}, Lsy;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lwr;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 165
    if-eqz v0, :cond_2

    .line 166
    invoke-static {p1}, Lwt;->d(Lwt;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 167
    invoke-static {p1}, Lwt;->c(Lwt;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 168
    invoke-static {p1}, Lwt;->b(Lwt;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 170
    invoke-static {p1}, Lwt;->e(Lwt;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 172
    :cond_2
    return-void
.end method

.method private a(Lwt;Lwq;)V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Lacg;

    invoke-direct {v0}, Lacg;-><init>()V

    .line 129
    iget-object v1, p0, Lwr;->b:Lsy;

    invoke-virtual {v1}, Lsy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacg;->c(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lwr;->b:Lsy;

    invoke-virtual {v1}, Lsy;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacg;->b(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lwr;->b:Lsy;

    invoke-virtual {v1}, Lsy;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacg;->a(Ljava/lang/Integer;)V

    .line 132
    invoke-virtual {p2}, Lwq;->b()Ltk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacg;->a(Ltk;)V

    .line 134
    invoke-virtual {p2}, Lwq;->a()Lto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacg;->a(Lto;)V

    .line 135
    const-string v1, "PRODUCT_"

    invoke-virtual {p2}, Lwq;->a()Lto;

    move-result-object v2

    invoke-virtual {v2}, Lto;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {p1}, Lwt;->a(Lwt;)Landroid/support/v7/widget/CardView;

    move-result-object v1

    new-instance v2, Lws;

    invoke-direct {v2, p0, v0}, Lws;-><init>(Lwr;Lacg;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method private b(Lwt;Lwq;)V
    .locals 10

    .prologue
    .line 175
    invoke-virtual {p2}, Lwq;->a()Lto;

    move-result-object v1

    .line 176
    invoke-virtual {p2}, Lwq;->b()Ltk;

    move-result-object v2

    .line 178
    iget-object v0, p0, Lwr;->b:Lsy;

    invoke-virtual {v0}, Lsy;->b()Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v3, p0, Lwr;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 180
    iget-object v4, p0, Lwr;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 181
    iget-object v5, p0, Lwr;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 183
    invoke-virtual {p2}, Lwq;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacc;

    .line 184
    if-eqz v3, :cond_4

    .line 185
    invoke-static {p1}, Lwt;->f(Lwt;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 186
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 187
    invoke-static {p1}, Lwt;->f(Lwt;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lacc;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-static {p1}, Lwt;->g(Lwt;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 192
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 193
    invoke-static {p1}, Lwt;->g(Lwt;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lacc;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    :cond_2
    invoke-static {p1}, Lwt;->h(Lwt;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 198
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 199
    invoke-static {p1}, Lwt;->h(Lwt;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lacc;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 203
    :cond_3
    invoke-static {p1}, Lwt;->i(Lwt;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 204
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 205
    invoke-static {p1}, Lwt;->i(Lwt;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lacc;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 210
    :cond_4
    if-eqz v4, :cond_5

    .line 211
    invoke-static {p1}, Lwt;->j(Lwt;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lacc;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_5
    if-eqz v5, :cond_0

    .line 216
    invoke-static {p1}, Lwt;->f(Lwt;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lacc;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 221
    :cond_6
    invoke-static {p1}, Lwt;->k(Lwt;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1}, Lto;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-static {p1}, Lwt;->l(Lwt;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lto;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-static {p1}, Lwt;->m(Lwt;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2}, Ltk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-static {p1}, Lwt;->n(Lwt;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2}, Ltk;->c()Lsw;

    move-result-object v1

    invoke-virtual {v1}, Lsw;->a()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p1, Lwt;->a:Landroid/view/View;

    iget-object v1, p0, Lwr;->b:Lsy;

    invoke-virtual {v1}, Lsy;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 226
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lwr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 112
    move-object v0, p1

    check-cast v0, Lwt;

    .line 114
    iget-object v1, p0, Lwr;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwq;

    .line 116
    invoke-direct {p0, v0}, Lwr;->a(Lwt;)V

    .line 117
    invoke-direct {p0, v0, v1}, Lwr;->a(Lwt;Lwq;)V

    .line 119
    check-cast p1, Lwt;

    invoke-direct {p0, p1, v1}, Lwr;->b(Lwt;Lwq;)V

    .line 120
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    .line 107
    new-instance v0, Lwt;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Llc;->layout_card_resgate_contratos:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lwt;-><init>(Landroid/view/View;)V

    return-object v0
.end method
