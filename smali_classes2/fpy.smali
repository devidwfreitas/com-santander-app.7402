.class public Lfpy;
.super Lfom;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfpj;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Lfpj;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lfom;-><init>()V

    .line 34
    iput-object v0, p0, Lfpy;->b:Ljava/util/Vector;

    .line 35
    iput-object v0, p0, Lfpy;->c:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lfpy;->c:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lfpy;->b:Ljava/util/Vector;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lnez;)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p3, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 45
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lfpy;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 59
    .line 61
    iget-object v0, p0, Lfpy;->b:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpj;

    invoke-virtual {v0}, Lfpj;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lfpy;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040286

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    const v1, 0x7f100d91

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    const v2, 0x7f100d92

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 66
    const v3, 0x7f100d93

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 67
    const v4, 0x7f100d94

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 68
    const v5, 0x7f100d95

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 69
    const v6, 0x7f100d96

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 71
    iget-object v7, p0, Lfpy;->b:Ljava/util/Vector;

    invoke-virtual {v7, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfpj;

    invoke-virtual {v7}, Lfpj;->a()Lftl;

    move-result-object v7

    .line 80
    invoke-virtual {v7}, Lftl;->c()Lftj;

    move-result-object v8

    invoke-virtual {v8}, Lftj;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lftl;->c()Lftj;

    move-result-object v9

    invoke-virtual {v9}, Lftj;->d()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v7}, Lftl;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v7}, Lftl;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v7}, Lftl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v7}, Lftl;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v7}, Lftl;->c()Lftj;

    move-result-object v1

    invoke-virtual {v1}, Lftj;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 96
    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lfpy;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 90
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040285

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 101
    check-cast p2, Landroid/widget/LinearLayout;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
