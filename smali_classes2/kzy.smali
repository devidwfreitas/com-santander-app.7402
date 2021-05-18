.class public Lkzy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llcm;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lkzy;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lkzy;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->c(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lkzy;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lkzy;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->b(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)Lkps;

    move-result-object v2

    invoke-virtual {v2}, Lkps;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;ZLjava/lang/String;)V

    .line 221
    return-void
.end method
