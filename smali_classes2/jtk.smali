.class Ljtk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;


# instance fields
.field final synthetic a:Ljth;


# direct methods
.method constructor <init>(Ljth;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Ljtk;->a:Ljth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Ljtk;->a:Ljth;

    invoke-static {v0}, Ljth;->a(Ljth;)Ljtg;

    move-result-object v0

    invoke-interface {v0}, Ljtg;->a()V

    .line 171
    return-void
.end method

.method public onSuccess(Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;)V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Ljtk;->a:Ljth;

    invoke-static {v0}, Ljth;->e(Ljth;)Ljwi;

    move-result-object v0

    new-instance v1, Ljtl;

    invoke-direct {v1, p0}, Ljtl;-><init>(Ljtk;)V

    iget-object v2, p0, Ljtk;->a:Ljth;

    .line 165
    invoke-static {v2, p1}, Ljth;->a(Ljth;Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;)Liq;

    move-result-object v2

    .line 113
    invoke-interface {v0, v1, v2}, Ljwi;->c(Lgkw;Liq;)V

    .line 166
    return-void
.end method

.method public onTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method
