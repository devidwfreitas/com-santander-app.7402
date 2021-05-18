.class Lhpq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqj;


# instance fields
.field final synthetic a:Lcom/santander/app/contacorrente/domain/Conta;

.field final synthetic b:Lhpm;

.field final synthetic c:Z

.field final synthetic d:Lhpp;


# direct methods
.method constructor <init>(Lhpp;Lcom/santander/app/contacorrente/domain/Conta;Lhpm;Z)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lhpq;->d:Lhpp;

    iput-object p2, p0, Lhpq;->a:Lcom/santander/app/contacorrente/domain/Conta;

    iput-object p3, p0, Lhpq;->b:Lhpm;

    iput-boolean p4, p0, Lhpq;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 104
    iget-object v0, p0, Lhpq;->d:Lhpp;

    iget-object v1, p0, Lhpq;->d:Lhpp;

    invoke-virtual {v1}, Lhpp;->s()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lhpq;->a:Lcom/santander/app/contacorrente/domain/Conta;

    iget-object v4, p0, Lhpq;->b:Lhpm;

    invoke-static {v0, v1, v2, v3, v4}, Lhpp;->a(Lhpp;IZLcom/santander/app/contacorrente/domain/Conta;Lhpm;)V

    .line 105
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 109
    iget-boolean v0, p0, Lhpq;->c:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lhpq;->d:Lhpp;

    iget-object v1, p0, Lhpq;->b:Lhpm;

    invoke-static {v0, v1}, Lhpp;->a(Lhpp;Lhpm;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lhpq;->d:Lhpp;

    iget-object v1, p0, Lhpq;->d:Lhpp;

    invoke-virtual {v1}, Lhpp;->s()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lhpq;->a:Lcom/santander/app/contacorrente/domain/Conta;

    iget-object v4, p0, Lhpq;->b:Lhpm;

    invoke-static {v0, v1, v2, v3, v4}, Lhpp;->a(Lhpp;IZLcom/santander/app/contacorrente/domain/Conta;Lhpm;)V

    goto :goto_0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 118
    iget-boolean v0, p0, Lhpq;->c:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 119
    :goto_0
    iget-object v1, p0, Lhpq;->d:Lhpp;

    iget-boolean v2, p0, Lhpq;->c:Z

    iget-object v3, p0, Lhpq;->a:Lcom/santander/app/contacorrente/domain/Conta;

    iget-object v4, p0, Lhpq;->b:Lhpm;

    invoke-static {v1, v0, v2, v3, v4}, Lhpp;->a(Lhpp;IZLcom/santander/app/contacorrente/domain/Conta;Lhpm;)V

    .line 120
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lhpq;->d:Lhpp;

    invoke-virtual {v0}, Lhpp;->s()I

    move-result v0

    goto :goto_0
.end method
