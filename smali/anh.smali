.class public Lanh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lanh;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lanh;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lanh;->a:Lanh;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lanh;

    invoke-direct {v0}, Lanh;-><init>()V

    sput-object v0, Lanh;->a:Lanh;

    .line 21
    :cond_0
    sget-object v0, Lanh;->a:Lanh;

    return-object v0
.end method


# virtual methods
.method public varargs a([Lbr/com/santander/uisdk/edittext/SantanderEditText;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lbr/com/santander/uisdk/edittext/SantanderEditText;",
            ")",
            "Ljava/util/List",
            "<",
            "Lang;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 29
    invoke-virtual {v3}, Lbr/com/santander/uisdk/edittext/SantanderEditText;->a()Lang;

    move-result-object v3

    .line 30
    invoke-virtual {v3}, Lang;->b()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lang;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 31
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_1
    return-object v1
.end method
