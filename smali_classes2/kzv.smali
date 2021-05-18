.class public Lkzv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lldq;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Z)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lkzv;->b:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    iput-boolean p2, p0, Lkzv;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lkzv;->b:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 156
    iget-object v0, p0, Lkzv;->b:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->b(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)Lkps;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lkzv;->b:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    .line 159
    invoke-static {v0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->b(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)Lkps;

    move-result-object v0

    invoke-virtual {v0}, Lkps;->d()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lkzv;->a:Z

    .line 158
    invoke-static {v0, p1, v1}, Llcf;->a(Ljava/lang/String;Ljava/lang/String;Z)Llcf;

    move-result-object v0

    .line 160
    new-instance v1, Lkzw;

    invoke-direct {v1, p0}, Lkzw;-><init>(Lkzv;)V

    invoke-virtual {v0, v1}, Llcf;->a(Llci;)V

    .line 166
    iget-object v1, p0, Lkzv;->b:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method
