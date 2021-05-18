.class public Lfic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field final synthetic a:Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lfic;->a:Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lfic;->a:Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    invoke-virtual {v0, p1}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->a(I)V

    .line 242
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 235
    const-string v0, "Login_Acao"

    const-string v1, "GirarCarrosselHomeNaoLogada"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method
