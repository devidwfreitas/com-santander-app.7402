.class public Lneu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/widget/BottomExapandableView;


# direct methods
.method public constructor <init>(Lcom/santander/app/widget/BottomExapandableView;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lneu;->a:Lcom/santander/app/widget/BottomExapandableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lneu;->a:Lcom/santander/app/widget/BottomExapandableView;

    invoke-static {v0}, Lcom/santander/app/widget/BottomExapandableView;->a(Lcom/santander/app/widget/BottomExapandableView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lneu;->a:Lcom/santander/app/widget/BottomExapandableView;

    invoke-static {v0, v2}, Lcom/santander/app/widget/BottomExapandableView;->a(Lcom/santander/app/widget/BottomExapandableView;Z)Z

    .line 106
    iget-object v0, p0, Lneu;->a:Lcom/santander/app/widget/BottomExapandableView;

    invoke-static {v0}, Lcom/santander/app/widget/BottomExapandableView;->b(Lcom/santander/app/widget/BottomExapandableView;)V

    .line 107
    iget-object v0, p0, Lneu;->a:Lcom/santander/app/widget/BottomExapandableView;

    invoke-static {v0, v2}, Lcom/santander/app/widget/BottomExapandableView;->b(Lcom/santander/app/widget/BottomExapandableView;Z)V

    .line 108
    iget-object v0, p0, Lneu;->a:Lcom/santander/app/widget/BottomExapandableView;

    invoke-static {v0}, Lcom/santander/app/widget/BottomExapandableView;->c(Lcom/santander/app/widget/BottomExapandableView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lneu;->a:Lcom/santander/app/widget/BottomExapandableView;

    invoke-static {v0}, Lcom/santander/app/widget/BottomExapandableView;->d(Lcom/santander/app/widget/BottomExapandableView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 110
    iget-object v0, p0, Lneu;->a:Lcom/santander/app/widget/BottomExapandableView;

    invoke-static {v0}, Lcom/santander/app/widget/BottomExapandableView;->e(Lcom/santander/app/widget/BottomExapandableView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lneu;->a:Lcom/santander/app/widget/BottomExapandableView;

    invoke-static {v0}, Lcom/santander/app/widget/BottomExapandableView;->f(Lcom/santander/app/widget/BottomExapandableView;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->d()V

    .line 122
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lneu;->a:Lcom/santander/app/widget/BottomExapandableView;

    invoke-static {v0, v1}, Lcom/santander/app/widget/BottomExapandableView;->a(Lcom/santander/app/widget/BottomExapandableView;Z)Z

    .line 115
    iget-object v0, p0, Lneu;->a:Lcom/santander/app/widget/BottomExapandableView;

    invoke-static {v0}, Lcom/santander/app/widget/BottomExapandableView;->g(Lcom/santander/app/widget/BottomExapandableView;)V

    .line 116
    iget-object v0, p0, Lneu;->a:Lcom/santander/app/widget/BottomExapandableView;

    invoke-static {v0, v1}, Lcom/santander/app/widget/BottomExapandableView;->b(Lcom/santander/app/widget/BottomExapandableView;Z)V

    .line 117
    iget-object v0, p0, Lneu;->a:Lcom/santander/app/widget/BottomExapandableView;

    invoke-static {v0}, Lcom/santander/app/widget/BottomExapandableView;->c(Lcom/santander/app/widget/BottomExapandableView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lneu;->a:Lcom/santander/app/widget/BottomExapandableView;

    invoke-static {v0}, Lcom/santander/app/widget/BottomExapandableView;->d(Lcom/santander/app/widget/BottomExapandableView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p0, Lneu;->a:Lcom/santander/app/widget/BottomExapandableView;

    invoke-static {v0}, Lcom/santander/app/widget/BottomExapandableView;->e(Lcom/santander/app/widget/BottomExapandableView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lneu;->a:Lcom/santander/app/widget/BottomExapandableView;

    invoke-static {v0}, Lcom/santander/app/widget/BottomExapandableView;->f(Lcom/santander/app/widget/BottomExapandableView;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->c()V

    goto :goto_0
.end method
