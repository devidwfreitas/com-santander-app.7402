.class public Llac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkxl",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Llac;->a:Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Llac;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Llac;->a:Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Llac;->a:Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->b(Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 87
    iget-object v0, p0, Llac;->a:Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;

    invoke-static {v0, p1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
