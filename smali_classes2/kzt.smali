.class public Lkzt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llcs;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lkzt;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lkps;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lkzt;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-static {v0, p2}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Ljava/util/List;)Ljava/util/List;

    .line 75
    iget-object v1, p0, Lkzt;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    iget-object v0, p0, Lkzt;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkps;

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Lkps;)Lkps;

    .line 77
    iget-object v0, p0, Lkzt;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    iget-object v1, p0, Lkzt;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->b(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)Lkps;

    move-result-object v1

    invoke-virtual {v1}, Lkps;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Ljava/lang/String;)V

    .line 78
    return-void
.end method
