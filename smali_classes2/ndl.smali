.class Lndl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lndk;


# direct methods
.method constructor <init>(Lndk;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lndl;->b:Lndk;

    iput-object p2, p0, Lndl;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 44
    const v0, 0x7f100485

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lndl;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    new-instance v0, Lndy;

    invoke-direct {v0}, Lndy;-><init>()V

    iget-object v1, p0, Lndl;->b:Lndk;

    invoke-static {v1}, Lndk;->a(Lndk;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lndy;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lndl;->b:Lndk;

    invoke-static {v0}, Lndk;->b(Lndk;)Lnbu;

    move-result-object v0

    invoke-interface {v0}, Lnbu;->b()V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lndl;->b:Lndk;

    invoke-static {v0}, Lndk;->b(Lndk;)Lnbu;

    move-result-object v0

    invoke-interface {v0}, Lnbu;->c()V

    goto :goto_0

    .line 56
    :cond_2
    iget-object v1, p0, Lndl;->a:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lndl;->b:Lndk;

    invoke-static {v0}, Lndk;->b(Lndk;)Lnbu;

    move-result-object v0

    invoke-interface {v0}, Lnbu;->a()V

    goto :goto_0
.end method
