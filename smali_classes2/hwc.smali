.class public Lhwc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhwb;


# static fields
.field private static final c:I = 0x1

.field private static final d:I = 0x2


# instance fields
.field private a:Lhvv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private b:Lhuz;

.field private e:I

.field private f:Landroid/text/Spanned;

.field private g:Lhxh;

.field private h:Z


# direct methods
.method public constructor <init>(Lhvv;)V
    .locals 1
    .param p1    # Lhvv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lhwc;->a:Lhvv;

    .line 50
    new-instance v0, Lhve;

    invoke-direct {v0}, Lhve;-><init>()V

    iput-object v0, p0, Lhwc;->b:Lhuz;

    .line 51
    invoke-static {}, Lhxh;->h()Lhxh;

    move-result-object v0

    iput-object v0, p0, Lhwc;->g:Lhxh;

    .line 52
    return-void
.end method

.method static synthetic a(Lhwc;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lhwc;->e:I

    return p1
.end method

.method static synthetic a(Lhwc;Landroid/text/Spanned;)Landroid/text/Spanned;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lhwc;->f:Landroid/text/Spanned;

    return-object p1
.end method

.method static synthetic a(Lhwc;)Lhvv;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lhwc;->a:Lhvv;

    return-object v0
.end method

.method static synthetic a(Lhwc;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lhwc;->b(Z)V

    return-void
.end method

.method static synthetic b(Lhwc;)Lhuz;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lhwc;->b:Lhuz;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lhwc;->a:Lhvv;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lhwc;->a:Lhvv;

    invoke-interface {v0}, Lhvv;->c()V

    .line 77
    iget-object v0, p0, Lhwc;->b:Lhuz;

    new-instance v1, Lhwd;

    invoke-direct {v1, p0}, Lhwd;-><init>(Lhwc;)V

    invoke-interface {v0, p1, v1}, Lhuz;->a(ZLhva;)V

    .line 95
    iget-object v0, p0, Lhwc;->b:Lhuz;

    invoke-interface {v0}, Lhuz;->a()Lhxn;

    move-result-object v0

    invoke-static {v0, p1}, Lhxi;->b(Lhxn;Z)V

    goto :goto_0
.end method

.method static synthetic c(Lhwc;)I
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lhwc;->f()I

    move-result v0

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lhwc;->a:Lhvv;

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lhwc;->a:Lhvv;

    invoke-interface {v0}, Lhvv;->c()V

    .line 148
    iget-object v0, p0, Lhwc;->b:Lhuz;

    new-instance v1, Lhwf;

    invoke-direct {v1, p0}, Lhwf;-><init>(Lhwc;)V

    invoke-interface {v0, v1}, Lhuz;->a(Lhvd;)V

    goto :goto_0
.end method

.method private f()I
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lhwc;->b:Lhuz;

    invoke-interface {v0}, Lhuz;->a()Lhxn;

    move-result-object v0

    .line 250
    invoke-interface {v0}, Lhxn;->s()Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    invoke-interface {v0}, Lhxn;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const v0, 0x7f09030c

    .line 257
    :goto_0
    return v0

    .line 254
    :cond_0
    const v0, 0x7f09030d

    goto :goto_0

    .line 257
    :cond_1
    const v0, 0x7f0908a5

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lhwc;->a:Lhvv;

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lhwc;->e:I

    .line 59
    iget-object v0, p0, Lhwc;->b:Lhuz;

    invoke-interface {v0}, Lhuz;->a()Lhxn;

    move-result-object v0

    invoke-interface {v0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lhwc;->a:Lhvv;

    invoke-interface {v0}, Lhvv;->g()V

    .line 64
    :goto_1
    invoke-direct {p0}, Lhwc;->e()V

    .line 65
    iget-object v0, p0, Lhwc;->g:Lhxh;

    invoke-virtual {v0}, Lhxh;->b()V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lhwc;->a:Lhvv;

    invoke-interface {v0}, Lhvv;->h()V

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 199
    iget-object v0, p0, Lhwc;->a:Lhvv;

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 201
    :cond_0
    iget v0, p0, Lhwc;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 202
    invoke-direct {p0, v4}, Lhwc;->b(Z)V

    .line 203
    iput v4, p0, Lhwc;->e:I

    .line 204
    iget-object v0, p0, Lhwc;->a:Lhvv;

    invoke-interface {v0}, Lhvv;->a()V

    .line 205
    iget-object v0, p0, Lhwc;->a:Lhvv;

    invoke-direct {p0}, Lhwc;->f()I

    move-result v1

    invoke-interface {v0, v1}, Lhvv;->a(I)V

    goto :goto_0

    .line 208
    :cond_1
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lbfj;

    const v2, 0x7f090aab

    .line 209
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lbfj;-><init>(Ljava/lang/CharSequence;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lhwc;->f:Landroid/text/Spanned;

    .line 211
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a53

    new-instance v2, Lhwi;

    invoke-direct {v2, p0}, Lhwi;-><init>(Lhwc;)V

    .line 212
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a52

    new-instance v2, Lhwh;

    invoke-direct {v2, p0}, Lhwh;-><init>(Lhwc;)V

    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 236
    new-instance v1, Lhwj;

    invoke-direct {v1, p0, p1}, Lhwj;-><init>(Lhwc;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 245
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lhuw;
        .end annotation
    .end param

    .prologue
    .line 170
    iget-object v0, p0, Lhwc;->a:Lhvv;

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string v0, "cpu_cet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lhwc;->a:Lhvv;

    iget-object v1, p0, Lhwc;->b:Lhuz;

    invoke-interface {v1}, Lhuz;->a()Lhxn;

    move-result-object v1

    invoke-interface {v0, v1}, Lhvv;->b(Lhxn;)V

    .line 194
    :goto_1
    iget-object v0, p0, Lhwc;->b:Lhuz;

    invoke-interface {v0}, Lhuz;->a()Lhxn;

    move-result-object v0

    invoke-static {v0, p1}, Lhxi;->c(Lhxn;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lhwc;->a:Lhvv;

    invoke-interface {v0}, Lhvv;->c()V

    .line 176
    iget-object v0, p0, Lhwc;->b:Lhuz;

    new-instance v1, Lhwg;

    invoke-direct {v1, p0}, Lhwg;-><init>(Lhwc;)V

    invoke-interface {v0, p1, v1}, Lhuz;->a(Ljava/lang/String;Lhvc;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 113
    iput-boolean p1, p0, Lhwc;->h:Z

    .line 114
    iget-object v0, p0, Lhwc;->b:Lhuz;

    invoke-interface {v0}, Lhuz;->a()Lhxn;

    move-result-object v0

    iget-boolean v1, p0, Lhwc;->h:Z

    invoke-static {v0, v1}, Lhxi;->a(Lhxn;Z)V

    .line 115
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lhwc;->a:Lhvv;

    .line 71
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lhwc;->a:Lhvv;

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-boolean v0, p0, Lhwc;->h:Z

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lhwc;->g:Lhxh;

    invoke-virtual {v0}, Lhxh;->a()V

    .line 104
    iget-object v0, p0, Lhwc;->a:Lhvv;

    invoke-interface {v0}, Lhvv;->i()V

    .line 105
    iget-object v0, p0, Lhwc;->b:Lhuz;

    invoke-interface {v0}, Lhuz;->a()Lhxn;

    move-result-object v0

    invoke-static {v0}, Lhxi;->e(Lhxn;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lhwc;->a:Lhvv;

    invoke-interface {v0}, Lhvv;->f()V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lhwc;->a:Lhvv;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lhwc;->a:Lhvv;

    invoke-interface {v0}, Lhvv;->c()V

    .line 122
    iget-object v0, p0, Lhwc;->b:Lhuz;

    new-instance v1, Lhwe;

    invoke-direct {v1, p0}, Lhwe;-><init>(Lhwc;)V

    invoke-interface {v0, v1}, Lhuz;->a(Lhvb;)V

    goto :goto_0
.end method
