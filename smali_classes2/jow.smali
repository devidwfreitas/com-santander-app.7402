.class public Ljow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljow;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/graphics/Bitmap;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljox;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljow;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljow;->f:Ljava/util/List;

    .line 185
    const v0, 0x7f0e014c

    invoke-virtual {p0, v0}, Ljow;->e(I)V

    .line 186
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljox;I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 197
    invoke-direct {p0}, Ljow;-><init>()V

    .line 198
    iput p1, p0, Ljow;->a:I

    .line 199
    iput-object p2, p0, Ljow;->c:Ljava/lang/String;

    .line 200
    iput-object p3, p0, Ljow;->e:Ljox;

    .line 201
    iput p4, p0, Ljow;->d:I

    .line 202
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljox;II)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 213
    invoke-direct {p0}, Ljow;-><init>()V

    .line 214
    iput p1, p0, Ljow;->a:I

    .line 215
    iput-object p2, p0, Ljow;->c:Ljava/lang/String;

    .line 216
    iput-object p3, p0, Ljow;->e:Ljox;

    .line 217
    iput p4, p0, Ljow;->d:I

    .line 218
    iput p5, p0, Ljow;->g:I

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljox;I)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljow;-><init>()V

    .line 206
    iput-object p1, p0, Ljow;->b:Landroid/graphics/Bitmap;

    .line 207
    iput-object p2, p0, Ljow;->c:Ljava/lang/String;

    .line 208
    iput-object p3, p0, Ljow;->e:Ljox;

    .line 209
    iput p4, p0, Ljow;->d:I

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljox;II)V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljow;-><init>()V

    .line 223
    iput-object p1, p0, Ljow;->b:Landroid/graphics/Bitmap;

    .line 224
    iput-object p2, p0, Ljow;->c:Ljava/lang/String;

    .line 225
    iput-object p3, p0, Ljow;->e:Ljox;

    .line 226
    iput p4, p0, Ljow;->d:I

    .line 227
    iput p5, p0, Ljow;->g:I

    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljox;I)V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljow;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Ljow;->a:I

    .line 191
    iput-object p1, p0, Ljow;->c:Ljava/lang/String;

    .line 192
    iput-object p2, p0, Ljow;->e:Ljox;

    .line 193
    iput p3, p0, Ljow;->d:I

    .line 194
    return-void
.end method


# virtual methods
.method public a(Ljow;)I
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Ljow;->g:I

    invoke-virtual {p1}, Ljow;->i()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 309
    const/4 v0, -0x1

    .line 314
    :goto_0
    return v0

    .line 311
    :cond_0
    iget v0, p0, Ljow;->g:I

    invoke-virtual {p1}, Ljow;->i()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 312
    const/4 v0, 0x1

    goto :goto_0

    .line 314
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 235
    iput p1, p0, Ljow;->a:I

    .line 236
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Ljow;->b:Landroid/graphics/Bitmap;

    .line 242
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Ljow;->c:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    iput-object p1, p0, Ljow;->f:Ljava/util/List;

    .line 275
    return-void
.end method

.method public a(Ljox;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Ljow;->e:Ljox;

    .line 269
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 179
    iput-boolean p1, p0, Ljow;->i:Z

    .line 180
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Ljow;->i:Z

    return v0
.end method

.method public b()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 232
    iget v0, p0, Ljow;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 262
    iput p1, p0, Ljow;->d:I

    .line 263
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 254
    iput-boolean p1, p0, Ljow;->j:Z

    .line 255
    return-void
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Ljow;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 282
    iput p1, p0, Ljow;->g:I

    .line 283
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 22
    check-cast p1, Ljow;

    invoke-virtual {p0, p1}, Ljow;->a(Ljow;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Ljow;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 290
    iput p1, p0, Ljow;->h:I

    .line 291
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Ljow;->d:I

    return v0
.end method

.method public e(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 294
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ljow;->k:I

    .line 295
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Ljow;->e:Ljox;

    check-cast p1, Ljow;

    invoke-virtual {p1}, Ljow;->g()Ljox;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljox;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 298
    iput p1, p0, Ljow;->k:I

    .line 299
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Ljow;->j:Z

    return v0
.end method

.method public g()Ljox;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Ljow;->e:Ljox;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Ljow;->f:Ljava/util/List;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Ljow;->g:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Ljow;->h:I

    return v0
.end method

.method public k()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 303
    iget v0, p0, Ljow;->k:I

    return v0
.end method
