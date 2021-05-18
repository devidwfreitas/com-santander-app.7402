.class public Lieq;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Liet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Liet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lieq;->b:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lieq;->c:Ljava/util/ArrayList;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lieq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lieq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 50
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    .line 57
    if-nez p2, :cond_1

    .line 58
    iget-object v0, p0, Lieq;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lieq;->a:Landroid/view/LayoutInflater;

    .line 59
    iget-object v0, p0, Lieq;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f040304

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance v1, Lies;

    invoke-direct {v1, v2}, Lies;-><init>(Lier;)V

    .line 62
    const v0, 0x7f100fbf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lies;->a:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f100fc0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lies;->b:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f100fc1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lies;->c:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    iget-object v0, p0, Lieq;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lieq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liet;

    invoke-virtual {v0}, Liet;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SUBTOTAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 74
    iget-object v2, v1, Lies;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lieq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liet;

    invoke-virtual {v0}, Liet;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, v1, Lies;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lieq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liet;

    invoke-virtual {v0}, Liet;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lieq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liet;

    invoke-virtual {v0}, Liet;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lieq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liet;

    invoke-virtual {v0}, Liet;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 79
    iget-object v1, v1, Lies;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lieq;->c:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liet;

    invoke-virtual {v0}, Liet;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    .line 79
    invoke-static {v1, v0, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_1
    return-object p2

    .line 69
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lies;

    move-object v1, v0

    goto :goto_0

    .line 83
    :cond_2
    iget-object v1, v1, Lies;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lieq;->c:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liet;

    invoke-virtual {v0}, Liet;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lieq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liet;

    invoke-virtual {v0}, Liet;->d()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v1, v2, v0}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_3
    iget-object v0, v1, Lies;->c:Landroid/widget/TextView;

    const-string v1, "R$0,00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 93
    :cond_4
    iget-object v0, v1, Lies;->a:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v2, v1, Lies;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lieq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liet;

    invoke-virtual {v0}, Liet;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lieq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liet;

    invoke-virtual {v0}, Liet;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 97
    iget-object v0, p0, Lieq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liet;

    invoke-virtual {v0}, Liet;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 98
    iget-object v1, v1, Lies;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lieq;->c:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liet;

    invoke-virtual {v0}, Liet;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    .line 98
    invoke-static {v1, v0, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_5
    iget-object v1, v1, Lies;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lieq;->c:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liet;

    invoke-virtual {v0}, Liet;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lieq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liet;

    invoke-virtual {v0}, Liet;->d()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v1, v2, v0}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 107
    :cond_6
    iget-object v0, v1, Lies;->c:Landroid/widget/TextView;

    const-string v1, "R$0,00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
