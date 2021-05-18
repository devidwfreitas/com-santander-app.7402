.class public Lfor;
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
            "Lfuu;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lnez;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lfom;-><init>()V

    .line 33
    iput-object v0, p0, Lfor;->a:Ljava/util/List;

    .line 34
    iput-object v0, p0, Lfor;->b:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lfor;->c:Lnez;

    .line 40
    iput-object p1, p0, Lfor;->b:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lfor;->a:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 125
    iget-object v0, p0, Lfor;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfor;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lfor;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lfor;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 130
    :cond_0
    return-void
.end method

.method public a(Lnez;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lfor;->c:Lnez;

    .line 51
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lfor;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfor;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lfor;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lfor;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lfor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 120
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 62
    iget-object v0, p0, Lfor;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040131

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 63
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v1, 0x7f10063e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lfor;->d:Landroid/widget/RelativeLayout;

    .line 66
    const v1, 0x7f100640

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lfor;->e:Landroid/widget/RelativeLayout;

    .line 68
    iget-object v1, p0, Lfor;->b:Landroid/content/Context;

    const-string v2, "SaldoPreferences"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 70
    const v1, 0x7f100635

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    const-string v2, "Conta Santander"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v1, 0x7f100636

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    iget-object v2, p0, Lfor;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfuu;

    invoke-virtual {v2}, Lfuu;->getAgencia()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lfor;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfuu;

    invoke-virtual {v2}, Lfuu;->getCuenta()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v2

    iget-object v1, p0, Lfor;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuu;

    invoke-virtual {v1}, Lfuu;->getAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lhau;->b(Ljava/lang/String;)V

    .line 78
    const v1, 0x7f100639

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    iget-object v2, p0, Lfor;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfuu;

    invoke-virtual {v2}, Lfuu;->getExtractoHome()Lfuy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lfor;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfuu;

    invoke-virtual {v2}, Lfuu;->getExtractoHome()Lfuy;

    move-result-object v2

    invoke-virtual {v2}, Lfuy;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    const v1, 0x7f10062e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    iget-object v2, p0, Lfor;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfuu;

    invoke-virtual {v2}, Lfuu;->getValor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lfor;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 92
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v5}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 94
    const-string v1, "saldo_state"

    invoke-interface {v3, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 95
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 97
    invoke-virtual {p0}, Lfor;->a()V

    .line 104
    :goto_0
    return-object v0

    .line 101
    :cond_1
    invoke-virtual {p0}, Lfor;->b()V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 109
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
    .line 114
    iget-object v0, p0, Lfor;->c:Lnez;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lfor;->c:Lnez;

    iget-object v1, p0, Lfor;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Lnez;->a(I)V

    .line 117
    :cond_0
    return-void
.end method
