.class public Lmte;
.super Lmso;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lmtq;


# instance fields
.field private b:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

.field private c:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

.field private d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

.field private e:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

.field private f:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

.field private g:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

.field private h:Lmvf;

.field private i:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lmso;-><init>()V

    return-void
.end method

.method static synthetic a(Lmte;)Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmte;->b:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    return-object v0
.end method

.method static synthetic b(Lmte;)Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmte;->c:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    return-object v0
.end method

.method static synthetic c(Lmte;)Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    return-object v0
.end method

.method static synthetic d(Lmte;)Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmte;->e:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    return-object v0
.end method

.method static synthetic e(Lmte;)Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmte;->f:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    return-object v0
.end method

.method static synthetic f(Lmte;)Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmte;->g:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    return-object v0
.end method

.method static synthetic g(Lmte;)Lmvf;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmte;->h:Lmvf;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lmte;->e:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->c()Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 88
    iget-object v0, p0, Lmte;->c:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b(I)V

    .line 89
    iget-object v0, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b(I)V

    .line 90
    iget-object v0, p0, Lmte;->f:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b(I)V

    .line 92
    invoke-direct {p0}, Lmte;->n()V

    .line 94
    invoke-direct {p0}, Lmte;->o()V

    .line 96
    new-instance v0, Lguj;

    invoke-direct {v0}, Lguj;-><init>()V

    .line 97
    iget-object v1, p0, Lmte;->g:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->c()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lguj;->a(Landroid/widget/EditText;)V

    .line 98
    iget-object v1, p0, Lmte;->g:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v1, v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Landroid/text/TextWatcher;)V

    .line 99
    iget-object v0, p0, Lmte;->g:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->c()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 100
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lmte;->f:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lnai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lmte;->f:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v1, v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lmte;->c:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0, p0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 134
    iget-object v0, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0, p0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 135
    iget-object v0, p0, Lmte;->e:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0, p0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 136
    iget-object v0, p0, Lmte;->f:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0, p0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 137
    iget-object v0, p0, Lmte;->g:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0, p0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 138
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    new-instance v1, Lmtg;

    invoke-direct {v1, p0}, Lmtg;-><init>(Lmte;)V

    iput-object v1, p0, Lmte;->i:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Landroid/text/TextWatcher;)V

    .line 162
    return-void
.end method


# virtual methods
.method public bridge synthetic a()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lmso;->a()V

    return-void
.end method

