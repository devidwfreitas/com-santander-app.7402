.class public abstract Lcxb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcxa;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcxa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Bundle;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcxj;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcxp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcxp",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcxc;

    invoke-direct {v0, p0}, Lcxc;-><init>(Lcxb;)V

    iput-object v0, p0, Lcxb;->d:Lcxp;

    return-void
.end method

.method static synthetic a(Lcxb;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcxb;->b:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic a(Lcxb;Lcxa;)Lcxa;
    .locals 0

    iput-object p1, p0, Lcxb;->a:Lcxa;

    return-object p1
.end method

.method static synthetic a(Lcxb;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcxb;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcxb;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcxb;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcxj;

    invoke-interface {v0}, Lcxj;->a()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcxb;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;Lcxj;)V
    .locals 1

    iget-object v0, p0, Lcxb;->a:Lcxa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxb;->a:Lcxa;

    invoke-interface {p2, v0}, Lcxj;->a(Lcxa;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcxb;->c:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcxb;->c:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lcxb;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcxb;->b:Landroid/os/Bundle;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcxb;->b:Landroid/os/Bundle;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcxb;->d:Lcxp;

    invoke-virtual {p0, v0}, Lcxb;->a(Lcxp;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcxb;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method static a(Landroid/widget/FrameLayout;Lcon;)V
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v7, -0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcon;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lctp;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Lctp;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcon;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v5, 0x1020019

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setId(I)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcxg;

    invoke-direct {v3, v0, v1}, Lcxg;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcxb;)Lcxa;
    .locals 1

    iget-object v0, p0, Lcxb;->a:Lcxa;

    return-object v0
.end method

.method public static b(Landroid/widget/FrameLayout;)V
    .locals 1

    invoke-static {}, Lcon;->a()Lcon;

    move-result-object v0

    invoke-static {p0, v0}, Lcxb;->a(Landroid/widget/FrameLayout;Lcon;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcxf;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcxf;-><init>(Lcxb;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    invoke-direct {p0, p3, v0}, Lcxb;->a(Landroid/os/Bundle;Lcxj;)V

    iget-object v0, p0, Lcxb;->a:Lcxa;

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcxb;->a(Landroid/widget/FrameLayout;)V

    :cond_0
    return-object v2
.end method

.method public a()Lcxa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcxb;->a:Lcxa;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcxd;

    invoke-direct {v0, p0, p1, p2, p3}, Lcxd;-><init>(Lcxb;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-direct {p0, p3, v0}, Lcxb;->a(Landroid/os/Bundle;Lcxj;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcxe;

    invoke-direct {v0, p0, p1}, Lcxe;-><init>(Lcxb;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0}, Lcxb;->a(Landroid/os/Bundle;Lcxj;)V

    return-void
.end method

.method protected a(Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-static {p1}, Lcxb;->b(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method protected abstract a(Lcxp;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcxp",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcxh;

    invoke-direct {v1, p0}, Lcxh;-><init>(Lcxb;)V

    invoke-direct {p0, v0, v1}, Lcxb;->a(Landroid/os/Bundle;Lcxj;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcxb;->a:Lcxa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcxb;->a:Lcxa;

    invoke-interface {v0, p1}, Lcxa;->b(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcxb;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxb;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcxi;

    invoke-direct {v1, p0}, Lcxi;-><init>(Lcxb;)V

    invoke-direct {p0, v0, v1}, Lcxb;->a(Landroid/os/Bundle;Lcxj;)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcxb;->a:Lcxa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxb;->a:Lcxa;

    invoke-interface {v0}, Lcxa;->c()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcxb;->a(I)V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcxb;->a:Lcxa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxb;->a:Lcxa;

    invoke-interface {v0}, Lcxa;->d()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcxb;->a(I)V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcxb;->a:Lcxa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxb;->a:Lcxa;

    invoke-interface {v0}, Lcxa;->e()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcxb;->a(I)V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcxb;->a:Lcxa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxb;->a:Lcxa;

    invoke-interface {v0}, Lcxa;->f()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcxb;->a(I)V

    goto :goto_0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcxb;->a:Lcxa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxb;->a:Lcxa;

    invoke-interface {v0}, Lcxa;->g()V

    :cond_0
    return-void
.end method
