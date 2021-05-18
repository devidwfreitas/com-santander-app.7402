.class Lglp;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lgln;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lgln;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, Lglp;->c:Lgln;

    iput-object p2, p0, Lglp;->a:Landroid/content/Context;

    iput-object p3, p0, Lglp;->b:Ljava/util/List;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lglp;->d:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lglp;->e:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lglp;->f:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lglp;->b:Ljava/util/List;

    iget-object v1, p0, Lglp;->c:Lgln;

    invoke-virtual {v1}, Lgln;->c()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 222
    iget-object v1, p0, Lglp;->c:Lgln;

    invoke-virtual {v1, v0}, Lgln;->a(Ljava/lang/Object;)V

    .line 223
    iget-object v1, p0, Lglp;->c:Lgln;

    invoke-static {v1}, Lgln;->e(Lgln;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    if-nez v1, :cond_0

    .line 224
    iget-object v1, p0, Lglp;->c:Lgln;

    invoke-virtual {v1, v0}, Lgln;->a(Ljava/lang/Object;)V

    .line 227
    :cond_0
    iget-object v1, p0, Lglp;->c:Lgln;

    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->f(Lgln;)I

    move-result v2

    invoke-virtual {v1, v2}, Lgln;->a(I)V

    .line 230
    const-string v1, "ContaCorrente_Acao"

    const-string v2, "acessoCarroselHome"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->c(Lgln;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/santander/app/ContaMovementActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    const-string v2, "conta_selected"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 235
    iget-object v0, p0, Lglp;->c:Lgln;

    invoke-static {v0}, Lgln;->c(Lgln;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method static synthetic a(Lglp;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lglp;->b()V

    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 240
    iget-object v0, p0, Lglp;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 241
    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->d(Lgln;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Lglp;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 249
    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->d(Lgln;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 250
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 252
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 256
    :cond_3
    iget-object v0, p0, Lglp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 257
    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->d(Lgln;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 258
    const v2, 0x7f0204d3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 260
    :cond_4
    const v2, 0x7f0204f7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 264
    :cond_5
    return-void
.end method

.method static synthetic b(Lglp;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lglp;->a()V

    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 268
    iget-object v0, p0, Lglp;->c:Lgln;

    invoke-static {v0}, Lgln;->c(Lgln;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ContaPreferences"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 270
    iget-object v0, p0, Lglp;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 271
    const-string v3, "state_carrossel_conta"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lglp;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 279
    const-string v3, "state_carrossel_conta"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 280
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 282
    :cond_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 287
    :cond_3
    iget-object v0, p0, Lglp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 288
    const-string v3, "state_carrossel_conta"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 289
    const v3, 0x7f0204d3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 291
    :cond_4
    const v3, 0x7f0204f7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 295
    :cond_5
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lglp;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 124
    if-nez v1, :cond_1

    .line 125
    iget-object v0, p0, Lglp;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 126
    const v1, 0x7f040106

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 128
    iget-object v0, p0, Lglp;->c:Lgln;

    new-instance v2, Lglt;

    iget-object v3, p0, Lglp;->c:Lgln;

    invoke-direct {v2, v3, v4}, Lglt;-><init>(Lgln;Lglo;)V

    invoke-static {v0, v2}, Lgln;->a(Lgln;Lglt;)Lglt;

    .line 130
    iget-object v0, p0, Lglp;->c:Lgln;

    invoke-static {v0}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    const v0, 0x7f10059d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Lglt;->a(Lglt;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 131
    iget-object v0, p0, Lglp;->c:Lgln;

    invoke-static {v0}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    const v0, 0x7f100599

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lglt;->a(Lglt;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lglp;->c:Lgln;

    invoke-static {v0}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    const v0, 0x7f10059b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lglt;->b(Lglt;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lglp;->c:Lgln;

    invoke-static {v0}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    const v0, 0x7f10059a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lglt;->a(Lglt;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 134
    iget-object v0, p0, Lglp;->c:Lgln;

    invoke-static {v0}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    const v0, 0x7f10059c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v2, v0}, Lglt;->a(Lglt;Landroid/widget/Button;)Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lglp;->c:Lgln;

    invoke-static {v0}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    const v0, 0x7f100598

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v2, v0}, Lglt;->a(Lglt;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 136
    iget-object v0, p0, Lglp;->c:Lgln;

    invoke-static {v0}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    const v0, 0x7f1005a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lglt;->c(Lglt;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lglp;->c:Lgln;

    invoke-static {v0}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    const v0, 0x7f1005a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lglt;->d(Lglt;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lglp;->c:Lgln;

    invoke-static {v0}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    const v0, 0x7f1005a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lglt;->e(Lglt;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lglp;->c:Lgln;

    invoke-static {v0}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    const v0, 0x7f1005a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lglt;->f(Lglt;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lglp;->c:Lgln;

    invoke-static {v0}, Lgln;->b(Lgln;)Lglt;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    :goto_0
    iget-object v0, p0, Lglp;->d:Ljava/util/List;

    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    invoke-static {v2}, Lglt;->a(Lglt;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lglp;->e:Ljava/util/List;

    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    invoke-static {v2}, Lglt;->b(Lglt;)Landroid/widget/Button;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lglp;->f:Ljava/util/List;

    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    invoke-static {v2}, Lglt;->c(Lglt;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lglp;->c:Lgln;

    invoke-static {v0}, Lgln;->b(Lgln;)Lglt;

    move-result-object v0

    invoke-static {v0}, Lglt;->b(Lglt;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->c(Lgln;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0906d1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lglp;->c:Lgln;

    invoke-static {v0}, Lgln;->c(Lgln;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "ContaPreferences"

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 157
    const-string v3, "state_carrossel_conta"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lglp;->c:Lgln;

    invoke-static {v0}, Lgln;->d(Lgln;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lglp;->c:Lgln;

    invoke-static {v0, v5}, Lgln;->a(Lgln;Z)Z

    .line 163
    :goto_1
    invoke-direct {p0}, Lglp;->c()V

    .line 166
    :cond_0
    iget-object v0, p0, Lglp;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 168
    iget-object v3, p0, Lglp;->c:Lgln;

    invoke-static {v3}, Lgln;->b(Lgln;)Lglt;

    move-result-object v3

    invoke-static {v3}, Lglt;->d(Lglt;)Landroid/widget/RelativeLayout;

    move-result-object v3

    new-instance v4, Lglq;

    invoke-direct {v4, p0, v2}, Lglq;-><init>(Lglp;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    invoke-static {v2}, Lglt;->a(Lglt;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Lglr;

    invoke-direct {v3, p0}, Lglr;-><init>(Lglp;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    invoke-static {v2}, Lglt;->b(Lglt;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lgls;

    invoke-direct {v3, p0}, Lgls;-><init>(Lglp;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    invoke-static {v2}, Lglt;->e(Lglt;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    invoke-static {v2}, Lglt;->f(Lglt;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    invoke-static {v2}, Lglt;->f(Lglt;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x19

    const/16 v4, 0x23

    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 207
    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    invoke-static {v2}, Lglt;->c(Lglt;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 208
    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    invoke-static {v2}, Lglt;->g(Lglt;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lglp;->a:Landroid/content/Context;

    const v4, 0x7f0906d2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    invoke-static {v2}, Lglt;->h(Lglt;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getExtractoHome()Lfuy;

    move-result-object v3

    invoke-virtual {v3}, Lfuy;->u()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    invoke-static {v2}, Lglt;->i(Lglt;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lglp;->a:Landroid/content/Context;

    const v4, 0x7f0906d3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-static {v2}, Lgln;->b(Lgln;)Lglt;

    move-result-object v2

    invoke-static {v2}, Lglt;->j(Lglt;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 215
    return-object v1

    .line 144
    :cond_1
    iget-object v2, p0, Lglp;->c:Lgln;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lglt;

    invoke-static {v2, v0}, Lgln;->a(Lgln;Lglt;)Lglt;

    goto/16 :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lglp;->c:Lgln;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lgln;->a(Lgln;Z)Z

    goto/16 :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 304
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
