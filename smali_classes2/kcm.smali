.class public Lkcm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkcg;
.implements Lkcl;


# instance fields
.field private a:Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;

.field private b:Lkcf;


# direct methods
.method public constructor <init>(Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lkcm;->a:Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;

    .line 24
    new-instance v0, Lkch;

    invoke-direct {v0, p0}, Lkch;-><init>(Lkcg;)V

    iput-object v0, p0, Lkcm;->b:Lkcf;

    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lkcm;->a:Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;

    invoke-virtual {v0}, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->c()V

    .line 47
    return-void
.end method

.method public a(Ljava/lang/String;Lkce;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lkcm;->b:Lkcf;

    invoke-interface {v0, p1, p2}, Lkcf;->a(Ljava/lang/String;Lkce;)V

    .line 30
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lkcm;->a:Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;

    invoke-virtual {v0}, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->c()V

    .line 52
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lkcm;->b:Lkcf;

    invoke-interface {v0}, Lkcf;->b()V

    .line 57
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lkcm;->a:Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;

    invoke-virtual {v0}, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->b()V

    .line 68
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    const-string v1, "https://m.santander.com.br/"

    invoke-virtual {v0, v1}, Lmiq;->c(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->g()Lfwu;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lkcm;->b:Lkcf;

    invoke-interface {v0}, Lkcf;->a()V

    .line 42
    return-void
.end method
