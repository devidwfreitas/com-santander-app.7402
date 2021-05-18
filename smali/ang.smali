.class public Lang;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/santander/uisdk/edittext/SantanderEditText;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lane;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbr/com/santander/uisdk/edittext/SantanderEditText;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lang;->a:Lbr/com/santander/uisdk/edittext/SantanderEditText;

    .line 19
    return-void
.end method


# virtual methods
.method public a()Lbr/com/santander/uisdk/edittext/SantanderEditText;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lang;->a:Lbr/com/santander/uisdk/edittext/SantanderEditText;

    return-object v0
.end method

.method public a(Lane;)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lang;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lang;->b:Ljava/util/List;

    .line 25
    :cond_0
    iget-object v0, p0, Lang;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public a(Lbr/com/santander/uisdk/edittext/SantanderEditText;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lang;->a:Lbr/com/santander/uisdk/edittext/SantanderEditText;

    .line 35
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lane;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p1, p0, Lang;->b:Ljava/util/List;

    .line 43
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lane;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lang;->b:Ljava/util/List;

    return-object v0
.end method
