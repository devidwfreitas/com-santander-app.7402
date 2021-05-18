.class public Llgx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lkue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Llgx;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    iput-object p2, p0, Llgx;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkue;Lkue;)I
    .locals 3

    .prologue
    .line 800
    iget-object v0, p0, Llgx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 801
    iget-object v1, p0, Llgx;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 803
    invoke-virtual {p1}, Lkue;->a()Lkud;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lkue;->a()Lkud;

    move-result-object v2

    invoke-virtual {v2}, Lkud;->d()Lktr;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 804
    invoke-virtual {p1}, Lkue;->a()Lkud;

    move-result-object v0

    invoke-virtual {v0}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->f()Ljava/lang/Integer;

    move-result-object v0

    .line 807
    :cond_0
    invoke-virtual {p2}, Lkue;->a()Lkud;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lkue;->a()Lkud;

    move-result-object v2

    invoke-virtual {v2}, Lkud;->d()Lktr;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 808
    invoke-virtual {p2}, Lkue;->a()Lkud;

    move-result-object v1

    invoke-virtual {v1}, Lkud;->d()Lktr;

    move-result-object v1

    invoke-virtual {v1}, Lktr;->f()Ljava/lang/Integer;

    move-result-object v1

    .line 812
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 796
    check-cast p1, Lkue;

    check-cast p2, Lkue;

    invoke-virtual {p0, p1, p2}, Llgx;->a(Lkue;Lkue;)I

    move-result v0

    return v0
.end method
