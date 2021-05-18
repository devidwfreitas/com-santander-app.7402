.class public Lhir;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgkx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lgkx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lhir;->a:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lhir;->b:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public a(I)Lgkx;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lhir;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgkx;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lhir;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lhir;->a(I)Lgkx;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    .line 53
    if-nez p2, :cond_0

    .line 54
    iget-object v0, p0, Lhir;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402a8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 56
    const v0, 0x7f100e16

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    const v0, 0x7f100e17

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 58
    const v0, 0x7f100e19

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 59
    const v0, 0x7f100e1a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 60
    const v0, 0x7f100e1c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 61
    const v0, 0x7f100e1d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 63
    const v0, 0x7f100e12

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 65
    const v0, 0x7f100e1b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 66
    const v0, 0x7f100e14

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 68
    new-instance v0, Lhis;

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lhis;-><init>(Lhir;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :goto_0
    invoke-virtual {p0, p1}, Lhir;->a(I)Lgkx;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lgkx;->b()I

    move-result v0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_2

    .line 87
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 88
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 90
    invoke-virtual {v1}, Lgkx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgky;

    invoke-virtual {v0}, Lgky;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_1
    return-object p2

    .line 70
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhis;

    .line 71
    iget-object v2, v0, Lhis;->a:Landroid/widget/TextView;

    .line 72
    iget-object v3, v0, Lhis;->b:Landroid/widget/TextView;

    .line 73
    iget-object v4, v0, Lhis;->c:Landroid/widget/TextView;

    .line 74
    iget-object v5, v0, Lhis;->d:Landroid/widget/TextView;

    .line 75
    iget-object v6, v0, Lhis;->e:Landroid/widget/TextView;

    .line 76
    iget-object v7, v0, Lhis;->f:Landroid/widget/TextView;

    .line 78
    iget-object v8, v0, Lhis;->g:Landroid/widget/TextView;

    .line 80
    iget-object v9, v0, Lhis;->h:Landroid/widget/RelativeLayout;

    .line 81
    iget-object v10, v0, Lhis;->i:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 95
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 99
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 100
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    invoke-virtual {v1}, Lgkx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgky;

    invoke-virtual {v0}, Lgky;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgky;

    invoke-virtual {v0}, Lgky;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgky;

    invoke-virtual {v0}, Lgky;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v1}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgky;

    invoke-virtual {v0}, Lgky;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
