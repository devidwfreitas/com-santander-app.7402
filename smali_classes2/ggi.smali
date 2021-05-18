.class public Lggi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgfi;
.implements Lggh;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lgfr;

.field private c:Lgfh;

.field private d:Lcom/santander/app/contacorrente/domain/Conta;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgfr;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x3

    invoke-static {v0}, Lnak;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lggi;->e:Ljava/lang/String;

    move-object v0, p1

    .line 35
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lggi;->a:Landroid/app/Activity;

    .line 36
    iput-object p1, p0, Lggi;->b:Lgfr;

    .line 37
    new-instance v0, Lgfj;

    iget-object v1, p0, Lggi;->a:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lgfj;-><init>(Lgfi;Landroid/app/Activity;)V

    iput-object v0, p0, Lggi;->c:Lgfh;

    .line 38
    iget-object v0, p0, Lggi;->c:Lgfh;

    invoke-interface {v0}, Lgfh;->a()V

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lgfg;)Lger;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lggi;->c:Lgfh;

    invoke-interface {v0, p1}, Lgfh;->a(Lgfg;)Lger;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lggi;->c:Lgfh;

    invoke-interface {v0, p1, p2}, Lgfh;->a(ILjava/lang/String;)V

    .line 65
    return-void
.end method

.method public a(Lger;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lggi;->b:Lgfr;

    invoke-interface {v0, p1}, Lgfr;->a(Lger;)V

    .line 50
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lggi;->b:Lgfr;

    invoke-interface {v0, p1}, Lgfr;->a(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {p1}, Lgmy;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lggi;->b:Lgfr;

    invoke-interface {v1, v0}, Lgfr;->a(Ljava/util/List;)V

    .line 45
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lggi;->b:Lgfr;

    invoke-interface {v0, p1}, Lgfr;->b(Ljava/lang/String;)V

    .line 60
    return-void
.end method
