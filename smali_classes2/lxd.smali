.class Llxd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Llxc;


# direct methods
.method constructor <init>(Llxc;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Llxd;->a:Llxc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Llxd;->a:Llxc;

    invoke-static {v0}, Llxc;->a(Llxc;)Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->b()Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 163
    iget-object v0, p0, Llxd;->a:Llxc;

    invoke-static {v0}, Llxc;->a(Llxc;)Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    move-result-object v0

    invoke-static {}, Llxm;->a()Llxm;

    move-result-object v1

    const-string v2, "success-contestation-frag-tag"

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 164
    return-void
.end method
