.class public Ljnc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljnd;
    .annotation runtime Leks;
        a = "cardCrm"
    .end annotation
.end field

.field protected b:Ljne;
    .annotation runtime Leks;
        a = "menu"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljnd;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Ljnc;->a:Ljnd;

    return-object v0
.end method

.method public b()Ljne;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljnc;->b:Ljne;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ljnc;->a:Ljnd;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Ljnc;->a:Ljnd;

    invoke-virtual {v0}, Ljnd;->a()Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    .line 32
    :cond_0
    iget-object v0, p0, Ljnc;->b:Ljne;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Ljnc;->b:Ljne;

    invoke-virtual {v0}, Ljne;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method
