.class public Lcom/santander/app/seguros/ui/widgets/JustifyTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:F

.field private e:I

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/StringBuilder;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmcs;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/StringBuilder;

.field private k:I

.field private l:F

.field private m:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 30
    const-string v0, "\u200a"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->b:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->c:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->d:F

    .line 39
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->e:I

    .line 42
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->f:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->g:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->h:Ljava/lang/StringBuilder;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->i:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->j:Ljava/lang/StringBuilder;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const-string v0, "\u200a"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->b:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->c:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->d:F

    .line 39
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->e:I

    .line 42
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->f:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->g:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->h:Ljava/lang/StringBuilder;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->i:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->j:Ljava/lang/StringBuilder;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const-string v0, "\u200a"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->b:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->c:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->d:F

    .line 39
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->e:I

    .line 42
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->f:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->g:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->h:Ljava/lang/StringBuilder;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->i:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->j:Ljava/lang/StringBuilder;

    .line 73
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 281
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 284
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    return v0
.end method

.method private a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->j:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 233
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->d:F

    .line 226
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->e:I

    .line 227
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->f:I

    .line 228
    return-void
.end method

.method private a(IILjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 243
    if-nez p1, :cond_1

    .line 277
    :cond_0
    return-void

    .line 245
    :cond_1
    if-ne p1, p2, :cond_2

    .line 246
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 246
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 249
    :cond_2
    if-ge p1, p2, :cond_3

    .line 250
    :goto_1
    if-ge v3, p1, :cond_0

    .line 251
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->a(I)I

    move-result v1

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 254
    :cond_3
    if-le p1, p2, :cond_0

    .line 258
    :goto_2
    if-le p1, p2, :cond_5

    move v2, v1

    .line 259
    :goto_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_4

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 259
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_3

    .line 262
    :cond_4
    add-int/lit8 v0, p2, -0x1

    sub-int/2addr p1, v0

    goto :goto_2

    .line 264
    :cond_5
    if-eqz p1, :cond_0

    .line 266
    if-ne p1, p2, :cond_6

    .line 267
    :goto_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 267
    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    .line 270
    :cond_6
    if-ge p1, p2, :cond_0

    move v1, v3

    .line 271
    :goto_5
    if-ge v1, p1, :cond_0

    .line 272
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->a(I)I

    move-result v2

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 271
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 189
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->d:F

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->k:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->f:I

    .line 192
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->g:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->d:F

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->m:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->d:F

    .line 194
    if-eqz p2, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->c:Ljava/lang/String;

    .line 196
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->a()V

    .line 220
    :cond_0
    :goto_1
    return-void

    .line 192
    :cond_1
    const-string v0, " "

    goto :goto_0

    .line 199
    :cond_2
    :goto_2
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->d:F

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->k:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 200
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->d:F

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->l:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->d:F

    .line 201
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->d:F

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->k:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->e:I

    goto :goto_2

    .line 204
    :cond_3
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->f:I

    if-le v0, v3, :cond_4

    .line 205
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->e:I

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->f:I

    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->a(IILjava/util/ArrayList;)V

    .line 207
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->c:Ljava/lang/String;

    .line 208
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->a()V

    .line 210
    if-eqz p2, :cond_5

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->c:Ljava/lang/String;

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->f:I

    goto :goto_1

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iput v3, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->f:I

    .line 217
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->g:Ljava/util/ArrayList;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->d:F

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->m:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->d:F

    goto/16 :goto_1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 13

    .prologue
    .line 76
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/AppCompatTextView;->onLayout(ZIIII)V

    .line 78
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->c:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->b:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 86
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 88
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v7

    .line 96
    instance-of v0, v1, Landroid/text/SpannedString;

    if-eqz v0, :cond_6

    .line 97
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_6

    move-object v0, v1

    .line 98
    check-cast v0, Landroid/text/SpannedString;

    add-int/lit8 v3, v2, 0x1

    const-class v4, Landroid/text/style/CharacterStyle;

    .line 99
    invoke-virtual {v0, v2, v3, v4}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    .line 100
    if-eqz v0, :cond_5

    array-length v3, v0

    if-lez v3, :cond_5

    .line 101
    array-length v8, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v8, :cond_5

    aget-object v3, v0, v4

    .line 103
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 104
    invoke-virtual {v10, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->b:Ljava/lang/String;

    .line 105
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    add-int/2addr v9, v10

    .line 108
    invoke-virtual {v7, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v7, v3}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v0, v10, v3, v9}, Lmcs;->a([Landroid/text/style/CharacterStyle;III)Lmcs;

    move-result-object v9

    .line 109
    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->h:Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 110
    const/4 v3, 0x0

    :goto_3
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    if-gt v3, v10, :cond_2

    .line 111
    iget-object v10, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->h:Ljava/lang/StringBuilder;

    aget-object v11, v6, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v10, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->h:Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v10, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-le v10, v2, :cond_4

    .line 114
    aget-object v10, v6, v3

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->b:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 115
    invoke-virtual {v9, v3}, Lmcs;->a(I)V

    .line 123
    :cond_2
    :goto_4
    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->i:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    .line 117
    :cond_3
    invoke-virtual {v9, v3}, Lmcs;->a(I)V

    .line 118
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Lmcs;->a(Z)V

    goto :goto_4

    .line 110
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 97
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 128
    :cond_6
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->a:Landroid/graphics/Paint;

    .line 129
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->k:I

    .line 134
    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->k:I

    if-lez v0, :cond_c

    array-length v0, v6

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->c:Ljava/lang/String;

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 138
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->l:F

    .line 139
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->a:Landroid/graphics/Paint;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->m:F

    .line 140
    const/4 v0, 0x0

    :goto_5
    array-length v1, v6

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_b

    .line 141
    aget-object v1, v6, v0

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    aget-object v1, v6, v0

    const-string v2, "\r"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v1, 0x1

    .line 142
    :goto_6
    if-eqz v1, :cond_9

    .line 143
    aget-object v1, v6, v0

    const-string v2, "(?<=\\n)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 144
    array-length v3, v2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v3, :cond_a

    aget-object v4, v2, v1

    .line 145
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->a(Ljava/lang/String;Z)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 141
    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    .line 148
    :cond_9
    aget-object v1, v6, v0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->a(Ljava/lang/String;Z)V

    .line 140
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 151
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->c:Ljava/lang/String;

    .line 156
    :cond_c
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v5

    .line 158
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmcs;

    .line 159
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 160
    const/4 v2, 0x0

    .line 161
    const/4 v1, 0x0

    .line 162
    :goto_9
    invoke-virtual {v0}, Lmcs;->b()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ge v3, v7, :cond_10

    .line 163
    iget-object v7, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->c:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_d

    iget-object v7, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->c:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x200a

    if-ne v7, v8, :cond_f

    .line 164
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 165
    if-eqz v2, :cond_e

    .line 166
    add-int/lit8 v3, v3, 0x1

    .line 168
    :cond_e
    const/4 v2, 0x0

    .line 172
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 170
    :cond_f
    const/4 v2, 0x1

    goto :goto_a

    .line 175
    :cond_10
    invoke-virtual {v0}, Lmcs;->d()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0}, Lmcs;->f()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {v0}, Lmcs;->a()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_b
    add-int/2addr v1, v2

    .line 174
    invoke-virtual {v0, v1}, Lmcs;->b(I)V

    .line 177
    invoke-virtual {v0}, Lmcs;->e()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0}, Lmcs;->f()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {v0}, Lmcs;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_c
    add-int/2addr v1, v2

    .line 176
    invoke-virtual {v0, v1}, Lmcs;->c(I)V

    goto :goto_8

    .line 175
    :cond_11
    const/4 v1, 0x0

    goto :goto_b

    .line 177
    :cond_12
    const/4 v1, 0x0

    goto :goto_c

    .line 180
    :cond_13
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmcs;

    .line 181
    invoke-virtual {v0}, Lmcs;->c()[Landroid/text/style/CharacterStyle;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v4, :cond_14

    aget-object v6, v3, v1

    .line 182
    invoke-virtual {v0}, Lmcs;->d()I

    move-result v7

    invoke-virtual {v0}, Lmcs;->e()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 185
    :cond_15
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v5}, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
