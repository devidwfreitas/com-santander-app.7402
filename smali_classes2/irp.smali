.class Lirp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lirt;

.field final synthetic b:Lirm;


# direct methods
.method constructor <init>(Lirm;Lirt;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lirp;->b:Lirm;

    iput-object p2, p0, Lirp;->a:Lirt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 3

    .prologue
    .line 152
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1a4

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    const-class v2, Lipa;

    invoke-virtual {v1, v0, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipa;

    .line 156
    iget-object v1, p0, Lirp;->a:Lirt;

    invoke-interface {v1, v0}, Lirt;->a(Lipa;)V

    .line 159
    :cond_0
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method
