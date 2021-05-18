.class final Lewb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Leqm;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lewa;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lewb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leqm;Leqm;)I
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p1}, Leqm;->e()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Leqn;->STRUCTURED_APPEND_SEQUENCE:Leqn;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 170
    invoke-virtual {p2}, Leqm;->e()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Leqn;->STRUCTURED_APPEND_SEQUENCE:Leqn;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 171
    if-ge v1, v0, :cond_0

    .line 172
    const/4 v0, -0x1

    .line 177
    :goto_0
    return v0

    .line 174
    :cond_0
    if-le v1, v0, :cond_1

    .line 175
    const/4 v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 166
    check-cast p1, Leqm;

    check-cast p2, Leqm;

    invoke-virtual {p0, p1, p2}, Lewb;->a(Leqm;Leqm;)I

    move-result v0

    return v0
.end method
