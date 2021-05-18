.class public Ljwc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljtu;
.implements Ljwb;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljsr;

.field private c:Ljvd;

.field private d:Ljtt;

.field private e:Lcom/santander/app/contacorrente/domain/Conta;

.field private f:Lghu;

.field private g:Lmip;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljsr;Ljvd;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Ljwc;->a:Landroid/app/Activity;

    .line 54
    iput-object p2, p0, Ljwc;->b:Ljsr;

    .line 55
    iput-object p3, p0, Ljwc;->c:Ljvd;

    .line 56
    new-instance v0, Ljtv;

    iget-object v1, p0, Ljwc;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p2, p0}, Ljtv;-><init>(Landroid/app/Activity;Ljsr;Ljtu;)V

    iput-object v0, p0, Ljwc;->d:Ljtt;

    .line 57
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljwc;->g:Lmip;

    .line 58
    return-void
.end method

.method private b(Ljss;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 231
    iget-object v1, p0, Ljwc;->e:Lcom/santander/app/contacorrente/domain/Conta;

    if-nez v1, :cond_0

    iget-object v1, p0, Ljwc;->f:Lghu;

    if-nez v1, :cond_0

    .line 232
    iget-object v1, p0, Ljwc;->c:Ljvd;

    iget-object v2, p0, Ljwc;->a:Landroid/app/Activity;

    const v3, 0x7f090790

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljvd;->a(Ljava/lang/String;)V

    .line 248
    :goto_0
    return v0

    .line 236
    :cond_0
    const-string v1, "S"

    iget-object v2, p0, Ljwc;->b:Ljsr;

    invoke-virtual {v2}, Ljsr;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    invoke-virtual {p1}, Ljss;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljss;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    :cond_1
    iget-object v1, p0, Ljwc;->c:Ljvd;

    iget-object v2, p0, Ljwc;->a:Landroid/app/Activity;

    const v3, 0x7f090793

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljvd;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {p1}, Ljss;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0,00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 244
    iget-object v1, p0, Ljwc;->c:Ljvd;

    iget-object v2, p0, Ljwc;->a:Landroid/app/Activity;

    const v3, 0x7f0907bb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljvd;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Ljsr;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 269
    iget-object v1, p0, Ljwc;->e:Lcom/santander/app/contacorrente/domain/Conta;

    if-nez v1, :cond_0

    iget-object v1, p0, Ljwc;->f:Lghu;

    if-nez v1, :cond_0

    .line 270
    iget-object v1, p0, Ljwc;->c:Ljvd;

    iget-object v2, p0, Ljwc;->a:Landroid/app/Activity;

    const v3, 0x7f090790

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljvd;->a(Ljava/lang/String;)V

    .line 291
    :goto_0
    return v0

    .line 274
    :cond_0
    const-string v1, "S"

    invoke-virtual {p1}, Ljsr;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    invoke-virtual {p1}, Ljsr;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljsr;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    :cond_1
    iget-object v1, p0, Ljwc;->c:Ljvd;

    iget-object v2, p0, Ljwc;->a:Landroid/app/Activity;

    const v3, 0x7f090793

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljvd;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p1}, Ljsr;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0,00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    iget-object v1, p0, Ljwc;->c:Ljvd;

    iget-object v2, p0, Ljwc;->a:Landroid/app/Activity;

    const v3, 0x7f0907bb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljvd;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_3
    invoke-virtual {p0}, Ljwc;->e()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "S"

    invoke-virtual {p1}, Ljsr;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 287
    iget-object v1, p0, Ljwc;->c:Ljvd;

    iget-object v2, p0, Ljwc;->a:Landroid/app/Activity;

    const v3, 0x7f0907ae

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljvd;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Ljwc;->h:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Ljwc;->c:Ljvd;

    invoke-interface {v0}, Ljvd;->f()V

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/high16 v12, 0x41600000    # 14.0f

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 162
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 163
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 164
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 165
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v0, p0, Ljwc;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 169
    iget-object v0, p0, Ljwc;->b:Ljsr;

    invoke-virtual {v0}, Ljsr;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgku;

    .line 171
    invoke-virtual {v0}, Lgku;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 172
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 173
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 174
    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 175
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 176
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    const/16 v5, 0xa

    invoke-virtual {v4, v9, v5, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 179
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 181
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 182
    div-int/lit8 v7, v2, 0x64

    mul-int/lit8 v7, v7, 0xa

    invoke-virtual {v5, v7, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 183
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 187
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 188
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 191
    invoke-static {p1, v9}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 193
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 194
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 195
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    invoke-virtual {v0}, Lgku;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 198
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 199
    const/high16 v0, -0x1000000

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    invoke-static {p1, v9}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 202
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 209
    :cond_0
    iput-boolean v13, p0, Ljwc;->h:Z

    goto/16 :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Ljwc;->c:Ljvd;

    invoke-interface {v0, v1}, Ljvd;->a(Landroid/widget/LinearLayout;)V

    .line 212
    return-void
.end method

.method public a(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lguj;

    invoke-direct {v0}, Lguj;-><init>()V

    .line 137
    invoke-virtual {v0, p1}, Lguj;->a(Landroid/widget/EditText;)V

    .line 138
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    return-void
.end method

.method public a(Lcom/santander/app/contacorrente/domain/Conta;)V
    .locals 1

    .prologue
    .line 143
    iput-object p1, p0, Ljwc;->e:Lcom/santander/app/contacorrente/domain/Conta;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Ljwc;->f:Lghu;

    .line 145
    return-void
.end method

.method public a(Lghu;)V
    .locals 1

    .prologue
    .line 149
    iput-object p1, p0, Ljwc;->f:Lghu;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Ljwc;->e:Lcom/santander/app/contacorrente/domain/Conta;

    .line 151
    iget-object v0, p0, Ljwc;->c:Ljvd;

    invoke-interface {v0}, Ljvd;->d()V

    .line 152
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-static {p1}, Lgmy;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-static {p2}, Lgmy;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    iget-object v1, p0, Ljwc;->c:Ljvd;

    invoke-interface {v1, v0}, Ljvd;->a(Ljava/util/List;)V

    .line 84
    invoke-virtual {p0}, Ljwc;->c()V

    .line 85
    invoke-virtual {p0}, Ljwc;->d()V

    .line 86
    return-void
.end method

.method public a(Ljsr;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Ljwc;->c:Ljvd;

    invoke-interface {v0, p1}, Ljvd;->a(Ljsr;)V

    .line 121
    return-void
.end method

.method public a(Ljss;)V
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0, p1}, Ljwc;->b(Ljss;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Ljwc;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Ljwc;->e:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->setConta(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Ljwc;->e:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->setAgencia(Ljava/lang/String;)V

    .line 225
    :goto_0
    iget-object v0, p0, Ljwc;->d:Ljtt;

    invoke-interface {v0, p1}, Ljtt;->a(Ljss;)V

    .line 227
    :cond_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Ljwc;->f:Lghu;

    invoke-virtual {v0}, Lghu;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->a(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Ljwc;->g:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->setAgencia(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Ljwc;->g:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->setConta(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Ljwc;->f()V

    .line 63
    iget-object v0, p0, Ljwc;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Ljwc;->a(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0}, Ljwc;->g()V

    .line 65
    return-void
.end method

.method public b(Ljsr;)V
    .locals 3

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Ljsr;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Ljwc;->c:Ljvd;

    invoke-virtual {p1}, Ljsr;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljvd;->a(Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Ljwc;->c:Ljvd;

    iget-object v1, p0, Ljwc;->a:Landroid/app/Activity;

    const v2, 0x7f09043f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljvd;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Ljwc;->b:Ljsr;

    invoke-virtual {v0}, Ljsr;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_1
    return-void

    .line 90
    :sswitch_0
    const-string v2, "N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 92
    :pswitch_0
    iget-object v0, p0, Ljwc;->c:Ljvd;

    invoke-interface {v0}, Ljvd;->a()V

    goto :goto_1

    .line 90
    :sswitch_data_0
    .sparse-switch
        0x4e -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljsr;)V
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0, p1}, Ljwc;->d(Ljsr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Ljwc;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Ljwc;->e:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->b(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Ljwc;->e:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->c(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljsr;->d(Ljava/lang/String;)V

    .line 264
    :goto_0
    iget-object v0, p0, Ljwc;->d:Ljtt;

    invoke-interface {v0, p1}, Ljtt;->a(Ljsr;)V

    .line 266
    :cond_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Ljwc;->f:Lghu;

    invoke-virtual {v0}, Lghu;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->d(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Ljwc;->g:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->c(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Ljwc;->g:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Ljwc;->b:Ljsr;

    invoke-virtual {v0}, Ljsr;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Ljwc;->b:Ljsr;

    invoke-virtual {v0}, Ljsr;->p()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_1
    return-void

    .line 102
    :sswitch_0
    const-string v2, "N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :pswitch_0
    iget-object v0, p0, Ljwc;->c:Ljvd;

    invoke-interface {v0}, Ljvd;->b()V

    goto :goto_1

    .line 109
    :cond_1
    iget-object v0, p0, Ljwc;->c:Ljvd;

    invoke-interface {v0}, Ljvd;->b()V

    goto :goto_1

    .line 102
    :sswitch_data_0
    .sparse-switch
        0x4e -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Ljwc;->e:Lcom/santander/app/contacorrente/domain/Conta;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Ljwc;->d:Ljtt;

    invoke-interface {v0}, Ljtt;->c()V

    .line 76
    return-void
.end method