.method public bridge synthetic a(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-super {p0, p1}, Lmso;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lmso;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lmte;->b:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lmso;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic a(Z)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lmso;->a(Z)V

    return-void
.end method

.method public a([Ljava/lang/String;Lmrp;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, Lmte;->b:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a([Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lmte;->c:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {p2}, Lmrp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {p2}, Lmrp;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lmte;->e:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {p2}, Lmrp;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lmte;->f:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {p2}, Lmrp;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lmte;->g:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {p2}, Lmrp;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lmte;->b:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    new-instance v1, Lmth;

    invoke-direct {v1, p0}, Lmth;-><init>(Lmte;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Lmtp;)V

    .line 184
    iget-object v0, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {p0, v0, v2}, Lmte;->onFocusChange(Landroid/view/View;Z)V

    .line 185
    iget-object v0, p0, Lmte;->f:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {p0, v0, v2}, Lmte;->onFocusChange(Landroid/view/View;Z)V

    .line 186
    return-void
.end method

.method public bridge synthetic b()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lmso;->b()V

    return-void
.end method

.method public bridge synthetic b(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-super {p0, p1}, Lmso;->b(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lmte;->c:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lmso;->c()V

    return-void
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lmte;->b:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(I)V

    .line 191
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lmso;->d()V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lmte;->e:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public bridge synthetic e()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lmso;->e()V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lmte;->f:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lmte;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lmte;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->j()V

    .line 198
    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lmte;->g:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lmte;->a:Lmsy;

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lmte;->a:Lmsy;

    const v1, 0x7f090b62

    invoke-interface {v0, v1}, Lmsy;->setTitle(I)V

    .line 205
    iget-object v0, p0, Lmte;->e:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0, v2}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lmte;->f:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0, v2}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->setVisibility(I)V

    goto :goto_0
.end method

.method public h()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 211
    iget-object v0, p0, Lmte;->a:Lmsy;

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lmte;->a:Lmsy;

    const v1, 0x7f090b63

    invoke-interface {v0, v1}, Lmsy;->setTitle(I)V

    .line 214
    iget-object v0, p0, Lmte;->e:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0, v2}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lmte;->f:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0, v2}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->setVisibility(I)V

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    iget-object v1, p0, Lmte;->i:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b(Landroid/text/TextWatcher;)V

    .line 221
    iget-object v0, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {v0}, Lmwv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v1, v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    iget-object v1, p0, Lmte;->i:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Landroid/text/TextWatcher;)V

    .line 225
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    iget-object v1, p0, Lmte;->i:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b(Landroid/text/TextWatcher;)V

    .line 230
    iget-object v0, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Lmwv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v1, v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    iget-object v1, p0, Lmte;->i:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Landroid/text/TextWatcher;)V

    .line 234
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lmte;->b:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->d()V

    .line 241
    iget-object v0, p0, Lmte;->c:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->d()V

    .line 242
    iget-object v0, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->d()V

    .line 243
    iget-object v0, p0, Lmte;->e:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->d()V

    .line 244
    iget-object v0, p0, Lmte;->f:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->d()V

    .line 245
    iget-object v0, p0, Lmte;->g:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->d()V

    .line 246
    return-void
.end method

.method public bridge synthetic onAttach(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lmso;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    const v0, 0x7f0403a7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lmso;->onDestroyView()V

    .line 81
    iget-object v0, p0, Lmte;->h:Lmvf;

    invoke-interface {v0}, Lmvf;->b()V

    .line 82
    return-void
.end method

.method public bridge synthetic onDetach()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lmso;->onDetach()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 104
    if-eqz p2, :cond_5

    .line 105
    iget-object v0, p0, Lmte;->c:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    if-ne p1, v0, :cond_1

    .line 106
    invoke-static {}, Lmwm;->g()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    if-ne p1, v0, :cond_2

    .line 108
    invoke-static {}, Lmwm;->h()V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lmte;->e:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    if-ne p1, v0, :cond_3

    .line 110
    invoke-static {}, Lmwm;->i()V

    goto :goto_0

    .line 111
    :cond_3
    iget-object v0, p0, Lmte;->f:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    if-ne p1, v0, :cond_4

    .line 112
    invoke-static {}, Lmwm;->j()V

    goto :goto_0

    .line 113
    :cond_4
    iget-object v0, p0, Lmte;->g:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    if-ne p1, v0, :cond_0

    .line 114
    invoke-static {}, Lmwm;->k()V

    goto :goto_0

    .line 117
    :cond_5
    iget-object v0, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    if-ne p1, v0, :cond_6

    .line 118
    iget-object v0, p0, Lmte;->h:Lmvf;

    invoke-interface {v0}, Lmvf;->c()V

    goto :goto_0

    .line 119
    :cond_6
    iget-object v0, p0, Lmte;->f:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    if-ne p1, v0, :cond_0

    .line 120
    invoke-direct {p0}, Lmte;->m()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lmso;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f1011d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    iput-object v0, p0, Lmte;->b:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    .line 52
    const v0, 0x7f1011da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    iput-object v0, p0, Lmte;->c:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    .line 53
    const v0, 0x7f1011db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    iput-object v0, p0, Lmte;->d:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    .line 54
    const v0, 0x7f1011dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    iput-object v0, p0, Lmte;->e:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    .line 55
    const v0, 0x7f1011dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    iput-object v0, p0, Lmte;->f:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    .line 56
    const v0, 0x7f1011de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    iput-object v0, p0, Lmte;->g:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    .line 58
    invoke-direct {p0}, Lmte;->l()V

    .line 60
    const v0, 0x7f1011d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmtf;

    invoke-direct {v1, p0}, Lmtf;-><init>(Lmte;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance v0, Lmvg;

    invoke-direct {v0, p0}, Lmvg;-><init>(Lmtq;)V

    iput-object v0, p0, Lmte;->h:Lmvf;

    .line 75
    iget-object v0, p0, Lmte;->h:Lmvf;

    invoke-interface {v0}, Lmvf;->a()V

    .line 76
    return-void
.end method
