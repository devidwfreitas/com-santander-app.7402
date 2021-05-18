.class public Lcaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcau",
        "<",
        "Lcom/facebook/share/model/GameRequestContent;",
        "Lcaj;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcai;

.field private f:Ljava/lang/String;

.field private g:Lcak;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcaj;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcaj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcaj;)Ljava/util/List;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcaj;->b:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic c(Lcaj;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcaj;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcaj;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcaj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcaj;)Lcai;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcaj;->e:Lcai;

    return-object v0
.end method

.method public static synthetic f(Lcaj;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcaj;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g(Lcaj;)Lcak;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcaj;->g:Lcak;

    return-object v0
.end method

.method public static synthetic h(Lcaj;)Ljava/util/List;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcaj;->h:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method a(Landroid/os/Parcel;)Lcaj;
    .locals 1

    .prologue
    .line 306
    const-class v0, Lcom/facebook/share/model/GameRequestContent;

    .line 308
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 307
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/GameRequestContent;

    .line 306
    invoke-virtual {p0, v0}, Lcaj;->a(Lcom/facebook/share/model/GameRequestContent;)Lcaj;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcai;)Lcaj;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcaj;->e:Lcai;

    .line 256
    return-object p0
.end method

.method public a(Lcak;)Lcaj;
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcaj;->g:Lcak;

    .line 273
    return-object p0
.end method

.method public a(Lcom/facebook/share/model/GameRequestContent;)Lcaj;
    .locals 2

    .prologue
    .line 291
    if-nez p1, :cond_0

    .line 294
    :goto_0
    return-object p0

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcaj;->a(Ljava/lang/String;)Lcaj;

    move-result-object v0

    .line 296
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcaj;->a(Ljava/util/List;)Lcaj;

    move-result-object v0

    .line 297
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcaj;->d(Ljava/lang/String;)Lcaj;

    move-result-object v0

    .line 298
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcaj;->c(Ljava/lang/String;)Lcaj;

    move-result-object v0

    .line 299
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->f()Lcai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcaj;->a(Lcai;)Lcaj;

    move-result-object v0

    .line 300
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcaj;->e(Ljava/lang/String;)Lcaj;

    move-result-object v0

    .line 301
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->h()Lcak;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcaj;->a(Lcak;)Lcaj;

    move-result-object v0

    .line 302
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcaj;->b(Ljava/util/List;)Lcaj;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcaj;
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcaj;->a:Ljava/lang/String;

    .line 192
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcaj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcaj;"
        }
    .end annotation

    .prologue
    .line 224
    iput-object p1, p0, Lcaj;->b:Ljava/util/List;

    .line 225
    return-object p0
.end method

.method public bridge synthetic a(Lcom/facebook/share/model/ShareModel;)Lcau;
    .locals 1

    .prologue
    .line 172
    check-cast p1, Lcom/facebook/share/model/GameRequestContent;

    invoke-virtual {p0, p1}, Lcaj;->a(Lcom/facebook/share/model/GameRequestContent;)Lcaj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcaj;->b()Lcom/facebook/share/model/GameRequestContent;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcaj;
    .locals 1

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 206
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcaj;->b:Ljava/util/List;

    .line 210
    :cond_0
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcaj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcaj;"
        }
    .end annotation

    .prologue
    .line 280
    iput-object p1, p0, Lcaj;->h:Ljava/util/List;

    .line 281
    return-object p0
.end method

.method public b()Lcom/facebook/share/model/GameRequestContent;
    .locals 2

    .prologue
    .line 286
    new-instance v0, Lcom/facebook/share/model/GameRequestContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/GameRequestContent;-><init>(Lcaj;Lcah;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcaj;
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcaj;->c:Ljava/lang/String;

    .line 237
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcaj;
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcaj;->d:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcaj;
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcaj;->f:Ljava/lang/String;

    .line 265
    return-object p0
.end method
