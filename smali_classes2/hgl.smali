.class Lhgl;
.super Lhgo;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/contacorrente/domain/Conta;

.field final synthetic b:I

.field final synthetic c:Lhgg;

.field final synthetic d:Lhgh;


# direct methods
.method constructor <init>(Lhgh;Ljava/lang/String;Lcom/santander/app/contacorrente/domain/Conta;ILhgg;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lhgl;->d:Lhgh;

    iput-object p3, p0, Lhgl;->a:Lcom/santander/app/contacorrente/domain/Conta;

    iput p4, p0, Lhgl;->b:I

    iput-object p5, p0, Lhgl;->c:Lhgg;

    invoke-direct {p0, p1, p2}, Lhgo;-><init>(Lhgh;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lhgl;->d:Lhgh;

    iget-object v1, p0, Lhgl;->a:Lcom/santander/app/contacorrente/domain/Conta;

    iget v2, p0, Lhgl;->b:I

    invoke-static {v0, v1, v2}, Lhgh;->a(Lhgh;Lcom/santander/app/contacorrente/domain/Conta;I)V

    .line 129
    iget-object v0, p0, Lhgl;->c:Lhgg;

    iget-object v1, p0, Lhgl;->d:Lhgh;

    invoke-static {v1}, Lhgh;->a(Lhgh;)Lhfl;

    move-result-object v1

    invoke-interface {v0, v1}, Lhgg;->a(Lhfy;)V

    .line 130
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lhgl;->c:Lhgg;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhgg;->a(Lhfi;)V

    .line 135
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lhgl;->c:Lhgg;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhgg;->a(Lhfi;)V

    .line 140
    return-void
.end method
