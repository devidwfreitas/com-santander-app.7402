.class public Lfon;
.super Lfom;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lfvw;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lnez;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/santander/app/components/view/FontFitTextView;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lfvw;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lfom;-><init>()V

    .line 31
    iput-object v0, p0, Lfon;->a:Ljava/util/List;

    .line 32
    iput-object v0, p0, Lfon;->b:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lfon;->c:Lnez;

    .line 39
    iput-object p1, p0, Lfon;->b:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lfon;->a:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 160
    iget-object v0, p0, Lfon;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lfon;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    iget-boolean v0, p0, Lfon;->f:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lfon;->e:Lcom/santander/app/components/view/FontFitTextView;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lfon;->e:Lcom/santander/app/components/view/FontFitTextView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/FontFitTextView;->setVisibility(I)V

    .line 170
    :cond_0
    return-void
.end method

.method public a(Lnez;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lfon;->c:Lnez;

    .line 50
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lfon;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lfon;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    iget-boolean v0, p0, Lfon;->f:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lfon;->e:Lcom/santander/app/components/view/FontFitTextView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lfon;->e:Lcom/santander/app/components/view/FontFitTextView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/FontFitTextView;->setVisibility(I)V

    .line 182
    :cond_0
    return-void
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lfon;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 197
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 59
    .line 61
    iget-object v0, p0, Lfon;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040130

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 63
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v1, 0x7f100635

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    iget-object v2, p0, Lfon;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfvw;

    invoke-virtual {v2}, Lfvw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v1, 0x7f100636

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    iget-object v2, p0, Lfon;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfvw;

    invoke-virtual {v2}, Lfvw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v1, 0x7f100639

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 73
    const v2, 0x7f100637

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lfon;->d:Landroid/widget/LinearLayout;

    .line 76
    const v2, 0x7f1005aa

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 77
    const v3, 0x7f1005ae

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 78
    const v4, 0x7f10063b

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 80
    iget-object v5, p0, Lfon;->b:Landroid/content/Context;

    const-string v6, "CartaoPreferences"

    invoke-virtual {v5, v6, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 82
    const v5, 0x7f10062e

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 84
    const v6, 0x7f10063a

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/santander/app/components/view/FontFitTextView;

    iput-object v6, p0, Lfon;->e:Lcom/santander/app/components/view/FontFitTextView;

    .line 86
    iget-object v6, p0, Lfon;->a:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfvw;

    invoke-virtual {v6}, Lfvw;->u()Ljava/lang/String;

    move-result-object v6

    const-string v8, "BE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lfon;->f:Z

    .line 89
    iget-object v6, p0, Lfon;->a:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfvw;

    invoke-virtual {v6}, Lfvw;->u()Ljava/lang/String;

    move-result-object v6

    const-string v8, "TI"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 91
    iget-object v6, p0, Lfon;->a:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfvw;

    invoke-virtual {v6}, Lfvw;->z()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 93
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 95
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    :cond_0
    :goto_0
    iget-object v1, p0, Lfon;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 143
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v10}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 145
    const-string v1, "limite_cartao_state"

    invoke-interface {v7, v1, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 146
    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 147
    invoke-virtual {p0}, Lfon;->a()V

    .line 155
    :cond_1
    :goto_1
    return-object v0

    .line 100
    :cond_2
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    iget-object v2, p0, Lfon;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfvw;

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saldo parcial da fatura: \n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 107
    invoke-virtual {v2}, Lfvw;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v2, 0x7f100638

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 111
    iget-object v3, p0, Lfon;->a:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfvw;

    invoke-virtual {v3}, Lfvw;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UNLIMITED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    const-string v2, "Unlimited"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    :cond_3
    const-string v3, "Limite dispon\u00edvel:"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v2, p0, Lfon;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfvw;

    invoke-virtual {v2}, Lfvw;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 122
    :cond_4
    iget-object v1, p0, Lfon;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfvw;

    invoke-virtual {v1}, Lfvw;->u()Ljava/lang/String;

    move-result-object v1

    const-string v5, "BE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lfon;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfvw;

    invoke-virtual {v1}, Lfvw;->z()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 126
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 131
    :cond_5
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 150
    :cond_6
    iget-object v1, p0, Lfon;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfvw;

    invoke-virtual {v1}, Lfvw;->z()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 151
    invoke-virtual {p0}, Lfon;->b()V

    goto/16 :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 186
    check-cast p2, Landroid/widget/LinearLayout;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lfon;->c:Lnez;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lfon;->c:Lnez;

    iget-object v1, p0, Lfon;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Lnez;->a(I)V

    .line 194
    :cond_0
    return-void
.end method
