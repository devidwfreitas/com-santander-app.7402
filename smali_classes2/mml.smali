.class Lmml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;


# instance fields
.field final synthetic a:Lmlo;

.field final synthetic b:Lmmi;


# direct methods
.method constructor <init>(Lmmi;Lmlo;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lmml;->b:Lmmi;

    iput-object p2, p0, Lmml;->a:Lmlo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lmml;->b:Lmmi;

    invoke-static {v0}, Lmmi;->c(Lmmi;)Lmmh;

    move-result-object v0

    invoke-interface {v0}, Lmmh;->a()V

    .line 183
    return-void
.end method

.method public onSuccess(Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;)V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lmml;->b:Lmmi;

    invoke-static {v0}, Lmmi;->d(Lmmi;)Lmqn;

    move-result-object v0

    new-instance v1, Lmmm;

    invoke-direct {v1, p0}, Lmmm;-><init>(Lmml;)V

    iget-object v2, p0, Lmml;->b:Lmmi;

    iget-object v3, p0, Lmml;->a:Lmlo;

    .line 177
    invoke-static {v2, p1, v3}, Lmmi;->a(Lmmi;Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;Lmlo;)Liq;

    move-result-object v2

    .line 121
    invoke-virtual {v0, v1, v2}, Lmqn;->b(Lgkw;Liq;)V

    .line 178
    return-void
.end method

.method public onTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method
