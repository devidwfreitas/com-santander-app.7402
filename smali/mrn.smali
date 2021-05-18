.class public Lmrn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private todos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmro;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmro;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v1, Lmro;

    const-string v2, "033"

    const-string v3, "Santander"

    invoke-direct {v1, v2, v3}, Lmro;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lmro;

    const-string v2, "341"

    const-string v3, "Ita\u00fa Unibanco"

    invoke-direct {v1, v2, v3}, Lmro;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lmro;

    const-string v2, "237"

    const-string v3, "Bradesco"

    invoke-direct {v1, v2, v3}, Lmro;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Lmro;

    const-string v2, "001"

    const-string v3, "Bco do Brasil"

    invoke-direct {v1, v2, v3}, Lmro;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lmro;

    const-string v2, "104"

    const-string v3, "C.E.Federal"

    invoke-direct {v1, v2, v3}, Lmro;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lmro;

    const-string v2, "399"

    const-string v3, "HSBC Brasil"

    invoke-direct {v1, v2, v3}, Lmro;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Lmro;

    const-string v2, "745"

    const-string v3, "Citibank"

    invoke-direct {v1, v2, v3}, Lmro;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lmro;

    const-string v2, "004"

    const-string v3, "BNB"

    invoke-direct {v1, v2, v3}, Lmro;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lmro;

    const-string v2, "422"

    const-string v3, "Safra"

    invoke-direct {v1, v2, v3}, Lmro;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lmro;

    const-string v2, "074"

    const-string v3, "J.Safra"

    invoke-direct {v1, v2, v3}, Lmro;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v1, Lmro;

    const-string v2, "655"

    const-string v3, "Votorantim"

    invoke-direct {v1, v2, v3}, Lmro;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v1, Lmro;

    const-string v2, "212"

    const-string v3, "B. Original"

    invoke-direct {v1, v2, v3}, Lmro;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lmro;

    const-string v2, "208"

    const-string v3, "Btg Pactual"

    invoke-direct {v1, v2, v3}, Lmro;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lmro;

    const-string v2, "041"

    const-string v3, "BANRISUL"

    invoke-direct {v1, v2, v3}, Lmro;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lmro;

    const-string v2, "070"

    const-string v3, "BRB"

    invoke-direct {v1, v2, v3}, Lmro;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmro;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lmrn;->todos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmro;

    .line 26
    invoke-virtual {v0}, Lmro;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "033"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 27
    invoke-virtual {v0}, Lmro;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "341"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 28
    invoke-virtual {v0}, Lmro;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "237"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 29
    invoke-virtual {v0}, Lmro;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 30
    invoke-virtual {v0}, Lmro;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "104"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 31
    invoke-virtual {v0}, Lmro;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "399"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 32
    invoke-virtual {v0}, Lmro;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "745"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 33
    invoke-virtual {v0}, Lmro;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "004"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    invoke-virtual {v0}, Lmro;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "422"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 35
    invoke-virtual {v0}, Lmro;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "074"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 36
    invoke-virtual {v0}, Lmro;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "655"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 37
    invoke-virtual {v0}, Lmro;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "212"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 38
    invoke-virtual {v0}, Lmro;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "208"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 39
    invoke-virtual {v0}, Lmro;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "041"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 40
    invoke-virtual {v0}, Lmro;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "070"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lmrn;->todos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {}, Lmrn;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 45
    iget-object v0, p0, Lmrn;->todos:Ljava/util/List;

    return-object v0
.end method
