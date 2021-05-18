.class public Lndx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lndw;


# instance fields
.field private a:Lndb;

.field private b:Lnbf;

.field private c:Lnbo;

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lndb;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x4

    iput v0, p0, Lndx;->d:I

    .line 34
    const-string v0, "*"

    iput-object v0, p0, Lndx;->e:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lndx;->a:Lndb;

    .line 38
    new-instance v0, Lnbg;

    invoke-direct {v0, p0, p2}, Lnbg;-><init>(Lndw;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lndx;->b:Lnbf;

    .line 39
    new-instance v0, Lnbp;

    invoke-direct {v0, p0, p2}, Lnbp;-><init>(Lndw;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lndx;->c:Lnbo;

    .line 40
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lndx;->b:Lnbf;

    invoke-interface {v0}, Lnbf;->a()V

    .line 71
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 140
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0, p1}, Lndb;->a(I)V

    .line 141
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lmip;)V
    .locals 3

    .prologue
    .line 44
    invoke-interface {p3}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    .line 45
    invoke-interface {p3}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->c()Live;

    move-result-object v1

    .line 47
    invoke-interface {p3}, Lmip;->r()Z

    move-result v2

    if-nez v2, :cond_2

    .line 48
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Live;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 49
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0, p1, p2}, Lndb;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0, p1, p2}, Lndb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 54
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Live;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 55
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0, p1, p2}, Lndb;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 56
    :cond_3
    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0, p1, p2}, Lndb;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0, p1}, Lndb;->a(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method

.method public a(Lftz;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0, p1}, Lndb;->a(Lftz;)V

    .line 136
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0, p1}, Lndb;->a(Ljava/lang/Integer;)V

    .line 173
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0, p1}, Lndb;->a(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 145
    invoke-static {p1, v2}, Lmzv;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lndx;->a:Lndb;

    invoke-interface {v1, v0}, Lndb;->c(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lndx;->b:Lnbf;

    invoke-interface {v1, p2}, Lnbf;->a(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 150
    iget-object v0, p0, Lndx;->a:Lndb;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lndb;->a(Z)V

    .line 153
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0, p1}, Lndb;->a(Z)V

    .line 66
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0, p1}, Lndb;->a([Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0}, Lndb;->d()V

    .line 96
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0, p1}, Lndb;->b(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0, p1}, Lndb;->b(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0}, Lndb;->e()V

    .line 101
    return-void
.end method

.method public c(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0, p1}, Lndb;->c(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0, p1}, Lndb;->c(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0}, Lndb;->f()V

    .line 106
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0}, Lndb;->g()V

    .line 111
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0}, Lndb;->c()V

    .line 131
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lndx;->c:Lnbo;

    invoke-interface {v0}, Lnbo;->a()V

    .line 163
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lndx;->a:Lndb;

    invoke-interface {v0}, Lndb;->h()V

    .line 178
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lndx;->b:Lnbf;

    invoke-interface {v0}, Lnbf;->b()V

    .line 76
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lndx;->c:Lnbo;

    invoke-interface {v0}, Lnbo;->b()V

    .line 168
    return-void
.end method
