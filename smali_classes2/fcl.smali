.class public Lfcl;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lfci;


# instance fields
.field private a:Lfcj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lfcl;->a:Lfcj;

    invoke-virtual {v0}, Lfcj;->a()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lfcl;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfcl;->setBehindContentView(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lfcl;->a:Lfcj;

    invoke-virtual {v0, p1, p2}, Lfcj;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lfcl;->a:Lfcj;

    invoke-virtual {v0, p1}, Lfcj;->a(Z)V

    .line 140
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lfcl;->a:Lfcj;

    invoke-virtual {v0}, Lfcj;->b()V

    .line 112
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lfcl;->a:Lfcj;

    invoke-virtual {v0}, Lfcj;->c()V

    .line 119
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lfcl;->a:Lfcj;

    invoke-virtual {v0}, Lfcj;->d()V

    .line 126
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lfcl;->a:Lfcj;

    invoke-virtual {v0}, Lfcj;->e()V

    .line 133
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lfcl;->a:Lfcj;

    invoke-virtual {v0, p1}, Lfcj;->a(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    new-instance v0, Lfcj;

    invoke-direct {v0, p0}, Lfcj;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lfcl;->a:Lfcj;

    .line 22
    iget-object v0, p0, Lfcl;->a:Lfcj;

    invoke-virtual {v0, p1}, Lfcj;->a(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lfcl;->a:Lfcj;

    invoke-virtual {v0, p1, p2}, Lfcj;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 31
    iget-object v0, p0, Lfcl;->a:Lfcj;

    invoke-virtual {v0, p1}, Lfcj;->b(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lfcl;->a:Lfcj;

    invoke-virtual {v0, p1}, Lfcj;->c(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 90
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lfcl;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lfcl;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfcl;->setContentView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 67
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lfcl;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v0, p0, Lfcl;->a:Lfcj;

    invoke-virtual {v0, p1, p2}, Lfcj;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void
.end method
