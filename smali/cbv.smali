.class Lcbv;
.super Lbnz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbny",
        "<",
        "Lcom/facebook/share/model/AppGroupCreationContent;",
        "Lcbu;",
        ">.bnz;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcbr;


# direct methods
.method private constructor <init>(Lcbr;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcbv;->b:Lcbr;

    invoke-direct {p0, p1}, Lbnz;-><init>(Lbny;)V

    return-void
.end method

.method synthetic constructor <init>(Lcbr;Lcbs;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcbv;-><init>(Lcbr;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/AppGroupCreationContent;)Lbmr;
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcbv;->b:Lcbr;

    invoke-virtual {v0}, Lcbr;->d()Lbmr;

    move-result-object v0

    .line 213
    const-string v1, "game_group_create"

    .line 216
    invoke-static {p1}, Lbzz;->a(Lcom/facebook/share/model/AppGroupCreationContent;)Landroid/os/Bundle;

    move-result-object v2

    .line 213
    invoke-static {v0, v1, v2}, Lbnw;->a(Lbmr;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 218
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lbmr;
    .locals 1

    .prologue
    .line 204
    check-cast p1, Lcom/facebook/share/model/AppGroupCreationContent;

    invoke-virtual {p0, p1}, Lcbv;->a(Lcom/facebook/share/model/AppGroupCreationContent;)Lbmr;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/AppGroupCreationContent;Z)Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 204
    check-cast p1, Lcom/facebook/share/model/AppGroupCreationContent;

    invoke-virtual {p0, p1, p2}, Lcbv;->a(Lcom/facebook/share/model/AppGroupCreationContent;Z)Z

    move-result v0

    return v0
.end method
