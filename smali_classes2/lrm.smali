.class public Llrm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkw",
        "<",
        "Lis;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lkva;

.field final synthetic c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;JLkva;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Llrm;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iput-wide p2, p0, Llrm;->a:J

    iput-object p4, p0, Llrm;->b:Lkva;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 4

    .prologue
    .line 897
    iget-object v0, p0, Llrm;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    iget-wide v0, p0, Llrm;->a:J

    iget-object v2, p0, Llrm;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->d(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 900
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 901
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvb;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvb;

    .line 902
    iget-object v1, p0, Llrm;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iget-object v1, v1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v2, Laor;->CONTENT:Laor;

    invoke-virtual {v1, v2}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 903
    iget-object v1, p0, Llrm;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iget-object v2, p0, Llrm;->b:Lkva;

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkvb;Lkva;)V

    goto :goto_0

    .line 905
    :cond_2
    iget-object v0, p0, Llrm;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Lis;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 893
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Llrm;->a(Lis;)V

    return-void
.end method
