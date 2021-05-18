.class public Lltz;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llub;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvp;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lluc;

.field private c:[Ljava/lang/String;

.field private d:Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/support/v7/app/AppCompatActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvp;",
            ">;",
            "Landroid/support/v7/app/AppCompatActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lltz;->a:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lltz;->d:Landroid/support/v7/app/AppCompatActivity;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llub;
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040356

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    new-instance v1, Llub;

    invoke-direct {v1, p0, v0}, Llub;-><init>(Lltz;Landroid/view/View;)V

    return-object v1
.end method

.method public a()Lluc;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lltz;->b:Lluc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lltz;->b:Lluc;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Llub;I)V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lltz;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvp;

    .line 47
    invoke-static {p1}, Llub;->a(Llub;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Llua;

    invoke-direct {v2, p0, v0}, Llua;-><init>(Lltz;Lkvp;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-static {p1}, Llub;->b(Llub;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkvp;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v0}, Lkvp;->e()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {p1}, Llub;->c(Llub;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkvp;->e()Ljava/util/Date;

    move-result-object v2

    const-string v3, "dd/MM"

    invoke-static {v2, v3}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :goto_0
    invoke-static {p1}, Llub;->d(Llub;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkvp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v0}, Lkvp;->f()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 63
    invoke-static {p1}, Llub;->e(Llub;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkvp;->f()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_1
    invoke-static {p1}, Llub;->f(Llub;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkvp;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void

    .line 59
    :cond_0
    invoke-static {p1}, Llub;->c(Llub;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p1}, Llub;->e(Llub;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public a(Lluc;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lltz;->b:Lluc;

    .line 114
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lltz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Llub;

    invoke-virtual {p0, p1, p2}, Lltz;->a(Llub;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lltz;->a(Landroid/view/ViewGroup;I)Llub;

    move-result-object v0

    return-object v0
.end method
