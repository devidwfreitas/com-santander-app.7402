.class public Lkzx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llcx;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lkzx;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkon;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 191
    invoke-virtual {p1}, Lkon;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lkon;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    :cond_0
    iget-object v0, p0, Lkzx;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->d(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkzx;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    .line 194
    invoke-static {v1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->e(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)Lkoi;

    move-result-object v1

    invoke-virtual {v1}, Lkoi;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkzx;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->b(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)Lkps;

    move-result-object v2

    invoke-virtual {v2}, Lkps;->g()Lkog;

    move-result-object v2

    invoke-virtual {v2}, Lkog;->a()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-static {v0, v1, v2}, Lkof;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    invoke-static {}, Llbi;->a()Llbi;

    move-result-object v0

    iget-object v1, p0, Lkzx;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Llbi;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lkzx;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Lkon;)Lkon;

    .line 200
    iget-object v0, p0, Lkzx;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    iget-object v1, p0, Lkzx;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->f(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)Lkon;

    move-result-object v1

    invoke-virtual {v1}, Lkon;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;ZLjava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p1}, Lkon;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    invoke-static {}, Llbi;->a()Llbi;

    move-result-object v0

    iget-object v1, p0, Lkzx;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Llbi;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_3
    iget-object v0, p0, Lkzx;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Lkon;)Lkon;

    .line 207
    iget-object v0, p0, Lkzx;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    iget-object v1, p0, Lkzx;->a:Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->f(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)Lkon;

    move-result-object v1

    invoke-virtual {v1}, Lkon;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;ZLjava/lang/String;)V

    goto :goto_0
.end method
