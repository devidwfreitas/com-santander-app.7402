.class public Llad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llbo;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Llad;->a:Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Llad;->a:Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->setResult(I)V

    .line 98
    iget-object v0, p0, Llad;->a:Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->finish()V

    .line 99
    return-void
.end method
