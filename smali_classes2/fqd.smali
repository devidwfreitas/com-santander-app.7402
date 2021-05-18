.class public Lfqd;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lfup;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfup;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lfup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    const v0, 0x7f040312

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 33
    iput-object p1, p0, Lfqd;->c:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lfqd;->a:Ljava/util/List;

    .line 35
    iput p2, p0, Lfqd;->b:I

    .line 36
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 46
    .line 49
    if-nez p2, :cond_1

    .line 50
    :try_start_0
    iget-object v0, p0, Lfqd;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 51
    iget v1, p0, Lfqd;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 53
    :try_start_1
    new-instance v0, Lfqe;

    invoke-direct {v0}, Lfqe;-><init>()V

    .line 54
    new-instance v1, Lfqe;

    invoke-direct {v1}, Lfqe;-><init>()V

    .line 55
    const v0, 0x7f100fe3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lfqe;->a(Lfqe;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 56
    const v0, 0x7f1004ea

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lfqe;->a(Lfqe;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 58
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfqe;

    .line 62
    iget-object v1, p0, Lfqd;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfup;

    invoke-static {v0, v1}, Lfqe;->a(Lfqe;Lfup;)Lfup;

    .line 64
    invoke-static {v0}, Lfqe;->b(Lfqe;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lfqe;->a(Lfqe;)Lfup;

    move-result-object v3

    invoke-virtual {v3}, Lfup;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {v0}, Lfqe;->c(Lfqe;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0}, Lfqe;->a(Lfqe;)Lfup;

    move-result-object v3

    invoke-virtual {v3}, Lfup;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 67
    invoke-static {v0}, Lfqe;->a(Lfqe;)Lfup;

    move-result-object v1

    invoke-virtual {v1}, Lfup;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-static {v0}, Lfqe;->c(Lfqe;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    move-object v0, v2

    .line 75
    :goto_2
    return-object v0

    .line 70
    :cond_0
    invoke-static {v0}, Lfqe;->c(Lfqe;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 73
    :goto_3
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 72
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    goto :goto_3

    :cond_1
    move-object v2, p2

    goto :goto_0
.end method
