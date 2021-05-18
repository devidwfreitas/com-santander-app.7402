.class public Lkzz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lkzz;->a:Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lkzz;->a:Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 73
    iget-object v0, p0, Lkzz;->a:Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;

    invoke-static {}, Llca;->a()Llca;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 74
    return-void
.end method
