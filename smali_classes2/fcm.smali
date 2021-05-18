.class public Lfcm;
.super Lcom/ca/android/app/CaListActivity;
.source "SourceFile"

# interfaces
.implements Lfci;


# instance fields
.field private a:Lfcj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ca/android/app/CaListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lfcm;->a:Lfcj;

    invoke-virtual {v0}, Lfcj;->a()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lfcm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfcm;->setBehindContentView(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lfcm;->a:Lfcj;

    invoke-virtual {v0, p1, p2}, Lfcj;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lfcm;->a:Lfcj;

    invoke-virtual {v0, p1}, Lfcj;->a(Z)V

    .line 145
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lfcm;->a:Lfcj;

    invoke-virtual {v0}, Lfcj;->b()V

    .line 116
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lfcm;->a:Lfcj;

    invoke-virtual {v0}, Lfcj;->c()V

    .line 123
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lfcm;->a:Lfcj;

    invoke-virtual {v0}, Lfcj;->d()V

    .line 130
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lfcm;->a:Lfcj;

    invoke-virtual {v0}, Lfcj;->e()V

    .line 138
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/ca/android/app/CaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lfcm;->a:Lfcj;

    invoke-virtual {v0, p1}, Lfcj;->a(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/ca/android/app/CaListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    new-instance v0, Lfcj;

    invoke-direct {v0, p0}, Lfcj;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lfcm;->a:Lfcj;

    .line 23
    iget-object v0, p0, Lfcm;->a:Lfcj;

    invoke-virtual {v0, p1}, Lfcj;->a(Landroid/os/Bundle;)V

    .line 24
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 25
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 26
    invoke-virtual {p0, v0}, Lfcm;->setContentView(Landroid/view/View;)V

    .line 27
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lfcm;->a:Lfcj;

    invoke-virtual {v0, p1, p2}, Lfcj;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ca/android/app/CaListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/ca/android/app/CaListActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 35
    iget-object v0, p0, Lfcm;->a:Lfcj;

    invoke-virtual {v0, p1}, Lfcj;->b(Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/ca/android/app/CaListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lfcm;->a:Lfcj;

    invoke-virtual {v0, p1}, Lfcj;->c(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 94
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lfcm;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lfcm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfcm;->setContentView(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 71
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lfcm;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lcom/ca/android/app/CaListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v0, p0, Lfcm;->a:Lfcj;

    invoke-virtual {v0, p1, p2}, Lfcj;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    return-void
.end method
