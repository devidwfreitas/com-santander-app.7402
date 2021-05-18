.class public Llpp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llug;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Llpp;->b:Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;

    iput-object p2, p0, Llpp;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Llpp;->b:Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;

    iget-object v0, p0, Llpp;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvq;

    invoke-static {v0}, Llxv;->a(Lkvq;)Llxv;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;Llxv;)Llxv;

    .line 108
    iget-object v0, p0, Llpp;->b:Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;)Llxv;

    move-result-object v0

    iget-object v1, p0, Llpp;->b:Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog-sinister-info"

    invoke-virtual {v0, v1, v2}, Llxv;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 109
    return-void
.end method
