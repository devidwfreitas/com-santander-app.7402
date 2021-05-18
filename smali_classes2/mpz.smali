.class public Lmpz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmnb;
.implements Lmpy;


# instance fields
.field private a:Lmoo;

.field private b:Landroid/app/Activity;

.field private c:Lmna;


# direct methods
.method public constructor <init>(Lmoo;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lmpz;->a:Lmoo;

    .line 27
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lmpz;->b:Landroid/app/Activity;

    .line 29
    new-instance v0, Lmnc;

    iget-object v1, p0, Lmpz;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lmnc;-><init>(Landroid/app/Activity;Lmnb;)V

    iput-object v0, p0, Lmpz;->c:Lmna;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/contacorrente/domain/Conta;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmpz;->c:Lmna;

    invoke-interface {v0, p1}, Lmna;->a(Lcom/santander/app/contacorrente/domain/Conta;)V

    .line 37
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmpz;->a:Lmoo;

    invoke-interface {v0, p1}, Lmoo;->a(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public a(Lmkt;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmpz;->a:Lmoo;

    invoke-interface {v0, p1}, Lmoo;->a(Lmkt;)V

    .line 42
    return-void
.end method

.method public a(Lmld;)V
    .locals 3

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    const-string v0, "CPF"

    invoke-virtual {p1}, Lmld;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmld;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 53
    invoke-virtual {p1}, Lmld;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1}, Lmld;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmld;->c(Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method
